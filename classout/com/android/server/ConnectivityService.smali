.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$EmergencyHandler;,
        Lcom/android/server/ConnectivityService$EmergencyReceiver;,
        Lcom/android/server/ConnectivityService$CheckMp;,
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$DefaultNetworkFactory;,
        Lcom/android/server/ConnectivityService$NetworkFactory;,
        Lcom/android/server/ConnectivityService$RouteAttributes;,
        Lcom/android/server/ConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field private static final ACTION_CIQ_SERVER_STARTED:Ljava/lang/String; = "com.carrieriq.iqagent.service.ACTION_SERVER_STARTED"

.field protected static final ACTION_PKT_CNT_SAMPLE_INTERVAL_ELAPSED:Ljava/lang/String; = "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

.field protected static final ACTION_SET_PREFERRED_DATA_SLOT:Ljava/lang/String; = "com.samsung.intent.action.SET_PREFERRED_DATA_SLOT"

.field protected static final ADD:Z = true

.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field public static final CISCO_ANYCONNECT_PKG:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final CMP_RESULT_CODE_CONNECTABLE:I = 0x1

.field private static final CMP_RESULT_CODE_NO_CONNECTION:I = 0x0

.field private static final CMP_RESULT_CODE_NO_DNS:I = 0x2

.field private static final CMP_RESULT_CODE_NO_TCP_CONNECTION:I = 0x3

.field private static final CMP_RESULT_CODE_PROVISIONING_NETWORK:I = 0x5

.field private static final CMP_RESULT_CODE_REDIRECTED:I = 0x4

.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field protected static final DBG:Z = true

.field protected static final DEFAULT_FAIL_FAST_TIME_MS:I = 0xea60

.field private static final DEFAULT_NULL_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field protected static final DEFAULT_SAMPLING_INTERVAL_IN_SECONDS:I = 0x2d0

.field protected static final DEFAULT_START_SAMPLING_INTERVAL_IN_SECONDS:I = 0x3c

.field protected static final DISABLED:I = 0x0

.field private static final EMERGENCY_MAX_TIMEOUT:I = 0x927c0

.field private static final EMERGENCY_TERMINATE_TIMEOUT:I = 0xea60

.field protected static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_EMERGENCY_TIMEOUT:I = 0x0

.field private static final EVENT_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0xe

.field private static final EVENT_FAILOVER_FLAG_RESET:I = 0x12

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x4

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x5

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x1

.field private static final EVENT_SAMPLE_INTERVAL_ELAPSED:I = 0xf

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0xa

.field private static final EVENT_SET_MOBILE_DATA:I = 0x7

.field private static final EVENT_SET_MOBILE_DATA_EX:I = 0x11

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x3

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0xc

.field private static final EVENT_VPN_STATE_CHANGED:I = 0xd

.field protected static final EXEMPT:Z = true

.field protected static final FAIL_FAST_TIME_MS:Ljava/lang/String; = "persist.radio.fail_fast_time_ms"

.field protected static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field protected static final LOGD_RULES:Z = false

.field protected static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field public static final MOCANA_VPN_SERVICE_PKG:Ljava/lang/String; = "com.mocana.vpn.android"

.field protected static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final ONLY_WIFI_AND_BT_TETHER_ENABLE:I = 0x2

.field private static final PER_APP_VPN:I = 0x1

.field private static final PROVISIONING:I = 0x2

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REDIRECTED_PROVISIONING:I = 0x1

.field protected static final REMOVE:Z = false

.field protected static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field protected static final SAMPLE_INTERVAL_ELAPSED_REQUEST_CODE:I = 0x0

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TAG_REDIRECTED_URL:Ljava/lang/String; = "redirectedUrl"

.field protected static final TO_DEFAULT_TABLE:Z = true

.field protected static final TO_SECONDARY_TABLE:Z = false

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final UC_ENABLED_SETTING:Ljava/lang/String; = "UC_ENABLED"

.field protected static final UNEXEMPT:Z = false

.field private static final USAGE_CONTROL_DEFAULT:Z = false

.field protected static final VDBG:Z = false

.field public static final VPN_DIALOG_PKG:Ljava/lang/String; = "com.android.vpndialogs"

.field private static final VZW_APPS_APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "vzw.telephony.appsapn-restore"

.field private static final is3LMAllowed:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private bIsFailOverToMobile:Z

.field private emergencyDataOpened:Z

.field private final knoxVpnV2Enabled:Z

.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCIQReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mCaptivePortalAllowedNetworkTypes:[I

.field private mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

.field private mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

.field private mClat:Lcom/android/server/connectivity/Nat464Xlat;

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDnsLock:Ljava/lang/Object;

.field private mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

.field private mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEnterpriseSytemVPN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterpriseVpnStoreObj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/EnterpriseVpn;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExemptAddresses:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsMobilePolicyEnabled:Z

.field private volatile mIsNotificationVisible:Z

.field private mIsUcEnabled:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field mLguplusHoClientPolicy:Lcom/lguplus/ho_client/PolicyProxy;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field private mProvisioningReceiver:Landroid/content/BroadcastReceiver;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

.field private mRouteIdCtr:I

.field private final mRoutesLock:Ljava/lang/Object;

.field private mRulesLock:Ljava/lang/Object;

.field private mSBManager:Lcom/samsung/smartbonding/ISmartBondingService;

.field private mSBService:Lcom/samsung/smartbonding/SmartBondingService;

.field private mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

.field private mSetNetworkPreferenceLog:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field public mVoiceCallStarted:Z

.field private mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfConnectedProfile:I


# direct methods
.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 608
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 307
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 309
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 326
    new-instance v0, Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 336
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 338
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 370
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 371
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 372
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 373
    iput v3, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 493
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 516
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 535
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 536
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 537
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 540
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 542
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 554
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    .line 555
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 556
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 557
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 558
    new-instance v0, Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 560
    iput v3, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 587
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mVoiceCallStarted:Z

    .line 590
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 624
    iput v3, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    .line 659
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    .line 1599
    new-instance v0, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2638
    new-instance v0, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 3415
    new-instance v0, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5727
    const-string/jumbo v0, "v30"

    const-string v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    .line 6438
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6987
    new-instance v0, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 7024
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7117
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 7335
    new-instance v0, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 7818
    new-instance v0, Lcom/android/server/ConnectivityService$8;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCIQReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 666
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V

    .line 667
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/ConnectivityService$NetworkFactory;)V
    .registers 43
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "netFactory"    # Lcom/android/server/ConnectivityService$NetworkFactory;

    .prologue
    .line 671
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 324
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 326
    new-instance v2, Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 334
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 336
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 338
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 368
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 375
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 493
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    .line 509
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 516
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 536
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 554
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    .line 555
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 556
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 557
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 558
    new-instance v2, Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 560
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mVoiceCallStarted:Z

    .line 590
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 595
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 624
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    .line 659
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    .line 1599
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2638
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 3415
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5727
    const-string/jumbo v2, "v30"

    const-string v3, "ro.config.knox"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    .line 6438
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6987
    new-instance v2, Lcom/android/server/ConnectivityService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 7024
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7117
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 7335
    new-instance v2, Lcom/android/server/ConnectivityService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 7818
    new-instance v2, Lcom/android/server/ConnectivityService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCIQReceiver:Landroid/content/BroadcastReceiver;

    .line 672
    const-string v2, "ConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 674
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 675
    .local v14, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 676
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 677
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 679
    if-nez p5, :cond_195

    .line 680
    new-instance p5, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;

    .end local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 684
    .restart local p5    # "netFactory":Lcom/android/server/ConnectivityService$NetworkFactory;
    :cond_195
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 687
    .local v17, "id":Ljava/lang/String;
    if-eqz v17, :cond_1c7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c7

    .line 688
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 689
    .local v26, "name":Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .end local v17    # "id":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    :cond_1c7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 696
    .local v11, "dns":Ljava/lang/String;
    if-eqz v11, :cond_1d9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e4

    .line 697
    :cond_1d9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 701
    :cond_1e4
    :try_start_1e4
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_1ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e4 .. :try_end_1ec} :catch_2a0

    .line 706
    :goto_1ec
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 707
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 708
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 709
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 713
    :try_start_22e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_22e .. :try_end_239} :catch_2b9

    .line 736
    :goto_239
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    .line 738
    .local v29, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 743
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 745
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 747
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 748
    const/16 v2, 0x1b

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 752
    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    .line 753
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_28c
    const/16 v2, 0x1b

    if-ge v15, v2, :cond_2d7

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    new-instance v3, Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$RouteAttributes;-><init>(Lcom/android/server/ConnectivityService;)V

    aput-object v3, v2, v15

    .line 753
    add-int/lit8 v15, v15, 0x1

    goto :goto_28c

    .line 702
    .end local v15    # "i":I
    .end local v29    # "powerManager":Landroid/os/PowerManager;
    :catch_2a0
    move-exception v12

    .line 703
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 714
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2b9
    move-exception v12

    .line 716
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_239

    .line 759
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v15    # "i":I
    .restart local v29    # "powerManager":Landroid/os/PowerManager;
    :cond_2d7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    .line 761
    .local v33, "raStrings":[Ljava/lang/String;
    move-object/from16 v8, v33

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2e9
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_34d

    aget-object v32, v8, v16

    .line 762
    .local v32, "raString":Ljava/lang/String;
    new-instance v31, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v31 .. v32}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 764
    .local v31, "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_31b

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 761
    :goto_318
    add-int/lit8 v16, v16, 0x1

    goto :goto_2e9

    .line 768
    :cond_31b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_342

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_318

    .line 773
    :cond_342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v31, v2, v3

    goto :goto_318

    .line 777
    .end local v31    # "r":Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v32    # "raString":Ljava/lang/String;
    :cond_34d
    const-string v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 778
    .local v36, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 781
    .local v25, "naStrings":[Ljava/lang/String;
    move-object/from16 v8, v25

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_37f
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_459

    aget-object v24, v8, v16

    .line 783
    .local v24, "naString":Ljava/lang/String;
    :try_start_387
    new-instance v22, Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 786
    .local v22, "n":Landroid/net/NetworkConfig;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_3b5

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 781
    .end local v22    # "n":Landroid/net/NetworkConfig;
    :goto_3b2
    add-int/lit8 v16, v16, 0x1

    goto :goto_37f

    .line 791
    .restart local v22    # "n":Landroid/net/NetworkConfig;
    :cond_3b5
    if-eqz v36, :cond_3de

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_3de

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3b2

    .line 808
    .end local v22    # "n":Landroid/net/NetworkConfig;
    :catch_3dc
    move-exception v2

    goto :goto_3b2

    .line 796
    .restart local v22    # "n":Landroid/net/NetworkConfig;
    :cond_3de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_405

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3b2

    .line 801
    :cond_405
    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_443

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_443

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3b2

    .line 806
    :cond_443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v22, v2, v3

    .line 807
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_457
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_457} :catch_3dc

    goto/16 :goto_3b2

    .line 814
    .end local v22    # "n":Landroid/net/NetworkConfig;
    .end local v24    # "naString":Ljava/lang/String;
    :cond_459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v30

    .line 817
    .local v30, "protectedNetworks":[I
    move-object/from16 v8, v30

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_474
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4b9

    aget v28, v8, v16

    .line 818
    .local v28, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v28

    if-eqz v2, :cond_4a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a0

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :goto_49d
    add-int/lit8 v16, v16, 0x1

    goto :goto_474

    .line 821
    :cond_4a0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_49d

    .line 826
    .end local v28    # "p":I
    :cond_4b9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 828
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v18, v2, -0x1

    .line 829
    .local v18, "insertionPoint":I
    const/4 v10, 0x0

    .line 830
    .local v10, "currentLowest":I
    const/16 v27, 0x0

    .line 831
    .end local v8    # "arr$":[I
    .local v27, "nextLowest":I
    :goto_4cc
    const/4 v2, -0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_523

    .line 832
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, "arr$":[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    move/from16 v19, v18

    .end local v18    # "insertionPoint":I
    .local v19, "insertionPoint":I
    :goto_4dc
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_51c

    aget-object v23, v8, v16

    .line 833
    .local v23, "na":Landroid/net/NetworkConfig;
    if-nez v23, :cond_4ed

    move/from16 v18, v19

    .line 832
    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    :goto_4e8
    add-int/lit8 v16, v16, 0x1

    move/from16 v19, v18

    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    goto :goto_4dc

    .line 834
    :cond_4ed
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_4f6

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_4e8

    .line 835
    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    :cond_4f6
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_50f

    .line 836
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v27

    if-lt v2, v0, :cond_506

    if-nez v27, :cond_7cc

    .line 837
    :cond_506
    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v27, v0

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_4e8

    .line 841
    .end local v18    # "insertionPoint":I
    .restart local v19    # "insertionPoint":I
    :cond_50f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v18, v19, -0x1

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v19

    goto :goto_4e8

    .line 843
    .end local v18    # "insertionPoint":I
    .end local v23    # "na":Landroid/net/NetworkConfig;
    .restart local v19    # "insertionPoint":I
    :cond_51c
    move/from16 v10, v27

    .line 844
    const/16 v27, 0x0

    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto :goto_4cc

    .line 849
    .end local v8    # "arr$":[Landroid/net/NetworkConfig;
    :cond_523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_56d

    .line 851
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_53b
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_55b

    aget v22, v8, v16

    .line 853
    .local v22, "n":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v22

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_56a

    invoke-static/range {v22 .. v22}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v2

    if-eqz v2, :cond_56a

    .line 854
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 858
    .end local v22    # "n":I
    :cond_55b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_56d

    .line 859
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You should set at least one default Network in config.xml!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .restart local v22    # "n":I
    :cond_56a
    add-int/lit8 v16, v16, 0x1

    goto :goto_53b

    .line 864
    .end local v8    # "arr$":[I
    .end local v22    # "n":I
    :cond_56d
    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 866
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .restart local v8    # "arr$":[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_580
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_596

    aget v15, v8, v16

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v15

    .line 866
    add-int/lit8 v16, v16, 0x1

    goto :goto_580

    .line 870
    :cond_596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 872
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5fd

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5fd

    const/4 v2, 0x1

    :goto_5bd
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 880
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_5ca
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_627

    aget v34, v8, v16

    .line 881
    .local v34, "targetNetworkType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v2, v34

    .line 884
    .local v9, "config":Landroid/net/NetworkConfig;
    :try_start_5d8
    move-object/from16 v0, p5

    move/from16 v1, v34

    invoke-interface {v0, v1, v9}, Lcom/android/server/ConnectivityService$NetworkFactory;->createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;

    move-result-object v35

    .line 885
    .local v35, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aput-object v35, v2, v34
    :try_end_5e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d8 .. :try_end_5e6} :catch_5ff

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 893
    invoke-virtual {v9}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_5fa

    .line 894
    invoke-interface/range {v35 .. v35}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 880
    .end local v35    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_5fa
    :goto_5fa
    add-int/lit8 v16, v16, 0x1

    goto :goto_5ca

    .line 872
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v34    # "targetNetworkType":I
    :cond_5fd
    const/4 v2, 0x0

    goto :goto_5bd

    .line 886
    .restart local v9    # "config":Landroid/net/NetworkConfig;
    .restart local v34    # "targetNetworkType":I
    :catch_5ff
    move-exception v12

    .line 887
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5fa

    .line 898
    .end local v9    # "config":Landroid/net/NetworkConfig;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v34    # "targetNetworkType":I
    :cond_627
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 901
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 902
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 907
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    .line 910
    :try_start_67e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_69f
    .catch Landroid/os/RemoteException; {:try_start_67e .. :try_end_69f} :catch_7b3

    .line 918
    :goto_69f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 921
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 947
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 951
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 952
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 956
    const v2, 0xea60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 958
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 973
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 975
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 976
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 979
    const-string v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectivityService: mCaptivePortalAllowedNetworkTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 988
    const-string v2, "create Smart Bonding Service"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 989
    new-instance v2, Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/smartbonding/SmartBondingService;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Landroid/os/INetworkManagementService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSBService:Lcom/samsung/smartbonding/SmartBondingService;

    .line 990
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSBManager:Lcom/samsung/smartbonding/ISmartBondingService;

    .line 1000
    return-void

    .line 913
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_7b3
    move-exception v12

    .line 914
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_69f

    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v18    # "insertionPoint":I
    .local v8, "arr$":[Landroid/net/NetworkConfig;
    .restart local v19    # "insertionPoint":I
    .restart local v23    # "na":Landroid/net/NetworkConfig;
    :cond_7cc
    move/from16 v18, v19

    .end local v19    # "insertionPoint":I
    .restart local v18    # "insertionPoint":I
    goto/16 :goto_4e8
.end method

.method static synthetic access$004(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isCaptivePortalAllowedNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/LinkProperties;
    .param p2, "x2"    # Landroid/net/RouteInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/android/server/ConnectivityService;->makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZ)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/ConnectivityService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetMobileDataEx(ZI)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 258
    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/ConnectivityService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyProperties;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleMobileProvisioningAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "x2"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/ConnectivityService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/android/server/ConnectivityService;Lcom/android/server/ciq/IPConnectivityCIQ;)Lcom/android/server/ciq/IPConnectivityCIQ;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ciq/IPConnectivityCIQ;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    .registers 12
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 2431
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    .registers 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "exempt"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2439
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private anyMoreMmsNetRequesters()Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 2029
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    if-nez v1, :cond_7

    .line 2033
    :cond_6
    :goto_6
    return v0

    .line 2031
    :cond_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2032
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private checkCondition(I)Z
    .registers 3
    .param p1, "nwkType"    # I

    .prologue
    .line 7515
    const/4 v0, 0x0

    .line 7518
    .local v0, "ret":Z
    if-nez v0, :cond_3

    .line 7522
    :cond_3
    return v0
.end method

.method private checkCondition(Landroid/net/NetworkInfo;)Z
    .registers 3
    .param p1, "wifiInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 7504
    const/4 v0, 0x0

    .line 7507
    .local v0, "ret":Z
    if-nez v0, :cond_3

    .line 7511
    :cond_3
    return v0
.end method

.method private checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 5464
    const/4 v0, 0x0

    .line 5465
    .local v0, "profileExists":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5467
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 5468
    .local v2, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5469
    const/4 v0, 0x1

    .line 5471
    :cond_1a
    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5236
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 5237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5239
    :cond_8
    return-object p0
.end method

.method private checkRelatedFeature()Z
    .registers 2

    .prologue
    .line 7500
    const/4 v0, 0x0

    return v0
.end method

.method private checkSourceRouteCondition(I)Z
    .registers 6
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 4035
    const-string v1, "SPR"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4050
    :cond_b
    :goto_b
    return v0

    .line 4039
    :cond_c
    if-eqz p1, :cond_10

    if-ne p1, v0, :cond_24

    .line 4040
    :cond_10
    const-string v1, "enabled"

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4046
    :cond_24
    const/4 v1, 0x5

    if-eq p1, v1, :cond_b

    .line 4050
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 7746
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x2000

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7747
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7748
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 7749
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 7751
    return-object v0
.end method

.method private declared-synchronized disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 30
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 5890
    monitor-enter p0

    const/4 v13, 0x0

    .line 5891
    .local v13, "isSystemVpn":Z
    const/4 v12, 0x0

    .line 5892
    .local v12, "isConnectedProfile":Z
    :try_start_3
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn disconnect : isConnectedProfile = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " callingPackageName"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " callingUid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    if-nez p1, :cond_56

    .line 5894
    const-string v23, "ConnectivityService"

    const-string/jumbo v24, "vpn Profile Name passed is null in disconnect"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_266

    .line 6021
    :cond_52
    :goto_52
    const/16 v23, 0x0

    :goto_54
    monitor-exit p0

    return v23

    .line 5897
    :cond_56
    :try_start_56
    new-instance v4, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v4}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 5898
    .local v4, "config":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5899
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "config.session value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    const/4 v9, 0x0

    .line 5901
    .local v9, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 5902
    .local v21, "user":I
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "user value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_cb

    .line 5904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v9, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5907
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_cb
    if-nez v9, :cond_138

    .line 5908
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "enterpriseVpn value is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    const/4 v15, 0x0

    .line 5910
    .local v15, "mProfileFound":Z
    const/4 v14, 0x0

    .line 5911
    .local v14, "key":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_12f

    .line 5912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 5913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_135

    .line 5914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v9, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5915
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v9, :cond_135

    .line 5916
    const/4 v15, 0x1

    .line 5917
    move/from16 v21, v14

    .line 5922
    :cond_12f
    if-nez v15, :cond_138

    .line 5923
    const/16 v23, 0x0

    goto/16 :goto_54

    .line 5911
    :cond_135
    add-int/lit8 v10, v10, 0x1

    goto :goto_ea

    .line 5928
    .end local v10    # "i":I
    .end local v14    # "key":I
    .end local v15    # "mProfileFound":Z
    :cond_138
    if-eqz v9, :cond_52

    .line 5929
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "enterpriseVpn value is not null "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5930
    const/4 v3, 0x1

    .line 5931
    .local v3, "bVpnDialogCall":Z
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->isConnectedProfile()Z

    move-result v12

    .line 5932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_269

    .line 5933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5934
    .local v19, "token":J
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->prepare()Z

    .line 5935
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5936
    const-string v23, "com.android.vpndialogs"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19d

    const/16 v23, 0x3e8

    move/from16 v0, p3

    move/from16 v1, v23

    if-eq v0, v1, :cond_19d

    .line 5937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 5938
    const/4 v3, 0x0

    .line 5940
    :cond_19d
    const/4 v13, 0x1

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 5947
    .end local v19    # "token":J
    :goto_1a7
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn Initial numberOfConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn isConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_38d

    .line 5950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 5951
    .local v17, "showIdentity":J
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v4, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 5952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->knoxVpnV2Enabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_32b

    .line 5953
    if-eqz v13, :cond_279

    .line 5955
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v6

    .line 5956
    .local v6, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5958
    if-eqz v6, :cond_38a

    .line 5959
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_211
    :goto_211
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_38a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5960
    .local v5, "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_211

    .line 5961
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    invoke-virtual {v9, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_246} :catch_247
    .catchall {:try_start_56 .. :try_end_246} :catchall_266

    goto :goto_211

    .line 6017
    .end local v3    # "bVpnDialogCall":Z
    .end local v4    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v5    # "domain":I
    .end local v6    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "showIdentity":J
    .end local v21    # "user":I
    :catch_247
    move-exception v8

    .line 6018
    .local v8, "e":Ljava/lang/Exception;
    :try_start_248
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catchall {:try_start_248 .. :try_end_264} :catchall_266

    goto/16 :goto_52

    .line 5890
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_266
    move-exception v23

    monitor-exit p0

    throw v23

    .line 5943
    .restart local v3    # "bVpnDialogCall":Z
    .restart local v4    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v21    # "user":I
    :cond_269
    :try_start_269
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->closeInterface()V

    .line 5945
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V

    goto/16 :goto_1a7

    .line 5967
    .restart local v17    # "showIdentity":J
    :cond_279
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 5968
    .local v7, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2de

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_2de

    .line 5969
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_286
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_38a

    .line 5970
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_2db

    .line 5971
    const-string v24, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5972
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 5969
    :cond_2db
    add-int/lit8 v10, v10, 0x1

    goto :goto_286

    .line 5977
    .end local v10    # "i":I
    :cond_2de
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v16

    .line 5978
    .local v16, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5980
    if-eqz v16, :cond_38a

    .line 5981
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2f5
    :goto_2f5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_38a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5982
    .restart local v5    # "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v23

    if-nez v23, :cond_2f5

    .line 5983
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The connected Vpn is not exists in user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    invoke-virtual {v9, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    goto :goto_2f5

    .line 5991
    .end local v5    # "domain":I
    .end local v7    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_32b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    if-lez v23, :cond_341

    .line 5992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 5994
    :cond_341
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn Final numberOfConnectedProfile value is"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v23, v0

    if-nez v23, :cond_38a

    .line 5996
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "vpn numberOfConnectedProfile value check if 0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    invoke-virtual {v9}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification()V

    .line 6001
    :cond_38a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6004
    .end local v17    # "showIdentity":J
    :cond_38d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 6005
    .local v22, "vpnStoreObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-nez v3, :cond_3a6

    .line 6006
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6007
    :cond_3a6
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v23

    if-eqz v23, :cond_3b2

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_3df

    .line 6008
    :cond_3b2
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "disconnect - deleting vpnStoreObj : user = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 6015
    :goto_3db
    const/16 v23, 0x1

    goto/16 :goto_54

    .line 6011
    :cond_3df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3ee
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_3ee} :catch_247
    .catchall {:try_start_269 .. :try_end_3ee} :catchall_266

    goto :goto_3db
.end method

.method private emergencyOpenDataPath(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7493
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Never flush data path. reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    .line 7495
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_27

    .line 7496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V

    .line 7497
    :cond_27
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    return-void
.end method

.method private enforceMarkNetworkSocketPermission()V
    .registers 4

    .prologue
    .line 2905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-ne v0, v1, :cond_9

    .line 2911
    :goto_8
    return-void

    .line 2908
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MARK_NETWORK_SOCKET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private enforcePreference()V
    .registers 4

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1256
    :cond_10
    return-void

    .line 1243
    :cond_11
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1246
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_1e
    const/16 v1, 0xe

    if-gt v0, v1, :cond_10

    .line 1247
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_66

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1246
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    return-void
.end method

.method private enforceTetherChangePermission()V
    .registers 4

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    return-void
.end method

.method private enforceVzw800ApnPermission(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 7737
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7738
    .local v1, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 7739
    .local v0, "callingPackageName":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "VZW800APN"

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 7740
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller do not have APN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7743
    :cond_1d
    return-void
.end method

.method private flushVmDnsCache()V
    .registers 6

    .prologue
    .line 4235
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4236
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4240
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4243
    .local v0, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 4245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4247
    return-void

    .line 4245
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getConnectivityChangeDelay()I
    .registers 5

    .prologue
    .line 1213
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1216
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1219
    .local v1, "defaultDelay":I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5816
    monitor-enter p0

    :try_start_1
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_41

    move-result-object v1

    .line 5818
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_7
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5819
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_22
    .catchall {:try_start_7 .. :try_end_16} :catchall_41

    move-result-object v2

    .line 5827
    :goto_17
    monitor-exit p0

    return-object v2

    .line 5821
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_22
    .catchall {:try_start_19 .. :try_end_20} :catchall_41

    move-result-object v2

    goto :goto_17

    .line 5823
    :catch_22
    move-exception v0

    .line 5824
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_41

    .line 5827
    const/4 v2, 0x0

    goto :goto_17

    .line 5816
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1295
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1296
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1298
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1299
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1301
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_16
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v2, :cond_20

    .line 1302
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1304
    :cond_20
    return-object v0
.end method

.method private getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 3

    .prologue
    .line 5666
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v1, :cond_10

    .line 5667
    const-string v1, "knox_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5669
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 5671
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v1
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1387
    const/4 v0, 0x0

    .line 1389
    .local v0, "info":Landroid/net/NetworkInfo;
    const-string v3, "VZW"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1390
    if-eqz p1, :cond_10

    const/4 v3, 0x5

    if-ne p1, v3, :cond_26

    :cond_10
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1393
    const/16 p1, 0xc

    .line 1399
    :cond_26
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1400
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v3, p1

    .line 1401
    .local v2, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_36

    .line 1402
    invoke-direct {p0, v2, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1405
    .end local v2    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_36
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1406
    if-nez p1, :cond_60

    .line 1407
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v3

    if-nez v3, :cond_4d

    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v3, :cond_60

    .line 1408
    :cond_4d
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1409
    .local v1, "mInfo":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    move-object v0, v1

    .line 1414
    .end local v1    # "mInfo":Landroid/net/NetworkInfo;
    :cond_60
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .registers 7
    .param p1, "networkType"    # I

    .prologue
    .line 1529
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1530
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1531
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1e

    .line 1532
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1536
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private getPersistedNetworkPreference()I
    .registers 5

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1226
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1229
    .local v1, "networkPrefSetting":I
    return v1
.end method

.method private declared-synchronized getProfilesByDomain(I)Ljava/util/List;
    .registers 7
    .param p1, "domain"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5831
    monitor-enter p0

    :try_start_1
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_49

    move-result-object v1

    .line 5833
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_7
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5834
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_2a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_49

    move-result-object v2

    .line 5842
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 5836
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2a
    .catchall {:try_start_1d .. :try_end_28} :catchall_49

    move-result-object v2

    goto :goto_1b

    .line 5838
    :catch_2a
    move-exception v0

    .line 5839
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_49

    .line 5842
    const/4 v2, 0x0

    goto :goto_1b

    .line 5831
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getProvisioningNetworkInfo()Landroid/net/NetworkInfo;
    .registers 8

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1330
    const/4 v4, 0x0

    .line 1332
    .local v4, "provNi":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    .line 1333
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1334
    move-object v4, v3

    .line 1338
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProvisioningNetworkInfo: X provNi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1339
    return-object v4

    .line 1332
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private getProvisioningUrlBaseFromFile(I)Ljava/lang/String;
    .registers 14
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 7134
    const/4 v3, 0x0

    .line 7135
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 7136
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7139
    .local v0, "config":Landroid/content/res/Configuration;
    packed-switch p1, :pswitch_data_10a

    .line 7147
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProvisioningUrlBaseFromFile: Unexpected parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 7141
    :pswitch_29
    const-string v8, "provisioningUrl"

    .line 7152
    .local v8, "tagType":Ljava/lang/String;
    :goto_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_32} :catch_108
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_32} :catch_b5
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_d3
    .catchall {:try_start_2b .. :try_end_32} :catchall_f1

    .line 7153
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 7154
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 7155
    const-string v10, "provisioningUrls"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 7158
    :cond_3e
    :goto_3e
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7160
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_44} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_44} :catch_105
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_44} :catch_102
    .catchall {:try_start_32 .. :try_end_44} :catchall_ff

    move-result-object v2

    .line 7161
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_51

    .line 7188
    if-eqz v4, :cond_4c

    .line 7190
    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_fa

    :cond_4c
    :goto_4c
    move-object v3, v4

    .line 7194
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :cond_4d
    :goto_4d
    return-object v9

    .line 7144
    .end local v8    # "tagType":Ljava/lang/String;
    :pswitch_4e
    const-string v8, "redirectedUrl"

    .line 7145
    .restart local v8    # "tagType":Ljava/lang/String;
    goto :goto_2b

    .line 7163
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_51
    :try_start_51
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 7164
    const/4 v10, 0x0

    const-string v11, "mcc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_5d} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5d} :catch_105
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5d} :catch_102
    .catchall {:try_start_51 .. :try_end_5d} :catchall_ff

    move-result-object v5

    .line 7166
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_3e

    :try_start_60
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v10, v11, :cond_3e

    .line 7167
    const/4 v10, 0x0

    const-string v11, "mnc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7168
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_3e

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v10, v11, :cond_3e

    .line 7169
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7170
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3e

    .line 7171
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_86} :catch_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_86} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_86} :catch_105
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_86} :catch_102
    .catchall {:try_start_60 .. :try_end_86} :catchall_ff

    move-result-object v9

    .line 7188
    if-eqz v4, :cond_8c

    .line 7190
    :try_start_89
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_fd

    :cond_8c
    :goto_8c
    move-object v3, v4

    .line 7171
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4d

    .line 7175
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "mnc":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_8e
    move-exception v1

    .line 7176
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_8f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_a5} :catch_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_a5} :catch_105
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a5} :catch_102
    .catchall {:try_start_8f .. :try_end_a5} :catchall_ff

    goto :goto_3e

    .line 7181
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    :catch_a6
    move-exception v1

    move-object v3, v4

    .line 7182
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_a8
    :try_start_a8
    const-string v10, "Carrier Provisioning Urls file not found"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_f1

    .line 7188
    if-eqz v3, :cond_4d

    .line 7190
    :try_start_af
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_4d

    .line 7191
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_b3
    move-exception v10

    goto :goto_4d

    .line 7183
    :catch_b5
    move-exception v1

    .line 7184
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b6
    :try_start_b6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_f1

    .line 7188
    if-eqz v3, :cond_4d

    .line 7190
    :try_start_ce
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_b3

    goto/16 :goto_4d

    .line 7185
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d3
    move-exception v1

    .line 7186
    .local v1, "e":Ljava/io/IOException;
    :goto_d4
    :try_start_d4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_d4 .. :try_end_ea} :catchall_f1

    .line 7188
    if-eqz v3, :cond_4d

    .line 7190
    :try_start_ec
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_b3

    goto/16 :goto_4d

    .line 7188
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_f1
    move-exception v9

    :goto_f2
    if-eqz v3, :cond_f7

    .line 7190
    :try_start_f4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 7188
    :cond_f7
    :goto_f7
    throw v9

    .line 7191
    :catch_f8
    move-exception v10

    goto :goto_f7

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_fa
    move-exception v10

    goto/16 :goto_4c

    .restart local v5    # "mcc":Ljava/lang/String;
    .restart local v6    # "mnc":Ljava/lang/String;
    :catch_fd
    move-exception v10

    goto :goto_8c

    .line 7188
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :catchall_ff
    move-exception v9

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_f2

    .line 7185
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_102
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_d4

    .line 7183
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_105
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_b6

    .line 7181
    :catch_108
    move-exception v1

    goto :goto_a8

    .line 7139
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .registers 8
    .param p1, "networkType"    # I

    .prologue
    .line 4368
    const-string v4, "VZW"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4369
    const/16 v4, 0xc

    if-ne p1, v4, :cond_27

    .line 4370
    const-string/jumbo v4, "vzw.telephony.appsapn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4371
    .local v2, "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27

    .line 4373
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_26

    move-result v3

    .line 4403
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_25
    :goto_25
    return v3

    .line 4374
    .restart local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :catch_26
    move-exception v4

    .line 4381
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_27
    const-string v4, "android.telephony.apn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4385
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    const/16 v4, 0xb

    if-eq p1, v4, :cond_46

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_46

    .line 4389
    :try_start_39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_40} :catch_42

    move-result v3

    goto :goto_25

    .line 4390
    :catch_42
    move-exception v0

    .line 4391
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 4396
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_46
    const v3, 0xea60

    .line 4399
    .local v3, "ret":I
    const/16 v4, 0x1a

    if-gt p1, v4, :cond_25

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    if-eqz v4, :cond_25

    .line 4401
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    iget v3, v4, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_25
.end method

.method private getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 5654
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1a

    .line 5655
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5657
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 5658
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5660
    :cond_14
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 5662
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5098
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5100
    const/4 p1, 0x0

    .line 5102
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5103
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    monitor-exit v1

    .line 5116
    :goto_27
    return-void

    .line 5104
    :cond_28
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_31

    monitor-exit v1

    goto :goto_27

    .line 5115
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_2e

    throw v0

    .line 5105
    :cond_31
    if-eqz p1, :cond_55

    :try_start_33
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v0

    if-nez v0, :cond_55

    .line 5106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5107
    monitor-exit v1

    goto :goto_27

    .line 5109
    :cond_55
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5111
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_5d

    monitor-exit v1

    goto :goto_27

    .line 5112
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_64

    .line 5113
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 5115
    :cond_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_33 .. :try_end_65} :catchall_2e

    goto :goto_27
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 3644
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 3645
    .local v1, "thisNet":Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 3653
    .local v0, "isWifiOverEthernet":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 3654
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v3, v2, :cond_54

    if-nez v0, :cond_54

    .line 3655
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip Captive check on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3671
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCaptivePortalTrackerCheck: call captivePortalCheckComplete ni="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3672
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3673
    :goto_6d
    return-void

    .line 3664
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tear down low priority net "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3665
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_6d
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v10, 0x0

    .line 3436
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3441
    .local v1, "newNetType":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(I)V

    .line 3444
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 3445
    .local v0, "isFailover":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v5, v1

    .line 3446
    .local v4, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3455
    .local v3, "thisIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 3456
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6e

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v1, :cond_6e

    .line 3461
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 3463
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 3466
    .local v2, "otherNet":Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3517
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 3518
    const-string v5, "Network declined teardown request"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3519
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 3639
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    :cond_69
    :goto_69
    return-void

    .line 3579
    :cond_6a
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_69

    .line 3583
    :cond_6e
    monitor-enter p0

    .line 3587
    :try_start_6f
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 3588
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v7, 0x8

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3593
    :cond_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_b2

    .line 3610
    iput v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3615
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3616
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 3617
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3621
    :cond_96
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3622
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 3625
    invoke-direct {p0, v1, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3629
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 3632
    if-eqz v3, :cond_69

    .line 3634
    :try_start_a8
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_69

    .line 3635
    :catch_b0
    move-exception v5

    goto :goto_69

    .line 3593
    :catchall_b2
    move-exception v5

    :try_start_b3
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .registers 14
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3290
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3292
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 3293
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 3296
    .local v0, "extraInfo":Ljava/lang/String;
    if-nez v4, :cond_e1

    .line 3297
    const-string v5, "."

    .line 3301
    .local v5, "reasonText":Ljava/lang/String;
    :goto_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3303
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3306
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "VZW"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fc

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_fc

    .line 3308
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3309
    .local v3, "ni":Landroid/net/NetworkInfo;
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3315
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :goto_60
    const-string v7, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3316
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_74

    .line 3317
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3319
    :cond_74
    if-eqz v4, :cond_7b

    .line 3320
    const-string v7, "reason"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3322
    :cond_7b
    if-eqz v0, :cond_82

    .line 3323
    const-string v7, "extraInfo"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3325
    :cond_82
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 3326
    const-string v7, "isFailover"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3327
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3330
    :cond_90
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 3331
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 3332
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_108

    .line 3333
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 3334
    .local v6, "switchTo":Landroid/net/NetworkInfo;
    const-string v7, "otherNetwork"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3341
    .end local v6    # "switchTo":Landroid/net/NetworkInfo;
    :cond_b8
    :goto_b8
    const-string v7, "inetCondition"

    iget v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3343
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3344
    .local v1, "immediateIntent":Landroid/content/Intent;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3345
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3346
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3356
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_e0

    .line 3357
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 3359
    :cond_e0
    return-void

    .line 3299
    .end local v1    # "immediateIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "reasonText":Ljava/lang/String;
    :cond_e1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "reasonText":Ljava/lang/String;
    goto/16 :goto_1a

    .line 3311
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_fc
    const-string v7, "networkInfo"

    new-instance v8, Landroid/net/NetworkInfo;

    invoke-direct {v8, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_60

    .line 3336
    :cond_108
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3337
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b8
.end method

.method private handleConnectivityChange(IZ)V
    .registers 20
    .param p1, "netType"    # I
    .param p2, "doReset"    # Z

    .prologue
    .line 3750
    if-eqz p2, :cond_c0

    const/4 v12, 0x3

    .line 3751
    .local v12, "resetMask":I
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v5

    .line 3761
    .local v5, "exempt":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 3763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v3, v14, p1

    .line 3764
    .local v3, "curLp":Landroid/net/LinkProperties;
    const/4 v10, 0x0

    .line 3766
    .local v10, "newLp":Landroid/net/LinkProperties;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v14

    if-eqz v14, :cond_c3

    if-nez p1, :cond_c3

    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_c3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v14

    if-eqz v14, :cond_c3

    .line 3769
    const-string v14, "handleConnectivityChange: remove Mobile Connection route table info "

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3845
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v10, v14, p1

    .line 3847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v14, v5}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z

    move-result v11

    .line 3850
    .local v11, "resetDns":Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Lcom/android/server/ConnectivityService;->updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3852
    const/4 v11, 0x0

    .line 3868
    if-nez v12, :cond_51

    if-eqz v11, :cond_221

    .line 3870
    :cond_51
    if-eqz v3, :cond_221

    .line 3872
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_221

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3873
    .local v8, "iface":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_207

    .line 3874
    if-eqz v12, :cond_1dd

    .line 3875
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resetConnections("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3876
    invoke-static {v8, v12}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 3880
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1dd

    .line 3881
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v15

    .line 3882
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a2
    :try_start_a2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v6, v14, :cond_1dc

    .line 3883
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/connectivity/Vpn;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v8, v0}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_bd
    .catchall {:try_start_a2 .. :try_end_bd} :catchall_204

    .line 3882
    add-int/lit8 v6, v6, 0x1

    goto :goto_a2

    .line 3750
    .end local v3    # "curLp":Landroid/net/LinkProperties;
    .end local v5    # "exempt":Z
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iface":Ljava/lang/String;
    .end local v10    # "newLp":Landroid/net/LinkProperties;
    .end local v11    # "resetDns":Z
    .end local v12    # "resetMask":I
    :cond_c0
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 3778
    .restart local v3    # "curLp":Landroid/net/LinkProperties;
    .restart local v5    # "exempt":Z
    .restart local v10    # "newLp":Landroid/net/LinkProperties;
    .restart local v12    # "resetMask":I
    :cond_c3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v14, v14, p1

    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 3779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v14, v14, p1

    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 3787
    if-eqz v3, :cond_152

    .line 3788
    invoke-virtual {v3, v10}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v14

    if-eqz v14, :cond_1a7

    .line 3789
    invoke-virtual {v3, v10}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v2

    .line 3790
    .local v2, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v14, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_f9

    iget-object v14, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    if-eqz v14, :cond_17e

    .line 3791
    :cond_f9
    iget-object v14, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_ff
    :goto_ff
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/LinkAddress;

    .line 3792
    .local v9, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet4Address;

    if-eqz v14, :cond_115

    .line 3793
    or-int/lit8 v12, v12, 0x1

    .line 3795
    :cond_115
    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet6Address;

    if-eqz v14, :cond_ff

    .line 3796
    or-int/lit8 v12, v12, 0x2

    goto :goto_ff

    .line 3800
    .end local v9    # "linkAddr":Landroid/net/LinkAddress;
    :cond_120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " resetMask="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n   car="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3820
    .end local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_152
    :goto_152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 3821
    const-string v14, "handleConnectivityChange: setting default proxy info "

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3823
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v14

    if-eqz v14, :cond_1d1

    if-nez p1, :cond_1d1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->checkCondition(I)Z

    move-result v14

    if-eqz v14, :cond_1d1

    .line 3825
    const-string v14, "handleConnectivityChange: No need to set default proxy info for mobile bcz wifi active already"

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 3806
    .restart local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_17e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " resetMask="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_152

    .line 3812
    .end local v2    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_1a7
    const/4 v12, 0x3

    .line 3814
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " resetMask="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_152

    .line 3835
    :cond_1d1
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2f

    .line 3885
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "iface":Ljava/lang/String;
    .restart local v11    # "resetDns":Z
    :cond_1dc
    :try_start_1dc
    monitor-exit v15
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_204

    .line 3888
    .end local v6    # "i":I
    :cond_1dd
    if-eqz v11, :cond_5b

    .line 3889
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 3892
    :try_start_1e2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v8}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1e9} :catch_1eb

    goto/16 :goto_5b

    .line 3893
    :catch_1eb
    move-exception v4

    .line 3895
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception resetting dns cache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 3885
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    :catchall_204
    move-exception v14

    :try_start_205
    monitor-exit v15
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_204

    throw v14

    .line 3899
    .end local v6    # "i":I
    :cond_207
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t reset connection for type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 3906
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iface":Ljava/lang/String;
    :cond_221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v14, p1

    .line 3907
    .local v13, "tracker":Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v14

    if-eqz v14, :cond_25d

    .line 3914
    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v14

    if-eqz v14, :cond_246

    invoke-static {v10}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v14

    if-nez v14, :cond_246

    .line 3915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v14}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 3918
    :cond_246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v14, v14, p1

    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_281

    .line 3919
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v14, v13}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    .line 3928
    :cond_25d
    :goto_25d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v14, v14, p1

    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v14

    const-string v15, "linkPropertiesChanged"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_280

    .line 3930
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v14

    if-eqz v14, :cond_280

    .line 3931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v14}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V

    .line 3944
    :cond_280
    return-void

    .line 3921
    :cond_281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v14}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_25d
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5119
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5121
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 5122
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5123
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1e

    .line 5139
    .end local v0    # "data":[Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 5127
    .restart local v0    # "data":[Ljava/lang/String;
    :cond_1e
    aget-object v4, v0, v8

    .line 5128
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 5129
    .local v5, "proxyPort":I
    array-length v6, v0

    if-le v6, v9, :cond_2c

    .line 5131
    const/4 v6, 0x1

    :try_start_26
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2b} :catch_39

    move-result v5

    .line 5136
    :cond_2c
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5137
    .local v2, "p":Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    goto :goto_1d

    .line 5132
    .end local v2    # "p":Landroid/net/ProxyProperties;
    :catch_39
    move-exception v1

    .line 5133
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1d
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .registers 23
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2922
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 2924
    .local v17, "prevNetType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2927
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(I)V

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-nez v19, :cond_4e

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v16, v19, v17

    .line 2937
    .local v16, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 2941
    .local v15, "pid":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    goto :goto_32

    .line 2945
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v15    # "pid":Ljava/lang/Integer;
    .end local v16    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4e
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2948
    .local v7, "intent":Landroid/content/Intent;
    const-string v19, "VZW"

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13a

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13a

    .line 2950
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 2951
    .local v13, "ni":Landroid/net/NetworkInfo;
    const-string v19, "networkInfo"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2957
    .end local v13    # "ni":Landroid/net/NetworkInfo;
    :goto_78
    const-string v19, "networkType"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2959
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v19

    if-eqz v19, :cond_9f

    .line 2960
    const-string v19, "isFailover"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2961
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2963
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_b2

    .line 2964
    const-string v19, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2966
    :cond_b2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c5

    .line 2967
    const-string v19, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2971
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-eqz v19, :cond_103

    .line 2972
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14e

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 2975
    .local v18, "switchTo":Landroid/net/NetworkInfo;
    const-string v19, "otherNetwork"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2981
    .end local v18    # "switchTo":Landroid/net/NetworkInfo;
    :cond_103
    :goto_103
    const-string v19, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2984
    const/4 v4, 0x1

    .line 2985
    .local v4, "doReset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 2986
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v10, :cond_189

    .line 2987
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 2988
    .local v14, "oldIface":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_189

    .line 2989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_131
    if-ge v5, v9, :cond_189

    aget-object v12, v3, v5

    .line 2990
    .local v12, "networkStateTracker":Landroid/net/NetworkStateTracker;
    if-nez v12, :cond_162

    .line 2989
    :cond_137
    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 2953
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v4    # "doReset":Z
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "linkProperties":Landroid/net/LinkProperties;
    .end local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v14    # "oldIface":Ljava/lang/String;
    :cond_13a
    const-string v19, "networkInfo"

    new-instance v20, Landroid/net/NetworkInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_78

    .line 2977
    :cond_14e
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2978
    const-string v19, "noConnectivity"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_103

    .line 2991
    .restart local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v4    # "doReset":Z
    .restart local v5    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .restart local v14    # "oldIface":Ljava/lang/String;
    :cond_162
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 2992
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_137

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_137

    .line 2993
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 2994
    .local v8, "l":Landroid/net/LinkProperties;
    if-eqz v8, :cond_137

    .line 2995
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_137

    .line 2996
    const/4 v4, 0x0

    .line 3030
    .end local v3    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v5    # "i$":I
    .end local v8    # "l":Landroid/net/LinkProperties;
    .end local v9    # "len$":I
    .end local v11    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v12    # "networkStateTracker":Landroid/net/NetworkStateTracker;
    .end local v14    # "oldIface":Ljava/lang/String;
    :cond_189
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 3032
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3033
    .local v6, "immediateIntent":Landroid/content/Intent;
    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3035
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3036
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3098
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1d9

    .line 3099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 3102
    :cond_1d9
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .registers 19
    .param p1, "netType"    # I

    .prologue
    .line 4311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v12, v1, p1

    .line 4313
    .local v12, "nt":Landroid/net/NetworkStateTracker;
    const/4 v8, 0x0

    .line 4315
    .local v8, "dnsCount":I
    if-eqz v12, :cond_1f

    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4316
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 4317
    .local v13, "p":Landroid/net/LinkProperties;
    if-nez v13, :cond_20

    .line 4361
    .end local v13    # "p":Landroid/net/LinkProperties;
    :cond_1f
    :goto_1f
    return-void

    .line 4318
    .restart local v13    # "p":Landroid/net/LinkProperties;
    :cond_20
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    .line 4320
    .local v4, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 4321
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 4322
    .local v2, "network":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4328
    :try_start_3f
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 4329
    monitor-exit v16
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_52

    .line 4359
    .end local v2    # "network":Ljava/lang/String;
    :cond_4e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    goto :goto_1f

    .line 4329
    .restart local v2    # "network":Ljava/lang/String;
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v16
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1

    .line 4332
    .end local v2    # "network":Ljava/lang/String;
    :cond_55
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_59
    :goto_59
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 4333
    .local v7, "dns":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 4334
    .local v9, "dnsString":Ljava/lang/String;
    const-string v1, "0.0.0.0"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4335
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 4338
    .end local v7    # "dns":Ljava/net/InetAddress;
    .end local v9    # "dnsString":Ljava/lang/String;
    :cond_74
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v8, :cond_8c

    .line 4339
    :cond_80
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4340
    .restart local v4    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4344
    :cond_8c
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9f} :catch_df

    .line 4350
    :goto_9f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v15, v1, p1

    .line 4351
    .local v15, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 4353
    .local v14, "pid":Ljava/lang/Integer;
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c4} :catch_c5

    goto :goto_a9

    .line 4354
    :catch_c5
    move-exception v10

    .line 4355
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception setting interface for pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 4346
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "pid":Ljava/lang/Integer;
    .end local v15    # "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_df
    move-exception v10

    .line 4347
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception setting dns servers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9f
.end method

.method private handleInetConditionChange(II)V
    .registers 9
    .param p1, "netType"    # I
    .param p2, "condition"    # I

    .prologue
    .line 4934
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 4935
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4967
    :cond_a
    :goto_a
    return-void

    .line 4938
    :cond_b
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_38

    .line 4939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 4948
    :cond_38
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 4950
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_a

    .line 4953
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_67

    .line 4954
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4960
    .local v0, "delay":I
    :goto_52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 4961
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 4957
    .end local v0    # "delay":I
    :cond_67
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delay":I
    goto :goto_52
.end method

.method private handleInetConditionHoldEnd(II)V
    .registers 6
    .param p1, "netType"    # I
    .param p2, "sequence"    # I

    .prologue
    .line 4971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4975
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 4977
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 4978
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4999
    :goto_3b
    return-void

    .line 4981
    :cond_3c
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_46

    .line 4982
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 4992
    :cond_46
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4993
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 4994
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 4997
    :cond_5c
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4998
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_3b
.end method

.method private handleMobileProvisioningAction(Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 6998
    const/4 v4, 0x5

    invoke-direct {p0, v5, v4, v6, v6}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 7002
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7003
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 7004
    const-string v4, "handleMobileProvisioningAction: on provisioning network"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7005
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v5

    check-cast v1, Landroid/net/MobileDataStateTracker;

    .line 7007
    .local v1, "mdst":Landroid/net/MobileDataStateTracker;
    invoke-virtual {v1, p1}, Landroid/net/MobileDataStateTracker;->enableMobileProvisioning(Ljava/lang/String;)V

    .line 7021
    .end local v1    # "mdst":Landroid/net/MobileDataStateTracker;
    :goto_20
    return-void

    .line 7009
    :cond_21
    const-string v4, "handleMobileProvisioningAction: on default network"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7010
    const-string v4, "android.intent.action.MAIN"

    const-string v5, "android.intent.category.APP_BROWSER"

    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 7012
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7013
    const/high16 v4, 0x10400000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7016
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_20

    .line 7017
    :catch_40
    move-exception v0

    .line 7018
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMobileProvisioningAction: startActivity failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private handleNetworkSamplingTimeout()V
    .registers 12

    .prologue
    .line 7396
    const-string v8, "Sampling interval elapsed, updating statistics .."

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7399
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7401
    .local v4, "mapIfaceToSample":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v3, :cond_21

    aget-object v7, v0, v1

    .line 7402
    .local v7, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_1e

    .line 7403
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 7404
    .local v2, "ifaceName":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 7405
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7401
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7411
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_21
    invoke-static {v4}, Landroid/net/SamplingDataTracker;->getSamplingSnapshots(Ljava/util/Map;)V

    .line 7414
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v3, :cond_43

    aget-object v7, v0, v1

    .line 7415
    .restart local v7    # "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_40

    .line 7416
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 7417
    .restart local v2    # "ifaceName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 7418
    .local v6, "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    if-eqz v6, :cond_40

    .line 7420
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 7422
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 7414
    .end local v2    # "ifaceName":Ljava/lang/String;
    .end local v6    # "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 7427
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_43
    const-string v8, "Done."

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7429
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "connectivity_sampling_interval_in_seconds"

    const/16 v10, 0x2d0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 7433
    .local v5, "samplingIntervalInSeconds":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting timer for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7435
    mul-int/lit16 v8, v5, 0x3e8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 7436
    return-void
.end method

.method private handleSetDependencyMet(IZ)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_33

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 2636
    :cond_33
    return-void
.end method

.method private handleSetMobileData(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 2816
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_f

    .line 2820
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2822
    :cond_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1c

    .line 2826
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2828
    :cond_1c
    return-void
.end method

.method private handleSetMobileDataEx(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 2832
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_f

    .line 2836
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Landroid/net/NetworkStateTracker;->setUserDataEnableEx(ZI)V

    .line 2838
    :cond_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1c

    .line 2842
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Landroid/net/NetworkStateTracker;->setUserDataEnableEx(ZI)V

    .line 2844
    :cond_1c
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .registers 3
    .param p1, "preference"    # I

    .prologue
    .line 1196
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1199
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, p1, :cond_21

    .line 1204
    monitor-enter p0

    .line 1205
    :try_start_1b
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 1206
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 1207
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 1210
    :cond_21
    return-void

    .line 1206
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2858
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2859
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 2860
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_13

    .line 2861
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 2864
    if-nez p1, :cond_13

    .line 2865
    iput-boolean p2, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 2870
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_13
    return-void
.end method

.method private hasInterfaceAsUser(I)Z
    .registers 13
    .param p1, "user"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5730
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getProfilesByDomain(I)Ljava/util/List;

    move-result-object v5

    .line 5733
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5735
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser > profiles.size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_ea

    .line 5737
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_43
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_e6

    .line 5738
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 5739
    .local v4, "key":I
    const-string v9, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser > vpn key : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", profileName : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_ae

    .line 5741
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5742
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_ab

    .line 5743
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a4

    .line 5744
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : return true"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5770
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":I
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_a3
    return v6

    .line 5747
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "key":I
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a4
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : interface name is null"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    :cond_ab
    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 5750
    :cond_ae
    const-string v6, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasInterfaceAsUser : mEnterpriseVpnStoreObj is null "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_c6} :catch_c7

    goto :goto_ab

    .line 5768
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":I
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_c7
    move-exception v0

    .line 5769
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 5770
    goto :goto_a3

    .line 5736
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    .line 5756
    .end local v3    # "j":I
    :cond_ea
    :try_start_ea
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_117

    .line 5757
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5758
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_117

    .line 5759
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_117

    .line 5760
    const-string v6, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : return true"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5761
    goto :goto_a3

    .line 5766
    :cond_117
    const-string v6, "ConnectivityService"

    const-string v7, "hasInterfaceAsUser : return false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_11e} :catch_c7

    move v6, v8

    .line 5767
    goto :goto_a3
.end method

.method private isAddressUnderVpn(Ljava/net/InetAddress;)Z
    .registers 13
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x0

    .line 2264
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2265
    :try_start_4
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    .line 2266
    :try_start_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2267
    .local v5, "uid":I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 2268
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v6, :cond_18

    .line 2269
    monitor-exit v9
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_57

    :try_start_16
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_4d

    .line 2289
    :goto_17
    return v7

    .line 2273
    :cond_18
    :try_start_18
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2274
    .local v2, "destination":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 2278
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    .line 2279
    .local v4, "prefix":I
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2280
    .local v0, "addrMasked":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    .line 2283
    .local v1, "destMasked":Ljava/net/InetAddress;
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 2284
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_57

    :try_start_4b
    monitor-exit v8

    goto :goto_17

    .line 2291
    .end local v0    # "addrMasked":Ljava/net/InetAddress;
    .end local v1    # "destMasked":Ljava/net/InetAddress;
    .end local v2    # "destination":Landroid/net/LinkAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "prefix":I
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_4d
    move-exception v7

    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v7

    .line 2289
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "uid":I
    .restart local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_50
    :try_start_50
    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/Vpn;->isAddressCovered(Ljava/net/InetAddress;)Z

    move-result v7

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_57

    :try_start_55
    monitor-exit v8
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_4d

    goto :goto_17

    .line 2290
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_57
    move-exception v7

    :try_start_58
    monitor-exit v9
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_4d
.end method

.method private isCaptivePortalAllowedNetwork(Landroid/net/NetworkInfo;)Z
    .registers 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 7604
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalAllowedNetworkTypes:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private isIpv4Connected(Landroid/net/LinkProperties;)Z
    .registers 9
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2238
    const/4 v4, 0x0

    .line 2240
    .local v4, "ret":Z
    if-eqz p1, :cond_37

    .line 2241
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 2242
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2243
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_b

    move-object v3, v0

    .line 2244
    check-cast v3, Ljava/net/Inet4Address;

    .line 2245
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2247
    const/4 v4, 0x1

    .line 2254
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIpv4Connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2256
    return v4
.end method

.method private isIpv6Connected(Landroid/net/LinkProperties;)Z
    .registers 9
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2216
    const/4 v4, 0x0

    .line 2218
    .local v4, "ret":Z
    if-eqz p1, :cond_37

    .line 2219
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 2220
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2221
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_b

    move-object v3, v0

    .line 2222
    check-cast v3, Ljava/net/Inet6Address;

    .line 2223
    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2225
    const/4 v4, 0x1

    .line 2232
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIpv6Connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2234
    return v4
.end method

.method private isMobileDataStateTrackerReady()Z
    .registers 4

    .prologue
    .line 6393
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    check-cast v0, Landroid/net/MobileDataStateTracker;

    .line 6395
    .local v0, "mdst":Landroid/net/MobileDataStateTracker;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker;->isReady()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .registers 10
    .param p1, "tracker"    # Landroid/net/NetworkStateTracker;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1272
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1277
    :try_start_c
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1278
    .local v1, "networkCostly":Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1279
    .local v2, "uidRules":I
    monitor-exit v4

    .line 1281
    if-eqz v1, :cond_21

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_21

    .line 1282
    const/4 v3, 0x1

    .line 1286
    :cond_21
    return v3

    .line 1279
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 1570
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1571
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_e

    .line 1573
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 1577
    :goto_c
    return v1

    .line 1574
    :catch_d
    move-exception v1

    .line 1577
    :cond_e
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isNewNetTypePreferredOverCurrentNetType(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 3427
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/net/NetworkConfig;->priority:I

    if-gt v0, v1, :cond_1a

    :cond_14
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v0, v1, :cond_1c

    .line 3430
    :cond_1a
    const/4 v0, 0x0

    .line 3432
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 7705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAvsAuthorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7706
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 7727
    :cond_23
    :goto_23
    return v8

    .line 7709
    :cond_24
    const/4 v8, 0x0

    .line 7710
    .local v8, "result":Z
    const/4 v6, 0x0

    .line 7711
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7714
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_2c
    const-string v1, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7716
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 7717
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_67
    .catchall {:try_start_2c .. :try_end_4a} :catchall_6e

    move-result v8

    .line 7723
    :cond_4b
    if-eqz v6, :cond_50

    .line 7724
    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7726
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAvsAuthorized result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_23

    .line 7719
    :catch_67
    move-exception v7

    .line 7721
    .local v7, "e":Ljava/lang/Exception;
    :try_start_68
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6e

    .line 7723
    if-eqz v6, :cond_50

    goto :goto_4d

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_6e
    move-exception v1

    if-eqz v6, :cond_74

    .line 7724
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7723
    :cond_74
    throw v1
.end method

.method private isSprintSignedApplication(I)Z
    .registers 15
    .param p1, "uid"    # I

    .prologue
    .line 7757
    const/4 v0, 0x0

    .line 7758
    .local v0, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 7760
    .local v9, "permissionPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 7761
    .local v6, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 7763
    .local v1, "callingPackageName":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7766
    const/4 v11, 0x0

    :try_start_26
    aget-object v11, v1, v11

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7767
    const-string v11, "com.sec.sprextension"

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_35} :catch_68

    move-result-object v9

    .line 7776
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7778
    .local v2, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_8e

    .line 7779
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7781
    .local v10, "permissionPackageSignatures":[Landroid/content/pm/Signature;
    array-length v7, v2

    .line 7782
    .local v7, "numberOfCallingPackageSignatures":I
    array-length v8, v10

    .line 7784
    .local v8, "numberOfPermissionPackageSignatures":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v7, :cond_8e

    .line 7785
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_42
    if-ge v5, v8, :cond_8b

    .line 7786
    aget-object v11, v2, v4

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 7787
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signature of the calling post loaded application matched with provided signatures "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7788
    const/4 v11, 0x1

    .line 7800
    .end local v2    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "numberOfCallingPackageSignatures":I
    .end local v8    # "numberOfPermissionPackageSignatures":I
    .end local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :goto_67
    return v11

    .line 7769
    :catch_68
    move-exception v3

    .line 7771
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7772
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling NameNotFoundException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7773
    const/4 v11, 0x0

    goto :goto_67

    .line 7785
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "numberOfCallingPackageSignatures":I
    .restart local v8    # "numberOfPermissionPackageSignatures":I
    .restart local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 7784
    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 7794
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "numberOfCallingPackageSignatures":I
    .end local v8    # "numberOfPermissionPackageSignatures":I
    .end local v10    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_8e
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9d

    .line 7795
    const-string v11, "Its a preloaded application"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7796
    const/4 v11, 0x1

    goto :goto_67

    .line 7799
    :cond_9d
    const-string v11, "It is neither a preloaded app nor a post loaded app with correct signature"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7800
    const/4 v11, 0x0

    goto :goto_67
.end method

.method private isVzwAppsApnPermissionGranted(I)Z
    .registers 23
    .param p1, "uid"    # I

    .prologue
    .line 7610
    const-string v19, "Entered into isVzwAppsApnPermissionGranted"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7612
    const/4 v3, 0x0

    .line 7613
    .local v3, "callingPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v15, 0x0

    .line 7615
    .local v15, "permissionPackageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 7616
    .local v11, "mPackageManager":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 7618
    .local v4, "callingPackageName":[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v4, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 7622
    .local v17, "token":J
    const/16 v19, 0x0

    :try_start_37
    aget-object v19, v4, v19

    const/16 v20, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7623
    const-string v19, "com.verizon.permissions.vzwappapn"

    const/16 v20, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4e} :catch_bd
    .catchall {:try_start_37 .. :try_end_4e} :catchall_ce

    move-result-object v15

    .line 7629
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7639
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7641
    .local v5, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_d9

    .line 7643
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "signature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7645
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 7647
    .local v16, "permissionPackageSignatures":[Landroid/content/pm/Signature;
    array-length v13, v5

    .line 7648
    .local v13, "numberOfCallingPackageSignatures":I
    move-object/from16 v0, v16

    array-length v14, v0

    .line 7650
    .local v14, "numberOfPermissionPackageSignatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7a
    if-ge v7, v13, :cond_d9

    .line 7651
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "signature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7652
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_96
    if-ge v10, v14, :cond_d6

    .line 7654
    aget-object v19, v5, v7

    aget-object v20, v16, v10

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d3

    .line 7656
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Signature of the calling post loaded application matched with verizon provided signatures "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7657
    const/16 v19, 0x1

    .line 7693
    .end local v5    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "numberOfCallingPackageSignatures":I
    .end local v14    # "numberOfPermissionPackageSignatures":I
    .end local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :goto_bc
    return v19

    .line 7624
    :catch_bd
    move-exception v6

    .line 7625
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_be
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7626
    const-string v19, "ConnectivityService"

    const-string v20, "isVzwAppsApnPermissionGranted calling package NameNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_ce

    .line 7627
    const/16 v19, 0x0

    .line 7629
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_bc

    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_ce
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 7652
    .restart local v5    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .restart local v7    # "i":I
    .restart local v10    # "j":I
    .restart local v13    # "numberOfCallingPackageSignatures":I
    .restart local v14    # "numberOfPermissionPackageSignatures":I
    .restart local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_d3
    add-int/lit8 v10, v10, 0x1

    goto :goto_96

    .line 7650
    :cond_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 7662
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "numberOfCallingPackageSignatures":I
    .end local v14    # "numberOfPermissionPackageSignatures":I
    .end local v16    # "permissionPackageSignatures":[Landroid/content/pm/Signature;
    :cond_d9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7664
    .local v8, "identity":J
    :try_start_dd
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_153

    .line 7666
    const-string v19, "It is a preloaded application"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7667
    const/16 v19, 0x0

    aget-object v19, v4, v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 7670
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_10f

    .line 7671
    const-string v19, "This preloaded application does not have the meta-data tag."

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_109
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dd .. :try_end_109} :catch_148
    .catchall {:try_start_dd .. :try_end_109} :catchall_15f

    .line 7672
    const/16 v19, 0x0

    .line 7689
    :goto_10b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_bc

    .line 7675
    :cond_10f
    :try_start_10f
    const-string v19, "com.verizon.VZWAPPAPN"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7677
    .local v12, "metaDataValue":Ljava/lang/String;
    if-eqz v12, :cond_153

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12d

    const-string v19, "VerizonDefinedPermission"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_153

    .line 7678
    :cond_12d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Its a preloaded application with metadata "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_145
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10f .. :try_end_145} :catch_148
    .catchall {:try_start_10f .. :try_end_145} :catchall_15f

    .line 7679
    const/16 v19, 0x1

    goto :goto_10b

    .line 7683
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v12    # "metaDataValue":Ljava/lang/String;
    :catch_148
    move-exception v6

    .line 7686
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_149
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7687
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_149 .. :try_end_153} :catchall_15f

    .line 7689
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_153
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7692
    const-string v19, "It is neither a preloaded app nor a post loaded app with correct signature"

    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7693
    const/16 v19, 0x0

    goto/16 :goto_bc

    .line 7689
    :catchall_15f
    move-exception v19

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private loadGlobalProxy()V
    .registers 9

    .prologue
    .line 5063
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 5064
    .local v5, "res":Landroid/content/ContentResolver;
    const-string v6, "global_http_proxy_host"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5065
    .local v1, "host":Ljava/lang/String;
    const-string v6, "global_http_proxy_port"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5066
    .local v3, "port":I
    const-string v6, "global_http_proxy_exclusion_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5068
    .local v0, "exclList":Ljava/lang/String;
    const-string v6, "global_proxy_pac_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5069
    .local v2, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 5071
    :cond_2b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 5072
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 5076
    .local v4, "proxyProperties":Landroid/net/ProxyProperties;
    :goto_36
    invoke-virtual {v4}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 5077
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5085
    .end local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    :cond_56
    :goto_56
    return-void

    .line 5074
    :cond_57
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v4    # "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_36

    .line 5081
    :cond_5d
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5082
    :try_start_60
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5083
    monitor-exit v7

    goto :goto_56

    :catchall_64
    move-exception v6

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_64

    throw v6
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5179
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5183
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    return-void
.end method

.method private static makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 1079
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v0

    return-object v0
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 3242
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_a

    .line 3243
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 3246
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3248
    const-string v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3249
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3250
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3251
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3253
    :cond_32
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 3254
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3256
    :cond_41
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 3257
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3260
    :cond_50
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3261
    return-object v0
.end method

.method private static makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 1092
    const/4 v13, 0x0

    .line 1093
    .local v13, "wimaxStateTrackerClass":Ljava/lang/Class;
    const/4 v10, 0x0

    .line 1101
    .local v10, "wimaxServiceClass":Ljava/lang/Class;
    const/4 v12, 0x0

    .line 1103
    .local v12, "wimaxStateTracker":Landroid/net/NetworkStateTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x111004b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1106
    .local v3, "isWimaxEnabled":Z
    if-eqz v3, :cond_14f

    .line 1108
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040054

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1110
    .local v6, "wimaxJarLocation":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040055

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1112
    .local v7, "wimaxLibLocation":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040056

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1114
    .local v9, "wimaxManagerClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040057

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1116
    .local v11, "wimaxServiceClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040058

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1119
    .local v14, "wimaxStateTrackerClassName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1120
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_7e} :catch_128

    .line 1125
    .local v5, "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    :try_start_7e
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1126
    .local v8, "wimaxManagerClass":Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1127
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_89
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_89} :catch_10a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7e .. :try_end_89} :catch_128

    move-result-object v10

    .line 1138
    :try_start_8a
    const-string v17, "Starting Wimax Service... "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1140
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 1142
    .local v16, "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 1145
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 1147
    .local v15, "wmxSrvConst":Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1148
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 1149
    .local v4, "svcInvoker":Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1151
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_107} :catch_131

    move-object/from16 v17, v12

    .line 1162
    .end local v4    # "svcInvoker":Landroid/os/IBinder;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    .end local v15    # "wmxSrvConst":Ljava/lang/reflect/Constructor;
    .end local v16    # "wmxStTrkrConst":Ljava/lang/reflect/Constructor;
    :goto_109
    return-object v17

    .line 1128
    .restart local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "wimaxJarLocation":Ljava/lang/String;
    .restart local v7    # "wimaxLibLocation":Ljava/lang/String;
    .restart local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_10a
    move-exception v2

    .line 1129
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_10b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_125
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10b .. :try_end_125} :catch_128

    .line 1130
    const/16 v17, 0x0

    goto :goto_109

    .line 1132
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_128
    move-exception v2

    .line 1133
    .local v2, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1134
    const/16 v17, 0x0

    goto :goto_109

    .line 1153
    .end local v2    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "wimaxJarLocation":Ljava/lang/String;
    .restart local v7    # "wimaxLibLocation":Ljava/lang/String;
    .restart local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .restart local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .restart local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .restart local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :catch_131
    move-exception v2

    .line 1154
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1155
    const/16 v17, 0x0

    goto :goto_109

    .line 1158
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "wimaxClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "wimaxJarLocation":Ljava/lang/String;
    .end local v7    # "wimaxLibLocation":Ljava/lang/String;
    .end local v8    # "wimaxManagerClass":Ljava/lang/Class;
    .end local v9    # "wimaxManagerClassName":Ljava/lang/String;
    .end local v11    # "wimaxServiceClassName":Ljava/lang/String;
    .end local v14    # "wimaxStateTrackerClassName":Ljava/lang/String;
    :cond_14f
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1159
    const/16 v17, 0x0

    goto :goto_109
.end method

.method private modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z
    .registers 17
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "cycleCount"    # I
    .param p4, "doAdd"    # Z
    .param p5, "toDefaultTable"    # Z
    .param p6, "exempt"    # Z

    .prologue
    .line 2482
    if-eqz p1, :cond_4

    if-nez p2, :cond_26

    .line 2483
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2484
    const/4 v0, 0x0

    .line 2572
    :goto_25
    return v0

    .line 2487
    :cond_26
    const/16 v0, 0xa

    if-le p3, v0, :cond_31

    .line 2488
    const-string v0, "Error modifying route - too much recursion"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2489
    const/4 v0, 0x0

    goto :goto_25

    .line 2492
    :cond_31
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v9

    .line 2493
    .local v9, "ifaceName":Ljava/lang/String;
    if-nez v9, :cond_3e

    .line 2494
    const-string v0, "Error modifying route - no interface name"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2495
    const/4 v0, 0x0

    goto :goto_25

    .line 2497
    :cond_3e
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2498
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2499
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-eqz v2, :cond_73

    .line 2500
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2502
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2510
    :goto_68
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    .line 2513
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_73
    if-eqz p4, :cond_cf

    .line 2516
    if-eqz p5, :cond_c9

    .line 2517
    :try_start_77
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_af

    .line 2519
    :try_start_7a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2520
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 2521
    if-eqz p6, :cond_9c

    .line 2522
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 2523
    .local v7, "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 2524
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->setHostExemption(Landroid/net/LinkAddress;)V

    .line 2525
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2528
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_7a .. :try_end_9d} :catchall_ac

    .line 2572
    :goto_9d
    const/4 v0, 0x1

    goto :goto_25

    .line 2506
    .restart local v2    # "bestRoute":Landroid/net/RouteInfo;
    :cond_9f
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_68

    .line 2528
    .end local v2    # "bestRoute":Landroid/net/RouteInfo;
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_af} :catch_af

    .line 2532
    :catch_af
    move-exception v8

    .line 2534
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2535
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 2530
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_c9
    :try_start_c9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ce} :catch_af

    goto :goto_9d

    .line 2540
    :cond_cf
    if-eqz p5, :cond_106

    .line 2541
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2542
    :try_start_d4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2543
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_fe

    move-result v0

    if-nez v0, :cond_fc

    .line 2546
    :try_start_e1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 2547
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 2548
    .restart local v7    # "dest":Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 2549
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->clearHostExemption(Landroid/net/LinkAddress;)V

    .line 2550
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_fc} :catch_101
    .catchall {:try_start_e1 .. :try_end_fc} :catchall_fe

    .line 2560
    .end local v7    # "dest":Landroid/net/LinkAddress;
    :cond_fc
    :try_start_fc
    monitor-exit v1

    goto :goto_9d

    :catchall_fe
    move-exception v0

    monitor-exit v1
    :try_end_100
    .catchall {:try_start_fc .. :try_end_100} :catchall_fe

    throw v0

    .line 2552
    :catch_101
    move-exception v8

    .line 2555
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_fe

    goto/16 :goto_25

    .line 2564
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_106
    :try_start_106
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_10c

    goto :goto_9d

    .line 2565
    :catch_10c
    move-exception v8

    .line 2568
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto/16 :goto_25
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z
    .registers 17
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "doAdd"    # Z
    .param p4, "toDefaultTable"    # Z
    .param p5, "exempt"    # Z

    .prologue
    .line 2449
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2450
    const/4 v9, 0x0

    .line 2451
    .local v9, "isPossibleToAddRoute":Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 2452
    .local v10, "linkAddress":Ljava/net/InetAddress;
    invoke-static {v10, p2}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2453
    const/4 v9, 0x1

    goto :goto_13

    .line 2456
    .end local v10    # "linkAddress":Ljava/net/InetAddress;
    :cond_27
    if-nez v9, :cond_4f

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRouteToAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no IP address for the same IP type of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2458
    const/4 v0, 0x0

    .line 2477
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "isPossibleToAddRoute":Z
    :goto_4e
    return v0

    .line 2463
    :cond_4f
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2464
    .local v2, "bestRoute":Landroid/net/RouteInfo;
    if-nez v2, :cond_6d

    .line 2465
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2477
    :goto_61
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    goto :goto_4e

    .line 2467
    :cond_6d
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v8

    .line 2468
    .local v8, "iface":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2470
    invoke-static {p2, v8}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_61

    .line 2474
    :cond_80
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, v8}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_61
.end method

.method private static native native_CWServiceConfigureRoutingTable_JNI(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private declared-synchronized onUserStart(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 7310
    monitor-enter p0

    :try_start_1
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserStart for userid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_65

    .line 7312
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 7313
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_2e

    .line 7314
    const-string v1, "Starting user already has a VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7315
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_62

    .line 7322
    :goto_2c
    monitor-exit p0

    return-void

    .line 7317
    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 7318
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userVpn value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7319
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7320
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 7321
    monitor-exit v6

    goto :goto_2c

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_62
    move-exception v1

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_2e .. :try_end_64} :catchall_62

    :try_start_64
    throw v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    .line 7310
    :catchall_65
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onUserStop(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 7325
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 7326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 7327
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_14

    .line 7328
    const-string v1, "Stopping user has no VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7329
    monitor-exit v2

    .line 7333
    :goto_13
    return-void

    .line 7331
    :cond_14
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 7332
    monitor-exit v2

    goto :goto_13

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private reassessPidDns(IZ)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "doBump"    # Z

    .prologue
    .line 4201
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 4202
    .local v5, "myPid":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_64

    aget v2, v0, v3

    .line 4203
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 4202
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4206
    :cond_1a
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v8, v2

    .line 4208
    .local v6, "nt":Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_17

    .line 4211
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 4212
    .local v7, "p":Landroid/net/LinkProperties;
    if-eqz v7, :cond_17

    .line 4213
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v8, v2

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 4215
    :try_start_40
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4a

    .line 4229
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :goto_49
    return-void

    .line 4216
    .restart local v2    # "i":I
    .restart local v6    # "nt":Landroid/net/NetworkStateTracker;
    .restart local v7    # "p":Landroid/net/LinkProperties;
    :catch_4a
    move-exception v1

    .line 4217
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception reasseses pid dns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 4225
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v6    # "nt":Landroid/net/NetworkStateTracker;
    .end local v7    # "p":Landroid/net/LinkProperties;
    :cond_64
    :try_start_64
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForPid(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_6a

    goto :goto_49

    .line 4226
    :catch_6a
    move-exception v1

    .line 4227
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception clear interface from pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private removeAllMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    if-eqz v0, :cond_22

    .line 7487
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$EmergencyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7488
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove all timeout msg reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7490
    :cond_22
    return-void
.end method

.method private removeDataActivityTracking(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 3730
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 3731
    .local v1, "net":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1c

    .line 3737
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 3741
    :cond_1c
    :goto_1c
    return-void

    .line 3738
    :catch_1d
    move-exception v2

    goto :goto_1c
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .registers 11
    .param p1, "p"    # Landroid/net/LinkProperties;
    .param p2, "r"    # Landroid/net/RouteInfo;
    .param p3, "toDefaultTable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .registers 9
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    .line 2443
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private routeTableFlush(Z)V
    .registers 11
    .param p1, "flush"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 7532
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-nez v3, :cond_38

    .line 7533
    if-eqz p1, :cond_c8

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->needFlushRoutes()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 7534
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v3, v4

    .line 7535
    .local v2, "thisNet":Landroid/net/NetworkStateTracker;
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 7536
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v3, v4

    .line 7539
    .local v1, "otherNet":Landroid/net/NetworkStateTracker;
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-nez v3, :cond_38

    .line 7540
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7541
    const-string v3, "ConnectivityService"

    const-string v4, "Mobile Network route table entried flushed out forcefully "

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7567
    .end local v1    # "otherNet":Landroid/net/NetworkStateTracker;
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 7568
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 7569
    :cond_49
    return-void

    .line 7544
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_4a
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Just update the Network settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7546
    invoke-interface {v2, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 7547
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 7548
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v8}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7549
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 7550
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed route table entries for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7551
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Connected broadcast delayed instent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 7554
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_c8
    monitor-enter p0

    .line 7555
    :try_start_c9
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 7556
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x8

    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7561
    :cond_e3
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_c9 .. :try_end_e4} :catchall_f4

    .line 7562
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v3, v4

    .line 7563
    .restart local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 7564
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3, v8}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    goto/16 :goto_38

    .line 7561
    .end local v2    # "thisNet":Landroid/net/NetworkStateTracker;
    :catchall_f4
    move-exception v3

    :try_start_f5
    monitor-exit p0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v3
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "delayMs"    # I

    .prologue
    .line 3225
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_21

    .line 3227
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3228
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3229
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 3235
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_20
    return-void

    .line 3231
    :cond_21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3232
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    goto :goto_20
.end method

.method private sendDataActivityBroadcast(IZ)V
    .registers 14
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z

    .prologue
    .line 3273
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3274
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3275
    const-string v0, "isActive"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3278
    .local v9, "ident":J
    :try_start_15
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_27

    .line 3281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3283
    return-void

    .line 3281
    :catchall_27
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5704
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDnsToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5708
    .local v1, "token":J
    :try_start_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5709
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5710
    const-string v3, "extra_action"

    const-string v4, "dns_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5711
    const-string v3, "extra_profile_name"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5712
    if-eqz p2, :cond_45

    .line 5713
    const-string v3, "dnsList"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5715
    :cond_45
    if-eqz p3, :cond_4e

    .line 5716
    const-string v3, "searchDomainList"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5718
    :cond_4e
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDnsToKnoxVpn : Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_26 .. :try_end_6d} :catchall_71

    .line 5721
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5723
    return-void

    .line 5721
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_71
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 3265
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3266
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;
    .param p3, "delayMs"    # I

    .prologue
    .line 3269
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3270
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3238
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3239
    return-void
.end method

.method private sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 5683
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendInterfaceNameToKnoxVpn : profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5685
    .local v1, "interfaceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5688
    .local v2, "token":J
    :try_start_2b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5689
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5690
    const-string v4, "extra_action"

    const-string/jumbo v5, "tun_info"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5691
    const-string v4, "extra_profile_name"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5692
    const-string v4, "extra_tun_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5693
    const-string v4, "extra_state"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5694
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendInterfaceNameToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_2b .. :try_end_6b} :catchall_6f

    .line 5698
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5700
    return-void

    .line 5698
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_6f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .registers 8
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5142
    if-nez p1, :cond_c

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1    # "proxy":Landroid/net/ProxyProperties;
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {p1, v3, v4, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5143
    .restart local p1    # "proxy":Landroid/net/ProxyProperties;
    :cond_c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5155
    :goto_14
    return-void

    .line 5144
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5145
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5146
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5148
    const-string v3, "proxy"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5151
    .local v0, "ident":J
    :try_start_40
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4b

    .line 5153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    :catchall_4b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3362
    monitor-enter p0

    .line 3363
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v2, :cond_c

    .line 3364
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3366
    :cond_c
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_26

    move-result-wide v0

    .line 3373
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    .line 3375
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3377
    monitor-exit p0

    .line 3378
    return-void

    .line 3375
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3377
    .end local v0    # "ident":J
    :catchall_26
    move-exception v2

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v2
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delayMs"    # I

    .prologue
    .line 3381
    if-gtz p2, :cond_6

    .line 3382
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3391
    :goto_5
    return-void

    .line 3388
    :cond_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .registers 7
    .param p1, "bufferSizes"    # Ljava/lang/String;

    .prologue
    .line 4175
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4177
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3d

    .line 4178
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 4179
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4181
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4182
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :goto_3c
    return-void

    .line 4186
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_3c

    .line 4188
    .end local v2    # "values":[Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 4189
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5622
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDnsToVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5625
    .local v1, "token":J
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_31
    .catchall {:try_start_26 .. :try_end_2d} :catchall_4f

    .line 5629
    :goto_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5631
    return-void

    .line 5626
    :catch_31
    move-exception v0

    .line 5627
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4f

    goto :goto_2d

    .line 5629
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEnableFailFastMobileData(I)V
    .registers 6
    .param p1, "enabled"    # I

    .prologue
    .line 6383
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 6384
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6388
    .local v0, "tag":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6390
    return-void

    .line 6386
    .end local v0    # "tag":I
    :cond_17
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .restart local v0    # "tag":I
    goto :goto_9
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 6
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 6308
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6309
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6310
    if-eqz v0, :cond_a

    .line 6311
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 6315
    :cond_a
    if-eqz p1, :cond_22

    .line 6316
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 6317
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 6318
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 6319
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 6326
    :goto_21
    return-void

    .line 6321
    :cond_22
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29

    goto :goto_21

    .line 6323
    :catch_29
    move-exception v1

    goto :goto_21
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 7029
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setProvNotificationVisible: E visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extraInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7033
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 7034
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 7037
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_152

    .line 7042
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 7043
    .local v4, "notification":Landroid/app/Notification;
    packed-switch p2, :pswitch_data_176

    .line 7072
    :pswitch_50
    const v9, 0x10406bb

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7073
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x10406bc

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7075
    .local v1, "details":Ljava/lang/CharSequence;
    const v2, 0x10807b6

    .line 7076
    .local v2, "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7077
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7079
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7083
    :goto_8c
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 7084
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 7085
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 7086
    iput-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 7087
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v8, v1, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7090
    :try_start_9f
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_a4
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_a4} :catch_136

    .line 7103
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_a4
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mIsNotificationVisible:Z

    .line 7104
    :cond_a6
    return-void

    .line 7045
    .restart local v4    # "notification":Landroid/app/Notification;
    :pswitch_a7
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c0

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->showCaptivePortalCheckNotification(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 7050
    :cond_c0
    const v9, 0x10406b6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7051
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const v9, 0x10406bc

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7053
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x10807bd

    .line 7054
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7055
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10400000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7057
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_8c

    .line 7061
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_fd
    const v9, 0x10406bb

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7064
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 7065
    .restart local v1    # "details":Ljava/lang/CharSequence;
    const v2, 0x10807b6

    .line 7066
    .restart local v2    # "icon":I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7067
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v9, "EXTRA_URL"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7068
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7069
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_8c

    .line 7091
    :catch_136
    move-exception v6

    .line 7092
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7093
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_a4

    .line 7097
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_152
    :try_start_152
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_157
    .catch Ljava/lang/NullPointerException; {:try_start_152 .. :try_end_157} :catch_159

    goto/16 :goto_a4

    .line 7098
    :catch_159
    move-exception v6

    .line 7099
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7100
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_a4

    .line 7043
    nop

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_a7
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_fd
    .end packed-switch
.end method

.method private setupDataActivityTracking(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 3698
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, p1

    .line 3699
    .local v1, "thisNet":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3703
    .local v0, "iface":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3704
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_mobile"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3708
    .local v2, "timeout":I
    const/4 p1, 0x0

    .line 3718
    :goto_20
    if-lez v2, :cond_2d

    if-eqz v0, :cond_2d

    .line 3720
    :try_start_24
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_40

    .line 3724
    :cond_2d
    :goto_2d
    return-void

    .line 3709
    .end local v2    # "timeout":I
    :cond_2e
    const/4 v3, 0x1

    if-ne v3, p1, :cond_3e

    .line 3710
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_wifi"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "timeout":I
    goto :goto_20

    .line 3715
    .end local v2    # "timeout":I
    :cond_3e
    const/4 v2, 0x0

    .restart local v2    # "timeout":I
    goto :goto_20

    .line 3721
    :catch_40
    move-exception v3

    goto :goto_2d
.end method

.method private showCaptivePortalCheckNotification(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 7806
    const-string v0, "\"gogoinflight\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\"Carnival-WiFi\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7810
    :cond_10
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung captive portal check is skipped. Show only notification when connecting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7811
    const/4 v0, 0x1

    .line 7813
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 23
    .param p1, "u"    # Lcom/android/server/ConnectivityService$FeatureUser;
    .param p2, "ignoreDups"    # Z

    .prologue
    .line 2068
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 2069
    .local v9, "networkType":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 2070
    .local v6, "feature":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 2071
    .local v10, "pid":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 2074
    .local v15, "uid":I
    const/4 v14, 0x0

    .line 2075
    .local v14, "tracker":Landroid/net/NetworkStateTracker;
    const/4 v3, 0x0

    .line 2082
    .local v3, "callTeardown":Z
    invoke-static {v9}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v18

    if-nez v18, :cond_46

    .line 2084
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "stopUsingNetworkFeature: net "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", net is invalid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2087
    const/16 v18, -0x1

    .line 2206
    :goto_45
    return v18

    .line 2092
    :cond_46
    monitor-enter p0

    .line 2094
    :try_start_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5e

    .line 2099
    const/16 v18, 0x1

    monitor-exit p0

    goto :goto_45

    .line 2167
    :catchall_5b
    move-exception v18

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_5b

    throw v18

    .line 2102
    :cond_5e
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2104
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2113
    if-nez p2, :cond_af

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_95
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2115
    .local v17, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v18

    if-eqz v18, :cond_95

    .line 2117
    const/16 v18, 0x1

    monitor-exit p0

    goto :goto_45

    .line 2123
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v17    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_af
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v16

    .line 2126
    .local v16, "usedNetworkType":I
    const-string v18, "VZW"

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d1

    .line 2127
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->isVzwAppsApnPermissionGranted(I)Z

    move-result v18

    if-eqz v18, :cond_d1

    .line 2129
    const/16 v16, 0xc

    .line 2134
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v14, v18, v16

    .line 2135
    if-nez v14, :cond_113

    .line 2137
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "stopUsingNetworkFeature: net "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " no known tracker for used net type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2140
    const/16 v18, -0x1

    monitor-exit p0

    goto/16 :goto_45

    .line 2142
    :cond_113
    move/from16 v0, v16

    if-eq v0, v9, :cond_1e2

    .line 2143
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 2144
    .local v5, "currentPid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12c
    .catchall {:try_start_5e .. :try_end_12c} :catchall_5b

    move-result-wide v12

    .line 2148
    .local v12, "token":J
    const/16 v18, 0x1

    :try_start_12f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V
    :try_end_136
    .catchall {:try_start_12f .. :try_end_136} :catchall_14f

    .line 2150
    :try_start_136
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2152
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_154

    .line 2158
    const/16 v18, 0x1

    monitor-exit p0

    goto/16 :goto_45

    .line 2150
    :catchall_14f
    move-exception v18

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 2160
    :cond_154
    const/4 v3, 0x1

    .line 2167
    .end local v5    # "currentPid":Ljava/lang/Integer;
    .end local v12    # "token":J
    :goto_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_136 .. :try_end_156} :catchall_5b

    .line 2169
    if-eqz v3, :cond_213

    .line 2171
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "stopUsingNetworkFeature: teardown net "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2173
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 2175
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v18

    if-eqz v18, :cond_1de

    .line 2178
    const/4 v8, 0x1

    .line 2179
    .local v8, "isPhoneRun":Z
    const/4 v11, 0x0

    .local v11, "simSlot":I
    :goto_188
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1a3

    .line 2180
    const-string v18, "phone"

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    if-nez v18, :cond_20f

    .line 2181
    const/4 v8, 0x0

    .line 2186
    :cond_1a3
    if-eqz v8, :cond_1de

    .line 2188
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1cd

    .line 2189
    const-string v18, "persist.sys.datacross"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2190
    .local v4, "crossSimSlot":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_1cd

    .line 2191
    const-string v18, "persist.sys.dataprefer.simid"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2193
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/ConnectivityService;->switchDataNetworkForMMS(I)V

    .line 2194
    const-string v18, "ansik stopUsingNetworkFeature: for MMS"

    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2198
    .end local v4    # "crossSimSlot":I
    :cond_1cd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->anyMoreMmsNetRequesters()Z

    move-result v18

    if-nez v18, :cond_1de

    .line 2199
    const-string v18, "persist.data.mms.busy"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    .end local v8    # "isPhoneRun":Z
    .end local v11    # "simSlot":I
    :cond_1de
    const/16 v18, 0x1

    goto/16 :goto_45

    .line 2163
    :cond_1e2
    :try_start_1e2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "stopUsingNetworkFeature: net "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not a known feature - dropping"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_1e2 .. :try_end_20d} :catchall_5b

    goto/16 :goto_155

    .line 2179
    .restart local v8    # "isPhoneRun":Z
    .restart local v11    # "simSlot":I
    :cond_20f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_188

    .line 2206
    .end local v8    # "isPhoneRun":Z
    .end local v11    # "simSlot":I
    :cond_213
    const/16 v18, -0x1

    goto/16 :goto_45
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .registers 4
    .param p1, "netTracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    const/4 v0, 0x1

    .line 1259
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1260
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1263
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private throwIfLockdownEnabled()V
    .registers 3

    .prologue
    .line 6329
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_c

    .line 6330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6332
    :cond_c
    return-void
.end method

.method private tryFailover(I)V
    .registers 10
    .param p1, "prevNetType"    # I

    .prologue
    const/16 v7, 0x1a

    const/4 v6, -0x1

    .line 3110
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 3111
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_2a

    .line 3113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryFailover: set mActiveDefaultNetwork=-1, prevNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3115
    iput v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3123
    :cond_2a
    const/4 v3, -0x1

    .line 3124
    .local v3, "currentPriority":I
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v6, :cond_3f

    .line 3125
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v3, v4, Landroid/net/NetworkConfig;->priority:I

    .line 3143
    :cond_37
    const/4 v2, 0x0

    .local v2, "checkType":I
    :goto_38
    if-gt v2, v7, :cond_cf

    .line 3144
    if-ne v2, p1, :cond_7a

    .line 3143
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 3127
    .end local v2    # "checkType":I
    :cond_3f
    const/4 v2, 0x0

    .restart local v2    # "checkType":I
    :goto_40
    if-gt v2, v7, :cond_37

    .line 3128
    if-ne v2, p1, :cond_47

    .line 3127
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 3129
    :cond_47
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    if-eqz v4, :cond_44

    .line 3130
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 3131
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_44

    .line 3132
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/net/NetworkConfig;->priority:I

    if-gt v3, v4, :cond_44

    .line 3134
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 3135
    .local v1, "checkTracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3136
    .local v0, "checkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 3137
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v3, v4, Landroid/net/NetworkConfig;->priority:I

    goto :goto_44

    .line 3145
    .end local v0    # "checkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    :cond_7a
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3c

    .line 3146
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3147
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3c

    .line 3161
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/net/NetworkConfig;->priority:I

    if-gt v3, v4, :cond_3c

    .line 3163
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 3164
    .restart local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3171
    .restart local v0    # "checkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 3172
    :cond_ac
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3173
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 3203
    :cond_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 3206
    .end local v0    # "checkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "checkTracker":Landroid/net/NetworkStateTracker;
    .end local v2    # "checkType":I
    .end local v3    # "currentPriority":I
    :cond_cf
    return-void
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .registers 16
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p4, "domains"    # Ljava/lang/String;
    .param p5, "defaultDns"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4252
    .local p3, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v6, 0x0

    .line 4255
    .local v6, "last":I
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/data/com.test.LTEfunctionality/files/blockdns"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4256
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 4258
    const-string v8, "net.dns1"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    const-string v8, "net.dns2"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    const-string v8, "adding dns null for IOT TEST (block dns)"

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4265
    :cond_21
    const-string v8, "KDI"

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 4266
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_65

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v8, :cond_65

    .line 4267
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4268
    .restart local p3    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {p3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no dns provided for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4276
    :cond_65
    :try_start_65
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p2, v9, p4}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4277
    if-eqz p5, :cond_75

    .line 4278
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 4291
    :cond_75
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4292
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    .line 4293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4294
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4295
    .local v7, "value":Ljava/lang/String;
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a1} :catch_a2

    goto :goto_79

    .line 4304
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_a2
    move-exception v1

    .line 4305
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception setting default dns interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4307
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b9
    return-void

    .line 4297
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_ba
    add-int/lit8 v3, v6, 0x1

    .local v3, "i":I
    :goto_bc
    :try_start_bc
    iget v8, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v3, v8, :cond_db

    .line 4298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4299
    .restart local v5    # "key":Ljava/lang/String;
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 4303
    .end local v5    # "key":Ljava/lang/String;
    :cond_db
    iput v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_dd} :catch_a2

    goto :goto_b9
.end method

.method private updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V
    .registers 8
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 4123
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 4124
    .local v1, "iface":Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 4126
    .local v2, "mtu":I
    const/16 v3, 0x44

    if-lt v2, v3, :cond_18

    const/16 v3, 0x2710

    if-le v2, v3, :cond_2f

    .line 4127
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4137
    :goto_2e
    return-void

    .line 4133
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_2e

    .line 4134
    :catch_35
    move-exception v0

    .line 4135
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .registers 5
    .param p1, "nt"    # Landroid/net/NetworkStateTracker;

    .prologue
    .line 4145
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 4146
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_1d

    const/4 v0, 0x0

    .line 4148
    .local v0, "bufferSizes":Ljava/lang/String;
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4152
    const-string v1, "net.tcp.buffersize.default"

    .line 4153
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4157
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 4162
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 4164
    :cond_1c
    return-void

    .line 4146
    .end local v0    # "bufferSizes":Ljava/lang/String;
    :cond_1d
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZZ)Z
    .registers 19
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "isLinkDefault"    # Z
    .param p4, "exempt"    # Z

    .prologue
    .line 3956
    const/4 v10, 0x0

    .line 3957
    .local v10, "routesToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v1, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v1}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 3958
    .local v1, "dnsDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v8, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v8}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 3959
    .local v8, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_53

    .line 3961
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v8

    .line 3962
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v1

    .line 3968
    :cond_19
    :goto_19
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_29

    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_62

    :cond_29
    const/4 v9, 0x1

    .line 3970
    .local v9, "routesChanged":Z
    :goto_2a
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 3971
    .local v7, "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_44

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_4a

    .line 3973
    :cond_44
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 3975
    :cond_4a
    if-nez p3, :cond_30

    .line 3977
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_30

    .line 3963
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "r":Landroid/net/RouteInfo;
    .end local v9    # "routesChanged":Z
    :cond_53
    if-eqz p1, :cond_19

    .line 3964
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 3965
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_19

    .line 3968
    :cond_62
    const/4 v9, 0x0

    goto :goto_2a

    .line 3981
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "routesChanged":Z
    :cond_64
    if-nez p3, :cond_d0

    .line 3983
    if-eqz v9, :cond_a0

    .line 3985
    if-eqz p2, :cond_84

    .line 3986
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 3987
    .local v6, "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_72

    .line 3990
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_84
    if-eqz p1, :cond_d0

    .line 3991
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3992
    .local v5, "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_8e

    .line 3997
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_a0
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 3998
    .restart local v6    # "oldDns":Ljava/net/InetAddress;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_a6

    .line 4000
    .end local v6    # "oldDns":Ljava/net/InetAddress;
    :cond_b8
    iget-object v11, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 4001
    .restart local v5    # "newDns":Ljava/net/InetAddress;
    move/from16 v0, p4

    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_be

    .line 4006
    .end local v5    # "newDns":Ljava/net/InetAddress;
    :cond_d0
    iget-object v11, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 4007
    .restart local v7    # "r":Landroid/net/RouteInfo;
    if-nez p3, :cond_ea

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_f1

    .line 4008
    :cond_ea
    const/4 v11, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v11, v0}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    goto :goto_d6

    .line 4011
    :cond_f1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, p1, v7, v11, v12}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    .line 4015
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 4016
    .local v4, "ifaceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4017
    :try_start_fd
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_110

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v11, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_108
    .catchall {:try_start_fd .. :try_end_108} :catchall_112

    move-result v11

    if-nez v11, :cond_110

    .line 4020
    :try_start_10b
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v4, v7}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_110} :catch_115
    .catchall {:try_start_10b .. :try_end_110} :catchall_112

    .line 4026
    :cond_110
    :goto_110
    :try_start_110
    monitor-exit v12

    goto :goto_d6

    :catchall_112
    move-exception v11

    monitor-exit v12
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_112

    throw v11

    .line 4021
    :catch_115
    move-exception v2

    .line 4023
    .local v2, "e":Ljava/lang/Exception;
    :try_start_116
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception trying to remove a route: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_116 .. :try_end_12c} :catchall_112

    goto :goto_110

    .line 4030
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "ifaceName":Ljava/lang/String;
    .end local v7    # "r":Landroid/net/RouteInfo;
    :cond_12d
    return v9
.end method

.method private updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 18
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "netType"    # I

    .prologue
    .line 4054
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkSourceRouteCondition(I)Z

    move-result v10

    if-nez v10, :cond_f

    .line 4055
    const-string/jumbo v10, "updateSourceRoutes : no source routing conditions"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4115
    :cond_e
    return-void

    .line 4059
    :cond_f
    new-instance v7, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v7}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4060
    .local v7, "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_64

    .line 4061
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 4066
    :cond_1c
    :goto_1c
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    aget-object v9, v10, p3

    .line 4069
    .local v9, "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_6d

    .line 4070
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 4073
    .local v6, "la":Landroid/net/LinkAddress;
    :try_start_3a
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4b} :catch_4c

    goto :goto_2e

    .line 4074
    :catch_4c
    move-exception v1

    .line 4075
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to remove src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2e

    .line 4062
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "la":Landroid/net/LinkAddress;
    .end local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_64
    if-eqz p1, :cond_1c

    .line 4063
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v10

    iput-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_1c

    .line 4080
    .restart local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_6d
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_e

    .line 4081
    const/4 v2, 0x0

    .local v2, "gw4Addr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 4082
    .local v3, "gw6Addr":Ljava/net/InetAddress;
    if-eqz p1, :cond_e

    .line 4083
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 4084
    .local v5, "ifaceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 4085
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 4086
    .local v8, "r":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_a4

    .line 4087
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_8b

    .line 4089
    :cond_a4
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_8b

    .line 4092
    .end local v8    # "r":Landroid/net/RouteInfo;
    :cond_a9
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_af
    :goto_af
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 4094
    .restart local v6    # "la":Landroid/net/LinkAddress;
    :try_start_bb
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_f3

    .line 4096
    if-eqz v2, :cond_af

    .line 4097
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_da} :catch_db

    goto :goto_af

    .line 4107
    :catch_db
    move-exception v1

    .line 4109
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to add src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_af

    .line 4102
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f3
    if-eqz v3, :cond_af

    .line 4103
    :try_start_f5
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_10a} :catch_db

    goto :goto_af
.end method


# virtual methods
.method public ResetCwDefaultService(Ljava/lang/String;)V
    .registers 2
    .param p1, "strCWInterfaceName"    # Ljava/lang/String;

    .prologue
    .line 4499
    return-void
.end method

.method public SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "strInterfaceName"    # Ljava/lang/String;
    .param p2, "strWagIPAddr"    # Ljava/lang/String;
    .param p3, "nWagDestPort"    # I
    .param p4, "strWagSignalingIPAddr"    # Ljava/lang/String;

    .prologue
    .line 4494
    return-void
.end method

.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3678
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckComplete: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3680
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3681
    return-void
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 3686
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckCompleted: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->captivePortalCheckCompleted(Z)V

    .line 3689
    return-void
.end method

.method public checkMobileProvisioning(I)I
    .registers 12
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 6442
    const/4 v3, -0x1

    .line 6443
    .local v3, "timeOutMs":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: E suggestedTimeOutMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6444
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6448
    .local v4, "token":J
    move v3, p1

    .line 6449
    const v6, 0xea60

    if-le p1, v6, :cond_27

    .line 6450
    const v3, 0xea60

    .line 6454
    :cond_27
    const/4 v6, 0x0

    :try_start_28
    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_43

    .line 6456
    :cond_35
    const-string v6, "checkMobileProvisioning: X no mobile network"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_99

    .line 6526
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6527
    const-string v6, "checkMobileProvisioning: X"

    :goto_3f
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6529
    return v3

    .line 6462
    :cond_43
    :try_start_43
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 6463
    const-string v6, "checkMobileProvisioning: X already checking ignore for the moment"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_99

    .line 6526
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6527
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_3f

    .line 6468
    :cond_57
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_5b
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6470
    new-instance v1, Lcom/android/server/ConnectivityService$CheckMp;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, p0}, Lcom/android/server/ConnectivityService$CheckMp;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V

    .line 6471
    .local v1, "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    new-instance v0, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    .line 6521
    .local v0, "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    new-instance v2, Lcom/android/server/ConnectivityService$CheckMp$Params;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$CheckMp;->getDefaultUrl()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;-><init>(Ljava/lang/String;JLcom/android/server/ConnectivityService$CheckMp$CallBack;)V

    .line 6523
    .local v2, "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6524
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/server/ConnectivityService$CheckMp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_93
    .catchall {:try_start_5b .. :try_end_93} :catchall_99

    .line 6526
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6527
    const-string v6, "checkMobileProvisioning: X"

    goto :goto_3f

    .line 6526
    .end local v0    # "cb":Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    .end local v1    # "checkMp":Lcom/android/server/ConnectivityService$CheckMp;
    .end local v2    # "params":Lcom/android/server/ConnectivityService$CheckMp$Params;
    :catchall_99
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6527
    const-string v7, "checkMobileProvisioning: X"

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6526
    throw v6
.end method

.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 5187
    move v0, p1

    .line 5189
    .local v0, "usedNetworkType":I
    if-nez p1, :cond_a0

    .line 5190
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5191
    const/4 v0, 0x2

    .line 5232
    :goto_c
    return v0

    .line 5192
    :cond_d
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5193
    const/4 v0, 0x3

    goto :goto_c

    .line 5194
    :cond_17
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5196
    :cond_27
    const/4 v0, 0x4

    goto :goto_c

    .line 5197
    :cond_29
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5198
    const/4 v0, 0x5

    goto :goto_c

    .line 5199
    :cond_33
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5200
    const/16 v0, 0xa

    goto :goto_c

    .line 5201
    :cond_3e
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 5202
    const/16 v0, 0xb

    goto :goto_c

    .line 5203
    :cond_49
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 5204
    const/16 v0, 0xc

    goto :goto_c

    .line 5206
    :cond_54
    const-string v1, "enableCMDM"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 5207
    const/16 v0, 0x14

    goto :goto_c

    .line 5208
    :cond_5f
    const-string v1, "enableCMMAIL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 5209
    const/16 v0, 0x15

    goto :goto_c

    .line 5210
    :cond_6a
    const-string v1, "enableWAP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 5211
    const/16 v0, 0x16

    goto :goto_c

    .line 5212
    :cond_75
    const-string v1, "enableBIP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5213
    const/16 v0, 0x17

    goto :goto_c

    .line 5215
    :cond_80
    const-string v1, "enable800APN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 5216
    const/16 v0, 0x18

    goto :goto_c

    .line 5217
    :cond_8b
    const-string v1, "enableMMS2"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 5218
    const/16 v0, 0x1a

    goto/16 :goto_c

    .line 5221
    :cond_97
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5223
    :cond_a0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b8

    .line 5224
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 5225
    const/16 v0, 0xd

    goto/16 :goto_c

    .line 5227
    :cond_af
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5230
    :cond_b8
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method public declared-synchronized createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 5435
    monitor-enter p0

    :try_start_2
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    if-eqz p1, :cond_1e

    if-nez p2, :cond_28

    .line 5437
    :cond_1e
    const-string v1, "ConnectivityService"

    const-string v2, "Package Name or Profile Name passed is null in createEnterpriseVpn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_9b

    move v1, v8

    .line 5459
    :goto_26
    monitor-exit p0

    return v1

    .line 5441
    :cond_28
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 5442
    .local v5, "user":I
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpnCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V

    .line 5443
    .local v0, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 5444
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 5445
    .local v7, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-nez v7, :cond_51

    .line 5446
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5448
    .restart local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_51
    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5449
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5450
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: Storing obj for user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    const/4 v1, 0x1

    goto :goto_26

    .line 5452
    .end local v7    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_73
    const-string v1, "ConnectivityService"

    const-string v2, " createEnterpriseVpn : Profile exists with same name. Cannot create a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7a} :catch_7c
    .catchall {:try_start_28 .. :try_end_7a} :catchall_9b

    move v1, v8

    .line 5453
    goto :goto_26

    .line 5455
    .end local v0    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "user":I
    :catch_7c
    move-exception v6

    .line 5456
    .local v6, "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_9b

    move v1, v8

    .line 5457
    goto :goto_26

    .line 5435
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_9b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "isConnectedProfile"    # Z

    .prologue
    .line 5884
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5885
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5886
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result v2

    monitor-exit p0

    return v2

    .line 5884
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disconnectSystemVpn(I)V
    .registers 8
    .param p1, "user"    # I

    .prologue
    .line 6027
    monitor-enter p0

    :try_start_1
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectSystemVpn: user going to be removed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6028
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6029
    .local v2, "systemVPNProfile":Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectSystemVpn: systemVPNProfile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    if-eqz v2, :cond_83

    .line 6031
    const-string v3, "ConnectivityService"

    const-string v4, "disconnect is called from disconnectSystemVpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6033
    .local v1, "callingUid":I
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The callingUid value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6034
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6035
    .local v0, "callingApp":Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The callingApp value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_85

    .line 6038
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :cond_83
    monitor-exit p0

    return-void

    .line 6027
    .end local v2    # "systemVPNProfile":Ljava/lang/String;
    :catchall_85
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4408
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4409
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3c

    .line 4412
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4486
    :goto_3b
    return-void

    .line 4419
    :cond_3c
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4420
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v12, v12

    if-ge v2, v12, :cond_b0

    .line 4421
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v12, v2

    .line 4422
    .local v7, "nst":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_ad

    .line 4423
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkStateTracker for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4425
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_96

    .line 4426
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active network: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4429
    :cond_96
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4430
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4431
    invoke-virtual {v10, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4432
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4433
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4420
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 4437
    .end local v7    # "nst":Landroid/net/NetworkStateTracker;
    :cond_b0
    const-string v12, "Network Requester Pids:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4438
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4439
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_bd
    if-ge v4, v5, :cond_10b

    aget v6, v1, v4

    .line 4440
    .local v6, "net":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4441
    .local v9, "pidString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v6

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 4442
    .local v8, "pid":Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_dc

    .line 4444
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_104
    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4439
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_bd

    .line 4446
    .end local v6    # "net":I
    .end local v9    # "pidString":Ljava/lang/String;
    :cond_10b
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4447
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4449
    const-string v12, "FeatureUsers:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4451
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_11f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_133

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 4452
    .local v11, "requester":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11f

    .line 4454
    .end local v11    # "requester":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_133
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4455
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4457
    monitor-enter p0

    .line 4458
    :try_start_13a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_1a7

    const-string v12, ""

    :goto_14f
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "held."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4460
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "It was last requested for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4461
    monitor-exit p0
    :try_end_179
    .catchall {:try_start_13a .. :try_end_179} :catchall_1aa

    .line 4462
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4464
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p3

    invoke-virtual {v12, p1, v10, v0}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4466
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v12, :cond_1b0

    .line 4467
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4468
    const-string v12, "Inet condition reports:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4469
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4470
    const/4 v2, 0x0

    :goto_193
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_1ad

    .line 4471
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4470
    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    .line 4458
    :cond_1a7
    :try_start_1a7
    const-string v12, "not "

    goto :goto_14f

    .line 4461
    :catchall_1aa
    move-exception v12

    monitor-exit p0
    :try_end_1ac
    .catchall {:try_start_1a7 .. :try_end_1ac} :catchall_1aa

    throw v12

    .line 4473
    :cond_1ad
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4478
    :cond_1b0
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4479
    const-string v12, "Network Preference:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4481
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    if-eqz v12, :cond_1c4

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4482
    :cond_1c4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mActiveDefaultNetwork: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4484
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto/16 :goto_3b
.end method

.method public declared-synchronized establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5565
    monitor-enter p0

    if-eqz p1, :cond_6

    if-nez p2, :cond_10

    .line 5566
    :cond_6
    :try_start_6
    const-string v6, "ConnectivityService"

    const-string v8, "Config or Profile Name passed is null in establishEnterpriseVpn"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_108

    move-object v4, v7

    .line 5616
    :goto_e
    monitor-exit p0

    return-object v4

    .line 5569
    :cond_10
    :try_start_10
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "establishEnterpriseVpn : user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_108

    .line 5571
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 5572
    .local v5, "user":I
    const/4 v3, 0x0

    .line 5573
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_ee

    .line 5574
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5580
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :goto_53
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v6, :cond_7a

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7a

    .line 5581
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 5582
    .local v1, "callingApp":Ljava/lang/String;
    const-string v6, "com.mocana.vpn.android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 5583
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5589
    .end local v1    # "callingApp":Ljava/lang/String;
    :cond_7a
    if-eqz v3, :cond_10b

    .line 5591
    iput-object p2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5592
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 5593
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_b4

    .line 5596
    iget v6, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/ConnectivityService;->numberOfConnectedProfile:I

    .line 5597
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v6, :cond_96

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b4

    .line 5598
    :cond_96
    invoke-virtual {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5599
    .local v0, "callerName":Ljava/lang/String;
    const-string v6, "com.mocana.vpn.android"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 5600
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/ConnectivityService;->setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5603
    :cond_a9
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/ConnectivityService;->sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5605
    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, Lcom/android/server/ConnectivityService;->sendInterfaceNameToKnoxVpn(Ljava/lang/String;I)V

    .line 5608
    .end local v0    # "callerName":Ljava/lang/String;
    :cond_b4
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "establishEnterpriseVpn : Returning fd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_cc} :catch_ce
    .catchall {:try_start_34 .. :try_end_cc} :catchall_108

    goto/16 :goto_e

    .line 5614
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "user":I
    :catch_ce
    move-exception v2

    .line 5615
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cf
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_cf .. :try_end_eb} :catchall_108

    move-object v4, v7

    .line 5616
    goto/16 :goto_e

    .line 5576
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v5    # "user":I
    :cond_ee
    :try_start_ee
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find enterpriseVpn object in hashmap : user = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_106} :catch_ce
    .catchall {:try_start_ee .. :try_end_106} :catchall_108

    goto/16 :goto_53

    .line 5565
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "user":I
    :catchall_108
    move-exception v6

    monitor-exit p0

    throw v6

    .line 5611
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v5    # "user":I
    :cond_10b
    :try_start_10b
    const-string v6, "ConnectivityService"

    const-string v8, "establishEnterpriseVpn : Returning fd = null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_112} :catch_ce
    .catchall {:try_start_10b .. :try_end_112} :catchall_108

    move-object v4, v7

    .line 5612
    goto/16 :goto_e
.end method

.method public declared-synchronized establishEnterpriseVpnIS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 5636
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_50

    move-result-wide v1

    .line 5638
    .local v1, "token":J
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5639
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5640
    const-string v3, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5641
    const-string v3, "extra_profile_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5642
    const-string v3, "extra_tun_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5643
    const-string v3, "extra_state"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5644
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceNameToKnoxVpn (IS) :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4b

    .line 5648
    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_50

    .line 5650
    monitor-exit p0

    return-void

    .line 5648
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 5636
    .end local v1    # "token":J
    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 5387
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5388
    const-string v8, "ConnectivityService"

    const-string v9, "establishVpn called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5390
    .local v7, "user":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5391
    .local v6, "transformedVendorName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5392
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 5393
    .local v2, "callingApp":Ljava/lang/String;
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 5394
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    if-eqz v8, :cond_ce

    .line 5397
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5398
    .local v1, "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeProfiles = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tv = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    const/4 v0, 0x0

    .line 5400
    .local v0, "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v1, :cond_be

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_be

    .line 5401
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeProfiles length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 5403
    .restart local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v0, :cond_be

    .line 5404
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeAnyConnectProfile not null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 5409
    :cond_be
    if-eqz v0, :cond_ce

    .line 5410
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v5

    .line 5411
    .local v5, "profileType":I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_ce

    .line 5412
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_ce} :catch_df

    .line 5420
    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    .end local v1    # "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "profileType":I
    :cond_ce
    :goto_ce
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v9

    .line 5421
    :try_start_d1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 5422
    monitor-exit v9
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_fd

    .line 5423
    return-object v4

    .line 5415
    :catch_df
    move-exception v3

    .line 5416
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 5422
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_fd
    move-exception v8

    :try_start_fe
    monitor-exit v9
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v8
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 6344
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6355
    :cond_a
    :goto_a
    return v5

    .line 6347
    :cond_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v2, :cond_a

    aget-object v4, v0, v1

    .line 6348
    .local v4, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_2e

    .line 6349
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 6350
    .local v3, "lp":Landroid/net/LinkProperties;
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 6351
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    goto :goto_a

    .line 6347
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .prologue
    .line 1494
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .registers 3

    .prologue
    .line 7367
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7369
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7370
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 7372
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1318
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1376
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1364
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1365
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v1, v2

    .line 1366
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_18

    .line 1367
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1370
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 5

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1545
    .local v1, "token":J
    :try_start_7
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1c

    move-result-object v0

    .line 1546
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_1a

    .line 1548
    :try_start_f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_1c

    move-result-object v3

    .line 1554
    :goto_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1552
    return-object v3

    .line 1549
    :catch_19
    move-exception v3

    .line 1552
    :cond_1a
    const/4 v3, 0x0

    goto :goto_15

    .line 1554
    .end local v0    # "state":Landroid/net/NetworkState;
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .registers 8

    .prologue
    .line 7378
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7379
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 7380
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkQualityInfo;>;"
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_1d

    aget-object v5, v0, v1

    .line 7381
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1a

    .line 7382
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v3

    .line 7383
    .local v3, "li":Landroid/net/LinkQualityInfo;
    if-eqz v3, :cond_1a

    .line 7384
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7380
    .end local v3    # "li":Landroid/net/LinkQualityInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 7389
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/LinkQualityInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkQualityInfo;

    return-object v6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 13

    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1421
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1422
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1423
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v2, :cond_6a

    aget-object v5, v0, v1

    .line 1424
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_54

    .line 1426
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 1427
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_57

    .line 1428
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1429
    .local v7, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v8

    if-nez v8, :cond_3b

    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v8, :cond_57

    .line 1430
    :cond_3b
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1431
    .local v3, "mInfo":Landroid/net/NetworkInfo;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8, v10, v11}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    .end local v3    # "mInfo":Landroid/net/NetworkInfo;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1436
    :cond_57
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1442
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :catchall_5f
    move-exception v8

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_5f

    throw v8

    .line 1439
    .restart local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_62
    :try_start_62
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1442
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_5f

    .line 1443
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/NetworkInfo;

    return-object v8
.end method

.method public getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    .registers 13

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1451
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1452
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1453
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v2, :cond_6a

    aget-object v5, v0, v1

    .line 1454
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_54

    .line 1456
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkRelatedFeature()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 1457
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_57

    .line 1458
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1459
    .local v7, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->checkCondition(Landroid/net/NetworkInfo;)Z

    move-result v8

    if-nez v8, :cond_3b

    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->bIsFailOverToMobile:Z

    if-eqz v8, :cond_57

    .line 1460
    :cond_3b
    new-instance v3, Landroid/net/NetworkInfo;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1461
    .local v3, "mInfo":Landroid/net/NetworkInfo;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8, v10, v11}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v3    # "mInfo":Landroid/net/NetworkInfo;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1466
    :cond_57
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1472
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :catchall_5f
    move-exception v8

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_5f

    throw v8

    .line 1469
    .restart local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_62
    :try_start_62
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1472
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_5f

    .line 1473
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/NetworkInfo;

    return-object v8
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 12

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1514
    .local v6, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1515
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1516
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_12
    if-ge v1, v3, :cond_2f

    aget-object v5, v0, v1

    .line 1517
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_2c

    .line 1518
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1519
    .local v2, "info":Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1523
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_3d

    .line 1524
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 1523
    .end local v0    # "arr$":[Landroid/net/NetworkStateTracker;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_3d
    move-exception v7

    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v7
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 7241
    const-string v4, "ConnectivityService"

    const-string v6, "getDhcpServerConfiguration()"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7242
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7243
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v3}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 7245
    .local v3, "serverConfig":Landroid/net/DhcpServerConfiguration;
    :try_start_13
    const-string/jumbo v4, "wifiap_local_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 7246
    const-string/jumbo v4, "wifiap_subnet_mask"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 7247
    const-string/jumbo v4, "wifiap_dhcp_enable"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_56

    move v4, v5

    :goto_2f
    iput-boolean v4, v3, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 7248
    const-string/jumbo v4, "wifiap_dhcp_start_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 7249
    const-string/jumbo v4, "wifiap_dhcp_end_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 7250
    const-string/jumbo v4, "wifiap_dhcp_lease_time"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 7251
    const-string/jumbo v4, "wifiap_dhcp_max_user"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->maxClient:I
    :try_end_55
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_55} :catch_58

    .line 7267
    .end local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :goto_55
    return-object v3

    .line 7247
    .restart local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :cond_56
    const/4 v4, 0x0

    goto :goto_2f

    .line 7254
    :catch_58
    move-exception v2

    .line 7255
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "ConnectivityService"

    const-string v6, "getWifiApProfileConfiguration AP settings not found, returning"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7256
    new-instance v1, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v1}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 7258
    .local v1, "defaultServerConfig":Landroid/net/DhcpServerConfiguration;
    const-string v4, "192.168.1.1"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 7259
    const-string v4, "255.255.255.0"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 7260
    iput-boolean v5, v1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 7261
    const-string v4, "192.168.1.100"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 7262
    const-string v4, "192.168.1.254"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 7263
    const/16 v4, 0x5a

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 7264
    const/16 v4, 0x64

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 7266
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-object v3, v1

    .line 7267
    goto :goto_55
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 5092
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5093
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 5094
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5854
    if-nez p1, :cond_c

    .line 5855
    const-string v3, "ConnectivityService"

    const-string v5, "Profile Name passed is null in getInterfaceName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5872
    :goto_b
    return-object v3

    .line 5859
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5860
    .local v2, "user":I
    const/4 v1, 0x0

    .line 5861
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 5862
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5864
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_2b
    if-eqz v1, :cond_32

    .line 5865
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_34

    move-result-object v3

    goto :goto_b

    :cond_32
    move-object v3, v4

    .line 5868
    goto :goto_b

    .line 5870
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "user":I
    :catch_34
    move-exception v0

    .line 5871
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5872
    goto :goto_b
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4786
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4788
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4789
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 4791
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    .prologue
    .line 6068
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 6069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6070
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6071
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 6072
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1501
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1502
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1503
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_14

    .line 1504
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1507
    .end local v0    # "tracker":Landroid/net/NetworkStateTracker;
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 7356
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 7358
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7359
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 7361
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getMobileDataEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2582
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2583
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_36

    move v0, v1

    .line 2586
    .local v0, "retVal":Z
    :goto_14
    const-string v3, "KOR"

    const-string v4, "USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2587
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2588
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_38

    move v0, v1

    .line 2593
    :cond_35
    :goto_35
    return v0

    .end local v0    # "retVal":Z
    :cond_36
    move v0, v2

    .line 2583
    goto :goto_14

    .restart local v0    # "retVal":Z
    :cond_38
    move v0, v2

    .line 2588
    goto :goto_35
.end method

.method public getMobileDataEnabledEx(I)Z
    .registers 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2601
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2602
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3e

    move v0, v1

    .line 2611
    .local v0, "retVal":Z
    :goto_18
    const-string v3, "KOR"

    const-string v4, "USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2612
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2613
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_40

    move v0, v1

    .line 2618
    :cond_3d
    :goto_3d
    return v0

    .end local v0    # "retVal":Z
    :cond_3e
    move v0, v2

    .line 2602
    goto :goto_18

    .restart local v0    # "retVal":Z
    :cond_40
    move v0, v2

    .line 2613
    goto :goto_3d
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 7209
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7210
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 7211
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 7212
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7218
    :goto_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 7219
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 7220
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 7221
    const-string v0, "0000000000"

    .line 7223
    :cond_45
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7229
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_60
    return-object v1

    .line 7215
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7199
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7200
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 7201
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 7202
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7204
    :cond_1b
    return-object v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1383
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1188
    monitor-enter p0

    .line 1189
    :try_start_4
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 1190
    .local v0, "preference":I
    monitor-exit p0

    .line 1191
    return v0

    .line 1190
    .end local v0    # "preference":I
    :catchall_8
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1352
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1353
    .local v0, "provNi":Landroid/net/NetworkInfo;
    if-nez v0, :cond_13

    .line 1354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1355
    .local v1, "uid":I
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1357
    .end local v1    # "uid":I
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisioningOrActiveNetworkInfo: X provNi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1358
    return-object v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .registers 4

    .prologue
    .line 5007
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5008
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5009
    .local v0, "ret":Landroid/net/ProxyProperties;
    if-nez v0, :cond_d

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v1, :cond_d

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5010
    :cond_d
    monitor-exit v2

    return-object v0

    .line 5011
    .end local v0    # "ret":Landroid/net/ProxyProperties;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4823
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4824
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4825
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4827
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4853
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4854
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4797
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4798
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4807
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4809
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4814
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4815
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4816
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4818
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4858
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4859
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 4863
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4864
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 7

    .prologue
    .line 6083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6084
    .local v0, "user":I
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnConfig > user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6087
    :try_start_23
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 6088
    .local v1, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-nez v1, :cond_40

    .line 6089
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 6094
    :goto_3e
    monitor-exit v3

    return-object v1

    .line 6091
    :cond_40
    const-string v2, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVpnConfig > session : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 6095
    .end local v1    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :catchall_5b
    move-exception v2

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public isActiveNetworkMetered()Z
    .registers 4

    .prologue
    .line 1560
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1563
    .local v0, "token":J
    :try_start_7
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    move-result v2

    .line 1565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    return v2

    .line 1565
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isMobilePolicyDataEnable()Z
    .registers 4

    .prologue
    .line 7595
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7596
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 7597
    .local v0, "enabled":Z
    monitor-exit v2

    .line 7598
    return v0

    .line 7597
    .end local v0    # "enabled":Z
    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 1479
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1481
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isTetheringSupported()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4871
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 4872
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    move v0, v2

    .line 4873
    .local v0, "defaultVal":I
    :goto_15
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_70

    move v1, v3

    .line 4877
    .local v1, "tetherEnabledInSettings":Z
    :goto_25
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultVal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tetherEnabledInSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    if-eqz v1, :cond_72

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_64

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_64

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_72

    :cond_64
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_72

    :goto_6d
    return v3

    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_6e
    move v0, v3

    .line 4872
    goto :goto_15

    .restart local v0    # "defaultVal":I
    :cond_70
    move v1, v2

    .line 4873
    goto :goto_25

    .restart local v1    # "tetherEnabledInSettings":Z
    :cond_72
    move v3, v2

    .line 4886
    goto :goto_6d
.end method

.method public markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V
    .registers 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uid"    # I

    .prologue
    .line 5346
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceMarkNetworkSocketPermission()V

    .line 5347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5349
    .local v1, "token":J
    :try_start_7
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p2}, Landroid/os/INetworkManagementService;->getMarkForUid(I)I

    move-result v0

    .line 5351
    .local v0, "mark":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    .line 5352
    const/4 v0, 0x0

    .line 5354
    :cond_11
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->markSocket(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_21
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    .line 5357
    .end local v0    # "mark":I
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5359
    return-void

    .line 5357
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5355
    :catch_21
    move-exception v3

    goto :goto_18
.end method

.method public needFlushRoutes()Z
    .registers 2

    .prologue
    .line 7526
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->needMobileDataBlock()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onSwitchDataNetworkCallback(IZ)V
    .registers 11
    .param p1, "simSlot"    # I
    .param p2, "success"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1997
    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v2

    .line 1998
    .local v2, "logicalSim":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_22

    .line 1999
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "simcard don\'t have"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v2, 0x1

    .line 2003
    :cond_22
    if-eqz p2, :cond_67

    .line 2004
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2006
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2010
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 2011
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v7

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v3

    .line 2013
    .local v3, "reconnect_result":Z
    if-nez v3, :cond_66

    .line 2014
    const-string v4, "ConnectivityService"

    const-string v5, "onSwitchToSim1DataNetworkCallback re-connection failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_RECONNECTION_FAIL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2017
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2026
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "reconnect_result":Z
    :cond_66
    :goto_66
    return-void

    .line 2021
    :cond_67
    const-string v4, "ConnectivityService"

    const-string v5, "onSwitchToSim1DataNetworkCallback switch failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2023
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2024
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_66
.end method

.method public onSwitchToSim1DataNetworkCallback(Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    .line 1993
    return-void
.end method

.method public onSwitchToSim2DataNetworkCallback(Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    .line 1992
    return-void
.end method

.method public declared-synchronized prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 13
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "type"    # Z
    .param p5, "isConnecting"    # Z

    .prologue
    .line 5479
    monitor-enter p0

    :try_start_1
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEnterpriseVpn : profile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  :isConnecting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    const/4 v2, 0x1

    .line 5481
    .local v2, "returnVal":Z
    if-eqz p5, :cond_67

    .line 5482
    const/4 v4, 0x1

    if-ne p4, v4, :cond_62

    .line 5483
    const-string v4, "ConnectivityService"

    const-string v5, "prepareEnterpriseVpn : System VPN. Calling prepare"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5486
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getVpnType()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 5487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 5489
    :cond_54
    invoke-virtual {p0, p1, p3}, Lcom/android/server/ConnectivityService;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 5490
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_7a

    :cond_5f
    move v4, v2

    .line 5501
    .end local v3    # "user":I
    :goto_60
    monitor-exit p0

    return v4

    .line 5494
    :cond_62
    :try_start_62
    invoke-virtual {p0, p1, p3}, Lcom/android/server/ConnectivityService;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_60

    .line 5497
    :cond_67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5498
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5499
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_78
    .catchall {:try_start_62 .. :try_end_78} :catchall_7a

    move-result v4

    goto :goto_60

    .line 5479
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v2    # "returnVal":Z
    :catchall_7a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 5297
    monitor-enter p0

    :try_start_2
    const-string v7, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepare is called by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5300
    .local v6, "user":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5301
    .local v1, "callingUid":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5302
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5303
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5304
    .local v2, "enterpriseSystemProfile":Ljava/lang/String;
    if-eqz v2, :cond_6a

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6a

    .line 5305
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 5306
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v3, :cond_86

    .line 5307
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ConnectivityService;->disconnect(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5313
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_6a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5316
    const-string v7, "com.mocana.vpn.android"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn;->getVpnType()Z
    :try_end_80
    .catchall {:try_start_2 .. :try_end_80} :catchall_9f

    move-result v7

    if-nez v7, :cond_8b

    move v7, v8

    .line 5339
    :goto_84
    monitor-exit p0

    return v7

    .line 5309
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_86
    :try_start_86
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    .line 5310
    goto :goto_84

    .line 5321
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_8b
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_9f

    .line 5339
    :try_start_8e
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    monitor-exit v8

    goto :goto_84

    .line 5341
    :catchall_9c
    move-exception v7

    monitor-exit v8
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v7
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    .line 5297
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v2    # "enterpriseSystemProfile":Ljava/lang/String;
    .end local v4    # "token":J
    .end local v6    # "user":I
    :catchall_9f
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public prepareVpnForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z
    .registers 6
    .param p1, "newPackage"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 5367
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5369
    .local v0, "user":I
    if-eqz v0, :cond_f

    .line 5370
    const/4 v1, 0x0

    .line 5374
    :goto_e
    return v1

    .line 5373
    :cond_f
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5374
    :try_start_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepareForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z

    move-result v1

    monitor-exit v2

    goto :goto_e

    .line 5375
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public declared-synchronized protectEnterpriseVpn(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .registers 13
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 5513
    monitor-enter p0

    :try_start_1
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectEnterpriseVpn : socket = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 5515
    .local v5, "type":I
    if-eqz p2, :cond_29

    if-nez p1, :cond_33

    .line 5516
    :cond_29
    const-string v7, "ConnectivityService"

    const-string v8, "Profile Name passed or socket created is null in protectEnterpriseVpn"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_118

    .line 5552
    :cond_30
    :goto_30
    const/4 v7, 0x0

    :goto_31
    monitor-exit p0

    return v7

    .line 5519
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_118

    move-result v6

    .line 5521
    .local v6, "user":I
    const/4 v3, 0x0

    .line 5522
    .local v3, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :try_start_3c
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_54

    .line 5523
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    move-object v3, v0

    .line 5527
    :cond_54
    invoke-static {v5}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v7

    if-eqz v7, :cond_30

    if-eqz v3, :cond_30

    .line 5529
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v5

    invoke-virtual {v7, v5, v8}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 5530
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectVpn : DefualtNetwork = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "clat4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5531
    const-string v7, "clat4"

    invoke-virtual {v3, p1, v7}, Lcom/android/server/connectivity/EnterpriseVpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5546
    :goto_93
    const/4 v7, 0x1

    goto :goto_31

    .line 5533
    :cond_95
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protectVpn : DefualtNetwork = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v9, v9, v5

    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5534
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 5535
    .local v1, "callingApp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v4

    .line 5536
    .local v4, "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    if-eqz v4, :cond_e2

    if-eqz v4, :cond_11b

    const/4 v7, 0x0

    invoke-interface {v4, v1, v7}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11b

    .line 5537
    :cond_e2
    const-string v7, "ConnectivityService"

    const-string v8, "No Chaining"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/android/server/connectivity/EnterpriseVpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_f8} :catch_f9
    .catchall {:try_start_3c .. :try_end_f8} :catchall_118

    goto :goto_93

    .line 5548
    .end local v1    # "callingApp":Ljava/lang/String;
    .end local v4    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :catch_f9
    move-exception v2

    .line 5549
    .local v2, "e":Ljava/lang/Exception;
    :try_start_fa
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_fa .. :try_end_116} :catchall_118

    goto/16 :goto_30

    .line 5513
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v5    # "type":I
    .end local v6    # "user":I
    :catchall_118
    move-exception v7

    monitor-exit p0

    throw v7

    .line 5540
    .restart local v1    # "callingApp":Ljava/lang/String;
    .restart local v3    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v4    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .restart local v5    # "type":I
    .restart local v6    # "user":I
    :cond_11b
    :try_start_11b
    const-string v7, "ConnectivityService"

    const-string v8, "Chaining enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_122} :catch_f9
    .catchall {:try_start_11b .. :try_end_122} :catchall_118

    goto/16 :goto_93
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .registers 10
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 5250
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5252
    :try_start_3
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 5253
    .local v2, "type":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5255
    .local v3, "user":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v4

    if-eqz v4, :cond_ea

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v2

    if-eqz v4, :cond_ea

    .line 5257
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_d0
    .catchall {:try_start_3 .. :try_end_1c} :catchall_de

    .line 5258
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v2

    invoke-virtual {v4, v2, v6}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 5259
    const-string v4, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protectVpn : DefualtNetwork = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "clat4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    const-string v6, "clat4"

    invoke-virtual {v4, p1, v6}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5273
    :goto_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_cd

    .line 5275
    const/4 v4, 0x1

    .line 5281
    :try_start_5d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_e7

    .line 5286
    .end local v2    # "type":I
    .end local v3    # "user":I
    :goto_60
    return v4

    .line 5262
    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :cond_61
    :try_start_61
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5263
    .local v0, "callingApp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    .line 5264
    .local v1, "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    if-eqz v1, :cond_7e

    if-eqz v1, :cond_d6

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d6

    .line 5265
    :cond_7e
    const-string v4, "ConnectivityService"

    const-string v6, "No chaining"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v2

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5271
    :goto_9c
    const-string v4, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protectVpn : DefualtNetwork = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v2

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 5273
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :catchall_cd
    move-exception v4

    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_61 .. :try_end_cf} :catchall_cd

    :try_start_cf
    throw v4
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d0} :catch_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_de

    .line 5277
    .end local v2    # "type":I
    .end local v3    # "user":I
    :catch_d0
    move-exception v4

    .line 5281
    :try_start_d1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_e3

    .line 5286
    :goto_d4
    const/4 v4, 0x0

    goto :goto_60

    .line 5268
    .restart local v0    # "callingApp":Ljava/lang/String;
    .restart local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :cond_d6
    :try_start_d6
    const-string v4, "ConnectivityService"

    const-string v6, "Chaining Enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_cd

    goto :goto_9c

    .line 5280
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "knoxVpnPolicy":Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .end local v2    # "type":I
    .end local v3    # "user":I
    :catchall_de
    move-exception v4

    .line 5281
    :try_start_df
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e5

    .line 5280
    :goto_e2
    throw v4

    .line 5282
    :catch_e3
    move-exception v4

    goto :goto_d4

    :catch_e5
    move-exception v5

    goto :goto_e2

    .restart local v2    # "type":I
    .restart local v3    # "user":I
    :catch_e7
    move-exception v5

    goto/16 :goto_60

    .line 5281
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_e3

    goto :goto_d4
.end method

.method public reportInetCondition(II)V
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 4914
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 4920
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4921
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_7a

    const-string v3, "connected"

    :goto_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4924
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4925
    :goto_69
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_7d

    .line 4926
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 4921
    .end local v1    # "s":Ljava/lang/String;
    :cond_7a
    const-string v3, "disconnected"

    goto :goto_30

    .line 4929
    .restart local v1    # "s":Ljava/lang/String;
    :cond_7d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4931
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 7
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 4897
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4898
    monitor-enter p0

    .line 4899
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    monitor-exit p0

    .line 4908
    :goto_d
    return-void

    .line 4900
    :cond_e
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 4901
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4902
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 4903
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_30

    .line 4904
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x8

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 4903
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public requestRouteToHost(IILjava/lang/String;)Z
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2306
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2308
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 2309
    const/4 v1, 0x0

    .line 2312
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public requestRouteToHostAddress(I[BLjava/lang/String;)Z
    .registers 19
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2326
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2327
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2328
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2333
    :cond_12
    :try_start_12
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_15} :catch_29

    move-result-object v1

    .line 2339
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_46

    .line 2340
    const/4 v3, 0x1

    .line 2355
    .local v3, "exempt":Z
    :goto_1f
    if-nez v3, :cond_71

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isAddressUnderVpn(Ljava/net/InetAddress;)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 2356
    const/4 v8, 0x0

    .line 2423
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v3    # "exempt":Z
    :goto_28
    return v8

    .line 2334
    :catch_29
    move-exception v2

    .line 2335
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRouteToHostAddress got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2336
    const/4 v8, 0x0

    goto :goto_28

    .line 2342
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "addr":Ljava/net/InetAddress;
    :cond_46
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2344
    :try_start_51
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2346
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget v12, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_60} :catch_68

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_66

    const/4 v3, 0x1

    .restart local v3    # "exempt":Z
    :goto_65
    goto :goto_1f

    .end local v3    # "exempt":Z
    :cond_66
    const/4 v3, 0x0

    goto :goto_65

    .line 2347
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_68
    move-exception v2

    .line 2348
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Failed to find calling package details"

    invoke-direct {v12, v13, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2362
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "exempt":Z
    :cond_71
    :try_start_71
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 2363
    .local v4, "inetAddress":Ljava/net/InetAddress;
    instance-of v12, v4, Ljava/net/Inet4Address;

    if-eqz v12, :cond_ad

    .line 2364
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 2365
    .local v6, "lp":Landroid/net/LinkProperties;
    if-eqz v6, :cond_ad

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->isIpv4Connected(Landroid/net/LinkProperties;)Z

    move-result v12

    if-nez v12, :cond_ad

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->isIpv6Connected(Landroid/net/LinkProperties;)Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 2367
    const-string v12, "requestRouteToHostAddress: skipped. ipv6 only!!"

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/net/UnknownHostException; {:try_start_71 .. :try_end_90} :catch_92

    .line 2369
    const/4 v8, 0x1

    goto :goto_28

    .line 2372
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "lp":Landroid/net/LinkProperties;
    :catch_92
    move-exception v2

    .line 2373
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRouteToHostAddress got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2379
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_ad
    const-string v12, "VZW"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fc

    .line 2380
    if-eqz p1, :cond_be

    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_11d

    :cond_be
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v13, 0xc

    aget-object v12, v12, v13

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11d

    .line 2384
    const/16 p1, 0xc

    .line 2386
    const-string v12, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "requestRouteToHost: Signed Application:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " using networkType"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_fc
    :goto_fc
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v12

    if-nez v12, :cond_126

    .line 2398
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2399
    const/4 v8, 0x0

    goto/16 :goto_28

    .line 2389
    :cond_11d
    const/16 v12, 0x2000

    move/from16 v0, p1

    if-ne v0, v12, :cond_fc

    .line 2391
    const/16 p1, 0x18

    goto :goto_fc

    .line 2401
    :cond_126
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v12, p1

    .line 2402
    .local v11, "tracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 2404
    .local v7, "netState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_142

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v12, :cond_13c

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v12, :cond_142

    :cond_13c
    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v12

    if-eqz v12, :cond_145

    .line 2415
    :cond_142
    const/4 v8, 0x0

    goto/16 :goto_28

    .line 2417
    :cond_145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2420
    .local v9, "token":J
    :try_start_149
    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 2421
    .restart local v6    # "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v6, v1, v3}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    move-result v8

    .line 2422
    .local v8, "ok":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRouteToHostAddress ok="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_167
    .catchall {:try_start_149 .. :try_end_167} :catchall_16c

    .line 2425
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_28

    .end local v6    # "lp":Landroid/net/LinkProperties;
    .end local v8    # "ok":Z
    :catchall_16c
    move-exception v12

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .registers 6
    .param p1, "newConfig"    # Landroid/net/DhcpServerConfiguration;

    .prologue
    .line 7273
    const-string v2, "ConnectivityService"

    const-string v3, "saveDhcpServerConfiguration()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    const/4 v0, 0x0

    .line 7275
    .local v0, "changeHappened":Z
    if-nez p1, :cond_c

    .line 7276
    const/4 v0, 0x0

    .line 7291
    :goto_b
    return v0

    .line 7278
    :cond_c
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7280
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifiap_local_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7281
    const-string/jumbo v2, "wifiap_subnet_mask"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7282
    const-string/jumbo v3, "wifiap_dhcp_enable"

    iget-boolean v2, p1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    :goto_2a
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7283
    const-string/jumbo v2, "wifiap_dhcp_start_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7284
    const-string/jumbo v2, "wifiap_dhcp_end_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7285
    const-string/jumbo v2, "wifiap_dhcp_lease_time"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7286
    const-string/jumbo v2, "wifiap_dhcp_max_user"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7288
    const/4 v0, 0x1

    goto :goto_b

    .line 7282
    :cond_4f
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3209
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3211
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_24

    .line 3213
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3214
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3215
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3221
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_23
    return-void

    .line 3217
    :cond_24
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3218
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public setAirplaneMode(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 7296
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7299
    .local v1, "ident":J
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7300
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_2b

    const/4 v4, 0x1

    :goto_12
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7301
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7302
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7303
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2d

    .line 7305
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7307
    return-void

    .line 7300
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2b
    const/4 v4, 0x0

    goto :goto_12

    .line 7305
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_2d
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method setAlarm(ILandroid/app/PendingIntent;)V
    .registers 9
    .param p1, "timeoutInMilliseconds"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 7439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 7440
    .local v0, "wakeupTime":J
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7441
    return-void
.end method

.method public setDataDependency(IZ)V
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2625
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xa

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2627
    return-void

    .line 2625
    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .registers 12
    .param p1, "proxyProperties"    # Landroid/net/ProxyProperties;

    .prologue
    .line 5015
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5017
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5018
    :try_start_6
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v7, :cond_c

    monitor-exit v8

    .line 5060
    :goto_b
    return-void

    .line 5019
    :cond_c
    if-eqz p1, :cond_1b

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v7}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    monitor-exit v8

    goto :goto_b

    .line 5054
    :catchall_18
    move-exception v7

    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v7

    .line 5020
    :cond_1b
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    monitor-exit v8

    goto :goto_b

    .line 5022
    :cond_29
    const-string v1, ""

    .line 5023
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5024
    .local v3, "port":I
    const-string v0, ""

    .line 5025
    .local v0, "exclList":Ljava/lang/String;
    const-string v2, ""

    .line 5026
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_b8

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 5028
    :cond_46
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v7

    if-nez v7, :cond_68

    .line 5030
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5031
    monitor-exit v8

    goto :goto_b

    .line 5033
    :cond_68
    new-instance v7, Landroid/net/ProxyProperties;

    invoke-direct {v7, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5034
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5035
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    .line 5036
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 5037
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8b

    .line 5038
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 5043
    :cond_8b
    :goto_8b
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5044
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_94
    .catchall {:try_start_1b .. :try_end_94} :catchall_18

    move-result-wide v5

    .line 5046
    .local v5, "token":J
    :try_start_95
    const-string v7, "global_http_proxy_host"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5047
    const-string v7, "global_http_proxy_port"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5048
    const-string v7, "global_http_proxy_exclusion_list"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5050
    const-string v7, "global_proxy_pac_url"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_bc

    .line 5052
    :try_start_a9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5054
    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_18

    .line 5056
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v7, :cond_b3

    .line 5057
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5059
    :cond_b3
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    goto/16 :goto_b

    .line 5041
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v5    # "token":J
    :cond_b8
    const/4 v7, 0x0

    :try_start_b9
    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    goto :goto_8b

    .line 5052
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v5    # "token":J
    :catchall_bc
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_18
.end method

.method protected setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "httpProxy"    # Ljava/lang/String;
    .param p2, "httpPort"    # Ljava/lang/String;

    .prologue
    .line 4491
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 13
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 2719
    const-string v6, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 2721
    const/4 v4, 0x1

    .line 2723
    .local v4, "isShowingMobileDataEnableDlg":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2724
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2726
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2727
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.sec.android.app.secsetupwizard"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "com.android.systemui"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "com.android.phone"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    const-string v6, "com.android.settings"

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2731
    :cond_6a
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v8

    if-ne v6, v8, :cond_26

    .line 2732
    const/4 v4, 0x0

    .line 2738
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_73
    if-eqz p1, :cond_84

    if-eqz v4, :cond_84

    .line 2739
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2763
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isShowingMobileDataEnableDlg":Z
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_83
    return-void

    .line 2744
    :cond_84
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMobileDataEnabled("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : pid("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uid("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2751
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2753
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    if-nez v6, :cond_e9

    .line 2754
    const-string v6, "ConnectivityService"

    const-string v7, "CellularData is not allowed by admin"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 2761
    :cond_e9
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v10, 0x7

    if-eqz p1, :cond_f9

    const/4 v6, 0x1

    :goto_f1
    invoke-virtual {v9, v10, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_83

    :cond_f9
    move v6, v7

    goto :goto_f1
.end method

.method public setMobileDataEnabledEx(ZI)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 2768
    const-string v6, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 2770
    const/4 v4, 0x1

    .line 2772
    .local v4, "isShowingMobileDataEnableDlg":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2773
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2775
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2776
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.sec.android.app.secsetupwizard"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "com.android.systemui"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "com.android.phone"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "com.android.settings"

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 2780
    :cond_69
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    if-ne v6, v7, :cond_25

    .line 2781
    const/4 v4, 0x0

    .line 2787
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_72
    if-eqz p1, :cond_83

    if-eqz v4, :cond_83

    .line 2788
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2812
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isShowingMobileDataEnableDlg":Z
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_82
    return-void

    .line 2793
    :cond_83
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataEnabledEx("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : pid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2800
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2802
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_f2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    if-nez v6, :cond_f2

    .line 2803
    const-string v6, "ConnectivityService"

    const-string v7, "CellularData is not allowed by admin"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 2810
    :cond_f2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v9, 0x11

    if-eqz p1, :cond_103

    const/4 v6, 0x1

    :goto_fb
    invoke-virtual {v8, v9, v6, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_82

    :cond_103
    const/4 v6, 0x0

    goto :goto_fb
.end method

.method public setNetworkPreference(I)V
    .registers 8
    .param p1, "preference"    # I

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1175
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1176
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") changed Network Preference to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    .line 1178
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSetNetworkPreferenceLog:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1181
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1183
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2854
    return-void

    .line 2852
    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 7235
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 7236
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 7237
    return-void
.end method

.method public setRadio(IZ)Z
    .registers 6
    .param p1, "netType"    # I
    .param p2, "turnOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1590
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1592
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1596
    :cond_a
    :goto_a
    return v1

    .line 1595
    :cond_b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1596
    .local v0, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_a

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRadios(Z)Z
    .registers 8
    .param p1, "turnOn"    # Z

    .prologue
    .line 1581
    const/4 v3, 0x1

    .line 1582
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1583
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_1c

    aget-object v4, v0, v1

    .line 1584
    .local v4, "t":Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_17

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    .line 1583
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1584
    :cond_1a
    const/4 v3, 0x0

    goto :goto_17

    .line 1586
    .end local v4    # "t":Landroid/net/NetworkStateTracker;
    :cond_1c
    return v3
.end method

.method public setUsbTethering(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 4832
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4843
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4844
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 4846
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 6048
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 6049
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 6050
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_11

    .line 6051
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6053
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6054
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 6055
    const/4 v2, 0x0

    :try_start_1d
    const-string v4, "[Legacy VPN]"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6056
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 6057
    monitor-exit v3

    .line 6058
    return-void

    .line 6057
    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_31

    throw v2
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .registers 36
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1681
    const-wide/16 v21, 0x0

    .line 1683
    .local v21, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1692
    :try_start_9
    const-string v28, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_7e

    .line 1693
    const/16 v20, 0x0

    .line 1694
    .local v20, "restrictionPolicy":Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7e

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "enterprise_policy"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1696
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_33

    .line 1697
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v20

    .line 1699
    :cond_33
    const/4 v9, 0x0

    .line 1700
    .local v9, "emergencyCallOnly":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1701
    .local v23, "token":J
    if-eqz v20, :cond_44

    .line 1702
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v9

    .line 1704
    :cond_44
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    if-eqz v9, :cond_7e

    .line 1706
    const-string v28, "ConnectivityService"

    const-string v29, "Administrator blocked this device"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_1ce

    .line 1707
    const/16 v28, 0x3

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .local v11, "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "emergencyCallOnly":Z
    .end local v20    # "restrictionPolicy":Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v23    # "token":J
    :goto_7a
    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1938
    :cond_7d
    return v28

    .line 1714
    .end local v11    # "execTime":J
    :cond_7e
    :try_start_7e
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v28

    if-eqz v28, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    aget-object v28, v28, p1
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_1ce

    if-nez v28, :cond_b9

    .line 1716
    :cond_8e
    const/16 v28, 0x3

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_7a

    .line 1742
    .end local v11    # "execTime":J
    :cond_b9
    :try_start_b9
    new-instance v13, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1745
    .local v13, "f":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v27

    .line 1747
    .local v27, "usedNetworkType":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    move/from16 v28, v0
    :try_end_d0
    .catchall {:try_start_b9 .. :try_end_d0} :catchall_1ce

    if-eqz v28, :cond_fe

    .line 1750
    const/16 v28, 0x2

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1753
    .end local v11    # "execTime":J
    :cond_fe
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_111

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1758
    :cond_111
    const-string v28, "VZW"

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16f

    .line 1760
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1761
    const-string/jumbo v28, "startUsingNetworkFeature ConnectivityManager.TYPE_MOBILE_HIPRI 5"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1763
    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_154

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isVzwAppsApnPermissionGranted(I)Z

    move-result v28

    if-eqz v28, :cond_154

    .line 1765
    const/16 v27, 0xc

    .line 1772
    :cond_154
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1778
    :cond_16f
    const-string v28, "VZW"

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_176
    .catchall {:try_start_fe .. :try_end_176} :catchall_1ce

    move-result v28

    if-eqz v28, :cond_202

    .line 1779
    const/4 v15, 0x1

    .line 1781
    .local v15, "needActivation":Z
    :try_start_17a
    const-string v28, "phone"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_187} :catch_1c7
    .catch Ljava/lang/NullPointerException; {:try_start_17a .. :try_end_187} :catch_1fb
    .catchall {:try_start_17a .. :try_end_187} :catchall_1ce

    move-result v15

    .line 1788
    :goto_188
    const/16 v28, 0xc

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_202

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v15, v0, :cond_202

    .line 1789
    :try_start_196
    const-string v28, "Device is not activated yet"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_19b
    .catchall {:try_start_196 .. :try_end_19b} :catchall_1ce

    .line 1790
    const/16 v28, 0x3

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1782
    .end local v11    # "execTime":J
    :catch_1c7
    move-exception v10

    .line 1783
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_1c8
    const-string v28, "needsOtaServiceProvisioning returned RemoteException"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1c8 .. :try_end_1cd} :catchall_1ce

    goto :goto_188

    .line 1940
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v13    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v15    # "needActivation":Z
    .end local v27    # "usedNetworkType":I
    :catchall_1ce
    move-exception v28

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_1fa

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1940
    :cond_1fa
    throw v28

    .line 1784
    .end local v11    # "execTime":J
    .restart local v13    # "f":Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v15    # "needActivation":Z
    .restart local v27    # "usedNetworkType":I
    :catch_1fb
    move-exception v10

    .line 1785
    .local v10, "ex":Ljava/lang/NullPointerException;
    :try_start_1fc
    const-string v28, "needsOtaServiceProvisioning has NullPointerException"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_188

    .line 1796
    .end local v10    # "ex":Ljava/lang/NullPointerException;
    .end local v15    # "needActivation":Z
    :cond_202
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v17

    .line 1798
    .local v17, "networkMetered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_211
    .catchall {:try_start_1fc .. :try_end_211} :catchall_1ce

    .line 1799
    :try_start_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v26

    .line 1800
    .local v26, "uidRules":I
    monitor-exit v29
    :try_end_228
    .catchall {:try_start_211 .. :try_end_228} :catchall_25a

    .line 1801
    if-eqz v17, :cond_25d

    and-int/lit8 v28, v26, 0x1

    if-eqz v28, :cond_25d

    .line 1802
    const/16 v28, 0x3

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1800
    .end local v11    # "execTime":J
    .end local v26    # "uidRules":I
    :catchall_25a
    move-exception v28

    :try_start_25b
    monitor-exit v29
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_25a

    :try_start_25c
    throw v28

    .line 1805
    .restart local v26    # "uidRules":I
    :cond_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v16, v28, v27

    .line 1806
    .local v16, "network":Landroid/net/NetworkStateTracker;
    if-eqz v16, :cond_56c

    .line 1807
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v28

    move/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1808
    .local v5, "currentPid":Ljava/lang/Integer;
    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_4e7

    .line 1809
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1811
    .local v18, "ni":Landroid/net/NetworkInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v28

    if-nez v28, :cond_2f3

    .line 1812
    const-string v28, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2d8

    .line 1816
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "special network not available ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V
    :try_end_2ac
    .catchall {:try_start_25c .. :try_end_2ac} :catchall_1ce

    .line 1820
    const/16 v28, 0x2

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1824
    .end local v11    # "execTime":J
    :cond_2d8
    :try_start_2d8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "special network not available, but try anyway ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1830
    :cond_2f3
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v19

    .line 1832
    .local v19, "restoreTimer":I
    monitor-enter p0
    :try_end_2fc
    .catchall {:try_start_2d8 .. :try_end_2fc} :catchall_1ce

    .line 1833
    const/4 v4, 0x1

    .line 1834
    .local v4, "addToList":Z
    if-gez v19, :cond_3c4

    .line 1837
    :try_start_2ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_309
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_321

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1838
    .local v25, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_309

    .line 1840
    const/4 v4, 0x0

    .line 1842
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1867
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_321
    :goto_321
    if-eqz v4, :cond_32e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_34b

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    :cond_34b
    monitor-exit p0
    :try_end_34c
    .catchall {:try_start_2ff .. :try_end_34c} :catchall_420

    .line 1874
    if-ltz v19, :cond_36c

    .line 1875
    :try_start_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1879
    :cond_36c
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_454

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v28

    if-nez v28, :cond_454

    .line 1881
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_428

    .line 1882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_38d
    .catchall {:try_start_34e .. :try_end_38d} :catchall_1ce

    move-result-wide v23

    .line 1885
    .restart local v23    # "token":J
    :try_start_38e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_395
    .catchall {:try_start_38e .. :try_end_395} :catchall_423

    .line 1888
    :try_start_395
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_398
    .catchall {:try_start_395 .. :try_end_398} :catchall_1ce

    .line 1890
    const/16 v28, 0x0

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1849
    .end local v11    # "execTime":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "token":J
    :cond_3c4
    const/4 v7, -0x1

    .line 1851
    .local v7, "duplicateIndex":I
    :try_start_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_3cf
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3f1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1852
    .restart local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_3cf

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1858
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3f1
    if-ltz v7, :cond_321

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1860
    .local v6, "dupUser":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1861
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_321

    .line 1872
    .end local v6    # "dupUser":Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7    # "duplicateIndex":I
    .end local v14    # "i$":Ljava/util/Iterator;
    :catchall_420
    move-exception v28

    monitor-exit p0
    :try_end_422
    .catchall {:try_start_3c5 .. :try_end_422} :catchall_420

    :try_start_422
    throw v28

    .line 1888
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v23    # "token":J
    :catchall_423
    move-exception v28

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
    :try_end_428
    .catchall {:try_start_422 .. :try_end_428} :catchall_1ce

    .line 1893
    .end local v23    # "token":J
    :cond_428
    const/16 v28, 0x1

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1900
    .end local v11    # "execTime":J
    :cond_454
    :try_start_454
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1903
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v28

    if-eqz v28, :cond_4b5

    .line 1904
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_REQUEST_STARTED"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_489
    .catchall {:try_start_454 .. :try_end_489} :catchall_1ce

    .line 1905
    const/16 v28, 0x1

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1907
    .end local v11    # "execTime":J
    :cond_4b5
    :try_start_4b5
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_REQUEST_FAILED"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4bb
    .catchall {:try_start_4b5 .. :try_end_4bb} :catchall_1ce

    .line 1908
    const/16 v28, 0x3

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1912
    .end local v4    # "addToList":Z
    .end local v11    # "execTime":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "ni":Landroid/net/NetworkInfo;
    .end local v19    # "restoreTimer":I
    :cond_4e7
    :try_start_4e7
    monitor-enter p0
    :try_end_4e8
    .catchall {:try_start_4e7 .. :try_end_4e8} :catchall_1ce

    .line 1914
    const/4 v4, 0x1

    .line 1915
    .restart local v4    # "addToList":Z
    :try_start_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_4f3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_508

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1916
    .restart local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_4f3

    .line 1917
    const/4 v4, 0x0

    .line 1922
    .end local v25    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_508
    if-eqz v4, :cond_565

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    :goto_515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_532

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_532
    monitor-exit p0
    :try_end_533
    .catchall {:try_start_4e9 .. :try_end_533} :catchall_569

    .line 1933
    :try_start_533
    const-string/jumbo v28, "startUsingNetworkFeature X: return -1 unsupported feature."

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_539
    .catchall {:try_start_533 .. :try_end_539} :catchall_1ce

    .line 1934
    const/16 v28, -0x1

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a

    .line 1925
    .end local v11    # "execTime":J
    :cond_565
    :try_start_565
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    goto :goto_515

    .line 1932
    .end local v14    # "i$":Ljava/util/Iterator;
    :catchall_569
    move-exception v28

    monitor-exit p0
    :try_end_56b
    .catchall {:try_start_565 .. :try_end_56b} :catchall_569

    :try_start_56b
    throw v28

    .line 1937
    .end local v4    # "addToList":Z
    .end local v5    # "currentPid":Ljava/lang/Integer;
    :cond_56c
    const-string/jumbo v28, "startUsingNetworkFeature X: return APN_TYPE_NOT_AVAILABLE"

    invoke-static/range {v28 .. v28}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_572
    .catchall {:try_start_56b .. :try_end_572} :catchall_1ce

    .line 1938
    const/16 v28, 0x2

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1942
    .restart local v11    # "execTime":J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_7d

    .line 1943
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_7a
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 11
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2039
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2041
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 2042
    .local v2, "pid":I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 2044
    .local v4, "uid":I
    const/4 v3, 0x0

    .line 2045
    .local v3, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 2047
    .local v0, "found":Z
    monitor-enter p0

    .line 2048
    :try_start_f
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2049
    .local v5, "x":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2050
    move-object v3, v5

    .line 2051
    const/4 v0, 0x1

    .line 2055
    .end local v5    # "x":Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_33

    .line 2056
    if-eqz v0, :cond_32

    if-eqz v3, :cond_32

    .line 2059
    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 2063
    :cond_32
    return v6

    .line 2055
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v6
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 6335
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6338
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_16

    .line 6339
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 6341
    :cond_16
    return-void
.end method

.method public supplyMessengerEx(ILandroid/os/Messenger;I)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "simSlot"    # I

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1956
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_18

    .line 1957
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    check-cast v0, Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v0, p2, p3}, Landroid/net/MultiSimMobileDataStateTracker;->supplyMessenger(Landroid/os/Messenger;I)V

    .line 1959
    :cond_18
    return-void
.end method

.method public switchDataNetwork(I)V
    .registers 3
    .param p1, "simSlot"    # I

    .prologue
    .line 1978
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1980
    :try_start_6
    const-string v0, "phone"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 1981
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_1f

    .line 1982
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchDataNetwork(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_20

    .line 1987
    :cond_1f
    :goto_1f
    return-void

    .line 1984
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public switchDataNetworkForMMS(I)V
    .registers 5
    .param p1, "simSlot"    # I

    .prologue
    .line 1962
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_19

    .line 1963
    const-string v0, "persist.sys.datacross"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :goto_10
    const-string v0, "checking property"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->switchDataNetwork(I)V

    .line 1969
    return-void

    .line 1965
    :cond_19
    const-string v0, "persist.sys.datacross"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public switchToSim1DataNetwork()V
    .registers 1

    .prologue
    .line 1990
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .registers 1

    .prologue
    .line 1989
    return-void
.end method

.method systemReady()V
    .registers 5

    .prologue
    .line 3394
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/net/CaptivePortalTracker;->makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    .line 3395
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 3397
    monitor-enter p0

    .line 3398
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 3399
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_1f

    .line 3400
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3403
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_42

    .line 3405
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3409
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    move-result v1

    if-nez v1, :cond_41

    .line 3410
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3411
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3413
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_41
    return-void

    .line 3403
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4764
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4766
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4767
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 4769
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public untether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4775
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 4777
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4778
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 4780
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method protected updateBlockedUids(IZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 6360
    :try_start_0
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService;

    .line 6362
    .local v1, "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->updateBlockedUids(IZ)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_17

    .line 6367
    .end local v1    # "mAlarmMgrSvc":Lcom/android/server/AlarmManagerService;
    :goto_b
    :try_start_b
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    .line 6369
    .local v2, "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateBlockedUids(IZ)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_16} :catch_31

    .line 6373
    .end local v2    # "mPowerMgrSvc":Lcom/android/server/power/PowerManagerService;
    :goto_16
    return-void

    .line 6363
    :catch_17
    move-exception v0

    .line 6364
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with alarmManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6370
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_31
    move-exception v0

    .line 6371
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could Not Update blocked Uids with powerManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public updateEnterpriseVpn(Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 5776
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateEnterpriseVpn profileName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , flag : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", domain : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    const/4 v2, 0x0

    .line 5780
    .local v2, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    :try_start_2f
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_57

    .line 5781
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5782
    .local v5, "key":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_81

    .line 5783
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    move-object v2, v0

    .line 5784
    if-eqz v2, :cond_81

    .line 5790
    .end local v5    # "key":I
    :cond_57
    if-eqz v2, :cond_a6

    .line 5791
    if-nez p3, :cond_84

    .line 5792
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->hasInterfaceAsUser(I)Z

    move-result v7

    if-nez v7, :cond_80

    .line 5793
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateEnterpriseVpn The connected Vpn is not exists in user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    invoke-virtual {v2, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V

    .line 5795
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 5813
    :cond_80
    :goto_80
    return-void

    .line 5780
    .restart local v5    # "key":I
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 5798
    .end local v5    # "key":I
    :cond_84
    invoke-virtual {v2, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_87} :catch_88

    goto :goto_80

    .line 5810
    :catch_88
    move-exception v1

    .line 5811
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 5801
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a6
    :try_start_a6
    const-string v7, "ConnectivityService"

    const-string/jumbo v8, "updateEnterpriseVpn enterprisevpn is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_af
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_80

    .line 5803
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5804
    .restart local v5    # "key":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 5805
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_ca

    .line 5806
    invoke-virtual {v6, p1, p3, p2}, Lcom/android/server/connectivity/Vpn;->refreshNotification(Ljava/lang/String;ZI)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ca} :catch_88

    .line 5802
    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_af
.end method

.method public updateLockdownVpn()Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 6274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    .line 6275
    const-string v1, "ConnectivityService"

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    :goto_10
    return v0

    .line 6280
    :cond_11
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 6281
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_7b

    .line 6282
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 6283
    const-string v1, "ConnectivityService"

    const-string v2, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 6287
    :cond_2b
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 6288
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 6290
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6291
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 6292
    :try_start_60
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 6294
    monitor-exit v8

    .line 6299
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_76
    const/4 v0, 0x1

    goto :goto_10

    .line 6294
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_78
    move-exception v0

    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_78

    throw v0

    .line 6296
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_7b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_76
.end method
