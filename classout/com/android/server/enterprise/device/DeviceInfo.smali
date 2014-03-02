.class public Lcom/android/server/enterprise/device/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_SYSSCOPE_SERVICE:Ljava/lang/String; = "android.app.enterprise.SYSSCOPE"

.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final SYSSCOPE_BIND_TIMER:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mSignalStrength:Ljava/lang/String;


# instance fields
.field private connSysScope:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field private mPhoneStateReceiver:Ljava/lang/Object;

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field private mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

.field private mSysScopeServiceBind:Ljava/lang/Runnable;

.field private mSysScopeServiceHandler:Landroid/os/Handler;

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 156
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 94
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 99
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 104
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 105
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 106
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 107
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 108
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 109
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 110
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 111
    iput v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 112
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 113
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 117
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 118
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 119
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 121
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 122
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 129
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    .line 146
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    .line 694
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 711
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$4;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 734
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$5;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1059
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1422
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$6;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$6;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;

    .line 157
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 158
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 167
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/device/DeviceInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/device/DeviceInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/device/DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/device/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->registerCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->deregisterCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/device/DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dataUsageValuesInit()V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 745
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 746
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v3

    .line 747
    .local v3, "i":I
    if-eqz v3, :cond_7f

    .end local v3    # "i":I
    :goto_b
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 748
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 749
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 750
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 751
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "deviceWifiSent"

    aput-object v6, v0, v8

    const/4 v6, 0x1

    const-string v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .line 753
    .local v0, "columns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 755
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_7e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 756
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 757
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_7e

    .line 759
    :try_start_4e
    const-string v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 760
    const-string v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 761
    const-string v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 762
    const-string v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_7e} :catch_81

    .line 769
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_7e
    :goto_7e
    return-void

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3    # "i":I
    :cond_7f
    move v3, v5

    .line 747
    goto :goto_b

    .line 763
    .end local v3    # "i":I
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_81
    move-exception v2

    .line 764
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage()V

    goto :goto_7e
.end method

.method private dataUsageValuesUpdate()V
    .registers 3

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 773
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 774
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 775
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 777
    return-void
.end method

.method private deregisterCarrierNetworkListener()V
    .registers 4

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 732
    return-void
.end method

.method private enforceDeviceInventoryPermission()I
    .registers 3

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforcePhone()V
    .registers 3

    .prologue
    .line 1085
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_10

    .line 1086
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_10
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .registers 3

    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    .line 1092
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1094
    :cond_11
    return-void
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1080
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_12
    return-void
.end method

.method private getCallsCount(Ljava/lang/String;)I
    .registers 7
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 347
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_d

    .line 348
    const/4 v0, -0x1

    .line 361
    :goto_c
    return v0

    .line 351
    :cond_d
    const/4 v0, -0x1

    .line 352
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 354
    const/4 v0, 0x0

    goto :goto_c

    .line 357
    :cond_18
    :try_start_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_c

    .line 358
    :catch_1d
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1063
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1066
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .registers 6
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 515
    const/4 v1, -0x1

    .line 517
    .local v1, "value":I
    const/4 v2, -0x1

    :try_start_2
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 522
    :goto_6
    return v1

    .line 518
    :catch_7
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 520
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private getStrictDataUsageTimer()I
    .registers 8

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "ret":I
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 659
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 660
    .local v2, "value":I
    if-eqz v1, :cond_23

    if-ge v2, v1, :cond_f

    .line 661
    :cond_23
    move v1, v2

    goto :goto_f

    .line 664
    .end local v2    # "value":I
    :cond_25
    if-nez v1, :cond_28

    .line 665
    const/4 v1, 0x3

    .line 667
    :cond_28
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "fromVM"    # Z

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "value":Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 499
    :try_start_3
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    :goto_7
    return-object v1

    .line 501
    :cond_8
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_18

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    :cond_17
    goto :goto_7

    .line 504
    :catch_18
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 506
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getTrafficMobileRx()J
    .registers 5

    .prologue
    .line 690
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 691
    .local v0, "mobileValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    const-wide/16 v0, 0x0

    .end local v0    # "mobileValue":J
    :cond_c
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .registers 5

    .prologue
    .line 685
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 686
    .local v0, "mobileValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    const-wide/16 v0, 0x0

    .end local v0    # "mobileValue":J
    :cond_c
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 678
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 679
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 680
    .local v2, "totalValue":J
    cmp-long v6, v7, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_11
    cmp-long v6, v7, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 671
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 672
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 673
    .local v2, "totalValue":J
    cmp-long v6, v7, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_11
    cmp-long v6, v7, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 780
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_11

    .line 781
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 783
    :cond_11
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_16

    .line 788
    :goto_15
    return v0

    .line 786
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 788
    .local v0, "ret":Z
    :cond_20
    goto :goto_15
.end method

.method private logDataCall(J)Z
    .registers 11
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 996
    iget-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    if-nez v5, :cond_f

    .line 997
    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :goto_e
    return v4

    .line 1000
    :cond_f
    iget-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    if-nez v5, :cond_1b

    .line 1001
    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1004
    :cond_1b
    cmp-long v5, p1, v6

    if-gtz v5, :cond_27

    .line 1005
    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1011
    :cond_27
    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_33

    .line 1012
    const-string v5, "DeviceInfo"

    const-string v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1016
    :cond_33
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 1017
    const-string v3, "ROAMING"

    .line 1023
    .local v3, "status":Ljava/lang/String;
    :goto_3d
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, "netType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 1029
    :cond_53
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1030
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1034
    :cond_57
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 1035
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 1036
    iput-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 1039
    :cond_63
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1042
    const/4 v1, 0x0

    .line 1043
    .local v1, "cvWhere":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1045
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1050
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1051
    .local v0, "cvUpdate":Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1052
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v4, "dataCallBytes"

    iget-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1055
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_e

    .line 1019
    .end local v0    # "cvUpdate":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "netType":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :cond_c4
    const-string v3, "NORMAL"

    .restart local v3    # "status":Ljava/lang/String;
    goto/16 :goto_3d
.end method

.method private registerCarrierNetworkListener()V
    .registers 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 728
    return-void
.end method

.method private updateDataStatisticsUsage()J
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    .line 792
    const-wide/16 v7, 0x0

    .line 793
    .local v7, "wifiUsage":J
    const-wide/16 v3, 0x0

    .line 794
    .local v3, "mobileUsage":J
    const-wide/16 v1, 0x0

    .line 795
    .local v1, "delta":J
    const-wide/16 v5, 0x0

    .line 796
    .local v5, "valueNow":J
    iget v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 799
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v5

    .line 800
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_2d

    .line 801
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    sub-long v1, v5, v9

    .line 802
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-boolean v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_2d

    .line 803
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 806
    :cond_2d
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 807
    add-long/2addr v7, v1

    .line 808
    const-wide/16 v1, 0x0

    .line 811
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v5

    .line 812
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_4f

    .line 813
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    sub-long v1, v5, v9

    .line 814
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_4f

    iget-boolean v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_4f

    .line 815
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 818
    :cond_4f
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 819
    add-long/2addr v7, v1

    .line 820
    const-wide/16 v1, 0x0

    .line 823
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v5

    .line 824
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_e2

    .line 825
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    sub-long v1, v5, v9

    .line 826
    iget-boolean v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_6b

    .line 827
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 833
    :cond_6b
    :goto_6b
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 834
    add-long/2addr v3, v1

    .line 835
    const-wide/16 v1, 0x0

    .line 838
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v5

    .line 839
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_e7

    .line 840
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    sub-long v1, v5, v9

    .line 841
    iget-boolean v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_87

    .line 842
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 848
    :cond_87
    :goto_87
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 849
    add-long/2addr v3, v1

    .line 850
    const-wide/16 v1, 0x0

    .line 852
    cmp-long v9, v3, v11

    if-lez v9, :cond_93

    .line 853
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->logDataCall(J)Z

    .line 855
    :cond_93
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 858
    iget v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_df

    .line 859
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v9, "deviceWifiSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 861
    const-string v9, "deviceWifiReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v9, "deviceNetworkSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    const-string v9, "deviceNetworkReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    iget-object v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 865
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 867
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_df
    add-long v9, v7, v3

    return-wide v9

    .line 830
    :cond_e2
    iput-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 831
    iput-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_6b

    .line 845
    :cond_e7
    iput-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 846
    iput-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_87
.end method

.method private final updateSignalStrength()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1384
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthDbm(Ljava/lang/Object;)I

    move-result v2

    .line 1385
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_e

    .line 1386
    const/4 v2, 0x0

    .line 1389
    :cond_e
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthLevelAsu(Ljava/lang/Object;)I

    move-result v1

    .line 1390
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_1b

    .line 1391
    const/4 v1, 0x0

    .line 1394
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dBm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_42} :catch_43

    .line 1399
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    :goto_42
    return-void

    .line 1396
    :catch_43
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "DeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSignalStrength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .registers 7
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 392
    .local v0, "count":I
    if-eqz v2, :cond_10

    .line 394
    :try_start_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_1c

    move-result v0

    .line 395
    if-gez v0, :cond_10

    .line 396
    const/4 v0, 0x0

    .line 402
    :cond_10
    :goto_10
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    return-void

    .line 398
    :catch_1c
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public clearCallingLog()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 980
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 982
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_d

    .line 991
    :goto_c
    return v1

    .line 987
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CallingLog"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 988
    :catch_16
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not clear call log "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public clearSMSLog()Z
    .registers 4

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 1185
    :goto_b
    return v1

    .line 1182
    :catch_c
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dataUsageTimerActivation()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 874
    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    if-nez v3, :cond_1c

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_1c
    move v0, v2

    .line 876
    .local v0, "policiesActive":Z
    :goto_1d
    if-eqz v0, :cond_35

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v3, :cond_35

    .line 878
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 879
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 880
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 886
    :cond_32
    :goto_32
    return-void

    .end local v0    # "policiesActive":Z
    :cond_33
    move v0, v1

    .line 874
    goto :goto_1d

    .line 881
    .restart local v0    # "policiesActive":Z
    :cond_35
    if-nez v0, :cond_32

    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_32

    .line 883
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 884
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

.method public enableCallingCapture(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 1195
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1196
    const/4 v1, 0x0

    .line 1199
    :goto_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_d
.end method

.method public enableSMSCapture(Z)Z
    .registers 7
    .param p1, "status"    # Z

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v1

    .line 1099
    .local v1, "uId":I
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result v2

    .line 1104
    :goto_e
    return v2

    .line 1101
    :catch_f
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public getAvailableCapacityExternal()J
    .registers 4

    .prologue
    .line 226
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableCapacityInternal()J
    .registers 4

    .prologue
    .line 246
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableRamMemory()J
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 478
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v7

    const-string v3, "Cached:"

    aput-object v3, v1, v8

    .line 479
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 480
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 483
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 486
    :cond_23
    aget-wide v3, v2, v7

    aget-wide v5, v2, v8

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public getBytesReceivedNetwork()J
    .registers 3

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 594
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi()J
    .registers 3

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 584
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork()J
    .registers 3

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 589
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi()J
    .registers 3

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 579
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    return-wide v0
.end method

.method public getCellTowerCID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1310
    const/4 v1, -0x1

    .line 1312
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1313
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1314
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1315
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1319
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerLAC()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1324
    const/4 v1, -0x1

    .line 1326
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1327
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1328
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1329
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 1333
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerPSC()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1337
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1338
    const/4 v1, -0x1

    .line 1340
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_16

    .line 1341
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1342
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_16

    .line 1343
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v1

    .line 1347
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerRSSI()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1351
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1353
    const/16 v5, 0x63

    .line 1354
    .local v5, "ret":I
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_51

    .line 1355
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18

    .line 1356
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    .line 1357
    sget-object v6, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 1379
    :goto_17
    return-object v6

    .line 1359
    :cond_18
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1360
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_51

    .line 1361
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1362
    .local v1, "cid":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_51

    .line 1363
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    .line 1364
    .local v3, "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_56

    .line 1365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 1366
    .local v4, "nInfo":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    if-ne v6, v1, :cond_3b

    .line 1367
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v5

    .line 1379
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v4    # "nInfo":Landroid/telephony/NeighboringCellInfo;
    :cond_51
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    .line 1372
    .restart local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1    # "cid":I
    .restart local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_56
    const-string v6, "DeviceInfo"

    const-string v7, "Could not retrieve NeighboringCellInfo"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    sget-object v6, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    goto :goto_17
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "time"    # Ljava/lang/String;
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
    .line 945
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 947
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "dataCallBytes"

    aput-object v8, v0, v7

    .line 950
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 951
    .local v6, "where":Landroid/content/ContentValues;
    if-eqz p1, :cond_27

    .line 952
    new-instance v6, Landroid/content/ContentValues;

    .end local v6    # "where":Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 953
    .restart local v6    # "where":Landroid/content/ContentValues;
    const-string v7, "dataCallDate"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_27
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 958
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_33

    .line 959
    const/4 v4, 0x0

    .line 976
    :cond_32
    return-object v4

    .line 962
    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    .line 965
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 966
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method public getDataCallLoggingEnabled()Z
    .registers 8

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 916
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 917
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 918
    move v1, v2

    .line 922
    .end local v2    # "value":Z
    :cond_26
    return v1
.end method

.method public getDataCallStatisticsEnabled()Z
    .registers 8

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 568
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 569
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 570
    move v1, v2

    .line 574
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public getDataUsageTimer()I
    .registers 7

    .prologue
    .line 640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 643
    .local v0, "callingUid":I
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MISC"

    const-string v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v2

    .line 650
    .local v2, "i":I
    :goto_e
    return v2

    .line 645
    .end local v2    # "i":I
    :catch_f
    move-exception v1

    .line 646
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->printStackTrace()V

    .line 648
    const/4 v2, -0x1

    .restart local v2    # "i":I
    goto :goto_e
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 268
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 334
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 341
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .registers 8

    .prologue
    .line 431
    const-string v3, ""

    .line 432
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 435
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_1b
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    .line 437
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_3f
    .catchall {:try_start_f .. :try_end_12} :catchall_3c

    move-result-object v3

    .line 443
    if-eqz v1, :cond_18

    .line 445
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_37

    :cond_18
    :goto_18
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v3

    .line 451
    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_1a
    return-object v4

    .line 440
    .end local v4    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_1b
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/Exception;
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 443
    if-eqz v0, :cond_24

    .line 445
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_32

    :cond_24
    :goto_24
    move-object v4, v3

    .line 451
    .end local v3    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1a

    .line 443
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :catchall_26
    move-exception v5

    :goto_27
    if-eqz v0, :cond_2c

    .line 445
    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 443
    :cond_2c
    :goto_2c
    throw v5

    .line 446
    :catch_2d
    move-exception v2

    .line 447
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 446
    :catch_32
    move-exception v2

    .line 447
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 446
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_37
    move-exception v2

    .line 447
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 443
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_27

    .line 440
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3f
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1c
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .registers 7

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 409
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_33
    .catchall {:try_start_1 .. :try_end_d} :catchall_42

    .line 410
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 412
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 413
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_5b
    .catchall {:try_start_d .. :try_end_22} :catchall_58

    move-result-object v3

    .line 419
    if-eqz v1, :cond_28

    .line 421
    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_4e

    :cond_28
    :goto_28
    move-object v0, v1

    .line 427
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_29
    return-object v3

    .line 419
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_2a
    if-eqz v1, :cond_2f

    .line 421
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_53

    :cond_2f
    :goto_2f
    move-object v0, v1

    .line 427
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_30
    :goto_30
    const-string v3, ""

    goto :goto_29

    .line 416
    :catch_33
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/Exception;
    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    .line 419
    if-eqz v0, :cond_30

    .line 421
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 422
    :catch_3d
    move-exception v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 419
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_42
    move-exception v4

    :goto_43
    if-eqz v0, :cond_48

    .line 421
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 419
    :cond_48
    :goto_48
    throw v4

    .line 422
    :catch_49
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    .line 422
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_4e
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 419
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_58
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_43

    .line 416
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5b
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_34
.end method

.method public getDroppedCallsCount()I
    .registers 2

    .prologue
    .line 365
    const-string v0, "dropped"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1148
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1149
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1151
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1152
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6d} :catch_6e

    goto :goto_25

    .line 1157
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 1158
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_76
    return-object v4
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1285
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    :cond_10
    :goto_10
    return-object v4

    .line 1289
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1292
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1293
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1295
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1296
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1301
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1302
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public getMissedCallsCount()I
    .registers 2

    .prologue
    .line 369
    const-string v0, "missed"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 254
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 261
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .registers 3

    .prologue
    .line 299
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1128
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1129
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1131
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1132
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6d} :catch_6e

    goto :goto_25

    .line 1137
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 1138
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_76
    return-object v4
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1257
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1258
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    :cond_10
    :goto_10
    return-object v4

    .line 1261
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1264
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1265
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1267
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1268
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1273
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1274
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public getPlatformSDK()I
    .registers 2

    .prologue
    .line 306
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 313
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 282
    const-string v0, "UNKNOWN"

    .line 283
    .local v0, "platformName":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_b

    .line 284
    const-string v0, "GINGERBREAD"

    .line 292
    :cond_a
    :goto_a
    return-object v0

    .line 285
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_14

    .line 286
    const-string v0, "HONEYCOMB"

    goto :goto_a

    .line 287
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1d

    .line 288
    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_a

    .line 289
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_a

    .line 290
    const-string v0, "JELLY_BEAN"

    goto :goto_a
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 275
    const-string v0, "ril.serialnumber"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessCallsCount()I
    .registers 2

    .prologue
    .line 373
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal()J
    .registers 4

    .prologue
    .line 216
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalCapacityInternal()J
    .registers 4

    .prologue
    .line 236
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalRamMemory()J
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 460
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    .line 461
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 462
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 465
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 468
    :cond_1e
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public getWifiStatisticEnabled()Z
    .registers 8

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 542
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

    .line 543
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 544
    move v1, v2

    .line 548
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public isCallingCaptureEnabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 1207
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrAdmin()V

    .line 1208
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    .line 1223
    :goto_d
    return v4

    .line 1213
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1215
    .local v3, "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_30

    move-result v2

    .line 1216
    .local v2, "isEnabled":Z
    if-eqz v2, :cond_1c

    .line 1217
    const/4 v4, 0x1

    goto :goto_d

    .line 1220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isEnabled":Z
    .end local v3    # "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_30
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    move v4, v5

    .line 1223
    goto :goto_d
.end method

.method public isDeviceLocked()Z
    .registers 6

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "isLocked":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 202
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 207
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :goto_f
    return v1

    .line 203
    :catch_10
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public declared-synchronized isDeviceRooted()Z
    .registers 7

    .prologue
    .line 1402
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1403
    const/4 v1, 0x1

    .line 1404
    .local v1, "rooted":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    if-eqz v2, :cond_1c

    .line 1406
    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseSysScopeInterface;->isDeviceRooted()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_12
    .catchall {:try_start_9 .. :try_end_e} :catchall_2e

    move-result v1

    .line 1419
    :goto_f
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1407
    :catch_12
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v2, "DeviceInfo"

    const-string v3, "isDeviceRooted(): error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const/4 v1, 0x1

    .line 1411
    goto :goto_f

    .line 1413
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const-string v2, "DeviceInfo"

    const-string v3, "isDeviceRooted(): not found"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const/4 v1, 0x1

    .line 1417
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_f

    .line 1402
    .end local v1    # "rooted":Z
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isDeviceSecure()Z
    .registers 5

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "isSecure":Z
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_d

    .line 184
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 185
    :cond_d
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 186
    .local v2, "lu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_19

    move-result v1

    .line 191
    .end local v2    # "lu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_18
    return v1

    .line 187
    :catch_19
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public isSMSCaptureEnabled()Z
    .registers 8

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrAdmin()V

    .line 1110
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1112
    .local v3, "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1113
    .local v2, "policyStatus":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_25

    move-result v4

    if-eqz v4, :cond_11

    .line 1114
    const/4 v4, 0x1

    .line 1120
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "policyStatus":Ljava/lang/Boolean;
    .end local v3    # "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_24
    return v4

    .line 1117
    :catch_25
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1440
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataUsageState()V

    .line 1445
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1455
    return-void
.end method

.method public resetCallsCount()Z
    .registers 5

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 378
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 379
    const/4 v0, 0x0

    .line 386
    :goto_c
    return v0

    .line 382
    :cond_d
    const/4 v0, 0x1

    .line 383
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 384
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 386
    goto :goto_c
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .registers 5
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 926
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 929
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 930
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "where":Landroid/content/ContentValues;
    if-eqz p1, :cond_16

    .line 936
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "where":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 937
    .restart local v0    # "where":Landroid/content/ContentValues;
    const-string v1, "dataCallDate"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 598
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 599
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 601
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 602
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 603
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 604
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 605
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    const-string v1, "deviceWifiReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v1, "deviceNetworkSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v1, "deviceNetworkReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 612
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 613
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 614
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 615
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 616
    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_6f

    .line 617
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_6f
    return-void
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .registers 7
    .param p1, "status"    # Z

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 900
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 901
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 903
    if-eqz v1, :cond_1a

    .line 904
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 905
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation()V

    .line 907
    :cond_1a
    return v1
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .registers 7
    .param p1, "status"    # Z

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 553
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 554
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 556
    if-eqz v1, :cond_1a

    .line 557
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation()V

    .line 560
    :cond_1a
    return v1
.end method

.method public setDataUsageTimer(I)Z
    .registers 8
    .param p1, "seconds"    # I

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 623
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-lt p1, v2, :cond_13

    const/16 v2, 0x3c

    if-le p1, v2, :cond_14

    .line 626
    :cond_13
    const/4 p1, 0x3

    .line 628
    :cond_14
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 630
    if-eqz v1, :cond_28

    .line 631
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 633
    :cond_28
    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_36

    .line 634
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    :cond_36
    return v1
.end method

.method public setWifiStatisticEnabled(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 528
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 529
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 531
    if-eqz v1, :cond_1a

    .line 532
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 533
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation()V

    .line 535
    :cond_1a
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1238
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1249
    :goto_b
    return-void

    .line 1242
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "callingType"

    if-eqz p5, :cond_36

    const-string v1, "1"

    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v1, "callingStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v1, "callingAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v1, "callingTimeStamp"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v1, "callingDuration"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CallingLog"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_b

    .line 1243
    :cond_36
    const-string v1, "0"

    goto :goto_17
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1166
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "SMS"

    .line 1168
    .local v2, "sTableName":Ljava/lang/String;
    :try_start_a
    const-string v4, "smsType"

    if-eqz p4, :cond_28

    const-string v3, "1"

    :goto_10
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v3, "smsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v3, "smsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v3, "smsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1176
    :goto_27
    return-void

    .line 1168
    :cond_28
    const-string v3, "0"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_10

    .line 1173
    :catch_2b
    move-exception v1

    .line 1174
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1450
    return-void
.end method

.method public updateDataUsageState()V
    .registers 2

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceSystemUser()V

    .line 890
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 891
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 892
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 893
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation()V

    .line 894
    return-void
.end method
