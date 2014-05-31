.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final MDPP_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final MDPP_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final MSG_ACTION_ESTABLISH:I = 0x2

.field private static final MSG_ACTION_INTERFACE_REMOVED:I = 0x3

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static mIsSMServiceBound:Z

.field private static mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;


# instance fields
.field private final knoxVpnV2Enabled:Z

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

.field private mMvpMessenger:Landroid/os/Messenger;

.field private mNamespace:Lcom/android/server/connectivity/VpnNamespace;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mdppModeEnabled:Z

.field private srvConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 179
    sput-boolean v1, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 197
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 136
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 142
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 148
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 150
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    .line 159
    const-string/jumbo v0, "v30"

    const-string v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnV2Enabled:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 181
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->srvConn:Landroid/content/ServiceConnection;

    .line 982
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1116
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 198
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 200
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 201
    iput p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 204
    :try_start_41
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_70

    .line 208
    :goto_46
    if-nez p5, :cond_6f

    .line 210
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    new-instance v0, Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-direct {v0, p1, p5}, Lcom/android/server/connectivity/MvpVpnClientsManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

    .line 237
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_6f
    return-void

    .line 205
    :catch_70
    move-exception v6

    .line 206
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method static synthetic access$002(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/service/sm/service/ISecurityManager;

    .prologue
    .line 126
    sput-object p0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->testStrongSwanIntegrity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method private addVpnUserLocked(I)V
    .registers 16
    .param p1, "user"    # I

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 850
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v10

    if-nez v10, :cond_11

    .line 851
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "VPN is not active"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 862
    :cond_11
    iget-boolean v10, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2e

    .line 863
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v10, :cond_a0

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_a0

    const/4 v4, 0x1

    .line 867
    .local v4, "forwardDns":Z
    :goto_27
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v11, p1, v4}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V

    .line 869
    .end local v4    # "forwardDns":Z
    :cond_2e
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 872
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v11, "[Legacy VPN]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ab

    .line 874
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 875
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 877
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_45
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_a2

    move-result-object v0

    .line 881
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 883
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 884
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 885
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_9c

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-lez v10, :cond_9c

    .line 886
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 888
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 890
    .local v5, "height":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 891
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 892
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 893
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 894
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 896
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_9c
    invoke-direct {p0, v7, v1, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 900
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_9f
    return-void

    .line 863
    :cond_a0
    const/4 v4, 0x0

    goto :goto_27

    .line 878
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_a2
    move-exception v3

    .line 879
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid application"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 898
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_ab
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_9f
.end method

.method private checkHostPrepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 421
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-eqz v1, :cond_7

    .line 464
    :cond_6
    :goto_6
    return v0

    .line 426
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-virtual {v1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isVpnFilteringActive()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 427
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v1, :cond_6

    .line 429
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->clearMvpConnection()V

    .line 430
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 431
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    goto :goto_6

    .line 437
    :cond_1d
    if-eqz p1, :cond_45

    .line 439
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 440
    const-string v0, "Vpn"

    const-string v1, "We already did the privileged prepare for Mvp for this client, the establish will be for mvp if still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpAlive()Z

    move-result v0

    goto :goto_6

    .line 444
    :cond_37
    const-string v0, "Vpn"

    const-string v1, "Unprivileged call for a client not prepared by mvp: just check the list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isClientAllowedForHost(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    .line 450
    :cond_45
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 453
    if-eqz p2, :cond_54

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isClientAllowedForHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 454
    const/4 v0, 0x0

    goto :goto_6

    .line 458
    :cond_54
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v1, :cond_6

    .line 459
    const-string v1, "Vpn"

    const-string v2, "checkHostPrepare: clear mvp connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->clearMvpConnection()V

    .line 461
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    goto :goto_6
.end method

.method private clearMvpConnection()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-nez v1, :cond_e

    .line 332
    const-string v1, "Vpn"

    const-string/jumbo v2, "try to clear a mvp connection without namespace"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_d
    return-void

    .line 337
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Lcom/android/server/connectivity/VpnNamespace;->removeInterface()V

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_20

    .line 343
    :goto_16
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Lcom/android/server/connectivity/VpnNamespace;->close()V

    .line 345
    const/4 v1, 0x3

    invoke-direct {p0, v1, v3}, Lcom/android/server/connectivity/Vpn;->sendMessageToMvp(ILandroid/os/Bundle;)V

    goto :goto_d

    .line 339
    :catch_20
    move-exception v0

    .line 340
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "Vpn"

    const-string v2, "interface already removed while clearing mvp connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private enforceControlPermission()V
    .registers 8

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_9

    .line 1090
    :goto_8
    return-void

    .line 1083
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1084
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1087
    .local v3, "token":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1088
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1089
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_2f
    .catchall {:try_start_15 .. :try_end_24} :catchall_2a

    if-ne v1, v5, :cond_30

    .line 1095
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2a
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1092
    :catch_2f
    move-exception v5

    .line 1095
    :cond_30
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1349
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1351
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    .line 1352
    return-object v1

    .line 1356
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_11

    .line 1146
    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 1149
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 1145
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_10

    .line 1119
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 1122
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPersonaUserIds()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1126
    sget-boolean v4, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 1129
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_73

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_73

    .line 1130
    sget-boolean v4, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v4, :cond_53

    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > persona size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 1132
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-eq v4, v5, :cond_57

    .line 1133
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 1137
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_73
    sget-boolean v4, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v4, :cond_7e

    const-string v4, "Vpn"

    const-string v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_7e
    return-object v0
.end method

.method private hideNotification(I)V
    .registers 13
    .param p1, "user"    # I

    .prologue
    const v10, 0x1081006

    const/4 v9, 0x0

    .line 1287
    sget-boolean v6, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v6, :cond_22

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideNotification > Noti is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_22
    iget-boolean v6, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v6, :cond_27

    .line 1334
    :cond_26
    :goto_26
    return-void

    .line 1289
    :cond_27
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1291
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1294
    .local v5, "nm":Landroid/app/NotificationManager;
    if-eqz v5, :cond_26

    .line 1295
    iget-boolean v6, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnV2Enabled:Z

    if-eqz v6, :cond_e8

    .line 1296
    iget-boolean v6, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_70

    .line 1297
    sget-boolean v6, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v6, :cond_49

    const-string v6, "Vpn"

    const-string v7, "hideNotification > vpn type is system"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_49
    add-int v6, v10, p1

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1309
    sget-boolean v6, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v6, :cond_26

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1311
    :cond_70
    sget-boolean v6, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v6, :cond_7b

    const-string v6, "Vpn"

    const-string v7, "hideNotification > vpn type is per-app"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_7b
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    if-eqz v6, :cond_db

    .line 1314
    :try_start_81
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1315
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_ce

    .line 1316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1317
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1318
    .local v0, "domain":I
    const/4 v6, 0x0

    add-int v7, v10, v0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_ae} :catch_af

    goto :goto_93

    .line 1323
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/String;
    :catch_af
    move-exception v2

    .line 1324
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1321
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ce
    const/4 v6, 0x0

    add-int v7, v10, p1

    :try_start_d1
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d9} :catch_af

    goto/16 :goto_26

    .line 1327
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_db
    sget-boolean v6, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v6, :cond_26

    const-string v6, "Vpn"

    const-string v7, "hideNotification > knoxVpnService is not created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1331
    :cond_e8
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v10, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_26
.end method

.method private declared-synchronized initStrongSwanIntegrityTest()Z
    .registers 6

    .prologue
    .line 2101
    monitor-enter p0

    :try_start_1
    const-string v1, "Vpn"

    const-string v2, "Initting strongSwan integrity test"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/4 v0, 0x0

    .line 2103
    .local v0, "initSuccess":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_40

    .line 2104
    sget-boolean v1, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    if-nez v1, :cond_37

    .line 2105
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SECURITY_MANAGER_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->srvConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    .line 2108
    const-string v1, "Vpn"

    const-string v2, "Service bound done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    .line 2118
    :goto_2c
    if-nez v0, :cond_35

    .line 2119
    const-string v1, "Vpn"

    const-string v2, "Service bind failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_48

    .line 2121
    :cond_35
    monitor-exit p0

    return v0

    .line 2111
    :cond_37
    :try_start_37
    const-string v1, "Vpn"

    const-string v2, "Service already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const/4 v0, 0x1

    goto :goto_2c

    .line 2115
    :cond_40
    const-string v1, "Vpn"

    const-string v2, "Context null. Cannot bound service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_48

    goto :goto_2c

    .line 2101
    .end local v0    # "initSuccess":Z
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isMvpAlive()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_6

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    goto :goto_5
.end method

.method private isRunningLocked()Z
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 7
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 2079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2080
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2082
    const/4 v0, 0x1

    .line 2083
    .local v0, "result":Z
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1d

    .line 2084
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 2086
    :cond_1d
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v3, :cond_27

    .line 2087
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v3, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 2089
    :cond_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2090
    return v0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 927
    monitor-enter p0

    .line 928
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 929
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 930
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    move-result v3

    if-eqz v3, :cond_14

    .line 932
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16
    .catchall {:try_start_11 .. :try_end_14} :catchall_1f

    .line 937
    :cond_14
    :goto_14
    :try_start_14
    monitor-exit p0

    .line 938
    return-void

    .line 933
    :catch_16
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 937
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_1f
    move-exception v3

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 942
    monitor-enter p0

    .line 943
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 944
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 945
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_21

    move-result v3

    if-eqz v3, :cond_16

    .line 947
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 952
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 953
    return-void

    .line 948
    :catch_18
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 952
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_21
    move-exception v3

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v3
.end method

.method private removeVpnUserLocked(I)V
    .registers 5
    .param p1, "user"    # I

    .prologue
    const/4 v0, 0x1

    .line 903
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 905
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 906
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    if-ne v1, v0, :cond_2d

    .line 917
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_36

    .line 919
    .local v0, "forwardDns":Z
    :goto_26
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 921
    .end local v0    # "forwardDns":Z
    :cond_2d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 923
    return-void

    .line 917
    :cond_36
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private securityManagerReady()Z
    .registers 2

    .prologue
    .line 2125
    sget-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 811
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v3, :cond_26

    const-string v3, "Vpn"

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

    .line 812
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 814
    .local v1, "token":J
    :try_start_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v3, "extra_action"

    const-string v4, "dns_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v3, "extra_profile_name"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    if-eqz p2, :cond_49

    .line 819
    const-string v3, "dnsList"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 821
    :cond_49
    if-eqz p3, :cond_52

    .line 822
    const-string v3, "searchDomainList"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 824
    :cond_52
    const-string v3, "Vpn"

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

    .line 825
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_2a .. :try_end_71} :catchall_75

    .line 827
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    return-void

    .line 827
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_75
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 792
    sget-boolean v3, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v3, :cond_29

    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 796
    .local v1, "token":J
    :try_start_2d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string v3, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v3, "extra_profile_name"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v3, "extra_tun_id"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v3, "extra_state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    sget-boolean v3, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v3, :cond_70

    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_70
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_2d .. :try_end_77} :catchall_7b

    .line 805
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-void

    .line 805
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_7b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendMessageToMvp(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "messageId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_11

    .line 316
    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 317
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 319
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    .line 324
    .end local v1    # "message":Landroid/os/Message;
    :cond_11
    :goto_11
    return-void

    .line 320
    :catch_12
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot send message to mvp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 15
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    const/4 v9, 0x0

    const v10, 0x1081006

    .line 1235
    iget-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v7, :cond_9

    .line 1284
    :cond_8
    :goto_8
    return-void

    .line 1236
    :cond_9
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1238
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1240
    .local v5, "nm":Landroid/app/NotificationManager;
    if-eqz v5, :cond_8

    .line 1241
    iget-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnV2Enabled:Z

    if-eqz v7, :cond_e7

    .line 1242
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_2d

    const-string v7, "Vpn"

    const-string/jumbo v8, "showNotification > KNOX 2.0 enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_2d
    iget-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_70

    .line 1244
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_3e

    const-string v7, "Vpn"

    const-string/jumbo v8, "showNotification > vpn type is system"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_3e
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v7, p3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v6

    .line 1257
    .local v6, "notification":Landroid/app/Notification;
    add-int v7, v10, p3

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v7, v6, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1258
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showNotification > domain : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1260
    .end local v6    # "notification":Landroid/app/Notification;
    :cond_70
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_7c

    const-string v7, "Vpn"

    const-string/jumbo v8, "showNotification > vpn type is per-app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    if-eqz v7, :cond_d9

    .line 1263
    :try_start_82
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1264
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_8

    .line 1265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1266
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1267
    .local v0, "domain":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v6

    .line 1268
    .restart local v6    # "notification":Landroid/app/Notification;
    const/4 v7, 0x0

    add-int v8, v10, v0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_b9} :catch_ba

    goto :goto_94

    .line 1271
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    :catch_ba
    move-exception v2

    .line 1272
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Vpn"

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

    goto/16 :goto_8

    .line 1275
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d9
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "Vpn"

    const-string/jumbo v8, "showNotification > knoxVpnService is not created"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1279
    :cond_e7
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v6

    .line 1280
    .restart local v6    # "notification":Landroid/app/Notification;
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v10, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_8
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "charon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1546
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 1550
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1553
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1554
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1555
    monitor-exit p0

    return-void

    .line 1546
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private testStrongSwanIntegrity()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2129
    const/4 v1, 0x0

    .line 2131
    .local v1, "integrityTestPassed":Z
    :try_start_2
    const-string v4, "Vpn"

    const-string v5, "Doing strongSwan integrity test"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2134
    sget-object v4, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    invoke-interface {v4}, Lcom/sec/android/service/sm/service/ISecurityManager;->verifyVPN()I

    move-result v2

    .line 2136
    .local v2, "verifyResult":I
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyVpn returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    if-nez v2, :cond_3c

    const/4 v1, 0x1

    .line 2140
    :goto_31
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2141
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/connectivity/Vpn;->mIsSMServiceBound:Z

    .line 2148
    .end local v2    # "verifyResult":I
    :goto_3b
    return v1

    .restart local v2    # "verifyResult":I
    :cond_3c
    move v1, v3

    .line 2138
    goto :goto_31

    .line 2143
    .end local v2    # "verifyResult":I
    :cond_3e
    const-string v3, "Vpn"

    const-string v4, "Unable to do strongSwan integrity test: Service not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_46

    goto :goto_3b

    .line 2145
    :catch_46
    move-exception v0

    .line 2146
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to do strongSwan integrity test: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 289
    return-void
.end method


# virtual methods
.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 13
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1216
    if-nez p1, :cond_47

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040792

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1218
    .local v2, "title":Ljava/lang/String;
    :goto_d
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_55

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040794

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "text":Ljava/lang/String;
    :goto_1c
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1081006

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1230
    .local v0, "notification":Landroid/app/Notification;
    return-object v0

    .line 1216
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_47
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040793

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 1218
    .restart local v2    # "title":Ljava/lang/String;
    :cond_55
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040795

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 26
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 596
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 597
    .local v14, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_a1

    move-result-object v15

    .line 598
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 600
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v23, v0

    invoke-interface/range {v20 .. v23}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_3e
    .catchall {:try_start_16 .. :try_end_34} :catchall_a1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_42

    .line 602
    const/16 v18, 0x0

    .line 784
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-object v18

    .line 604
    :catch_3e
    move-exception v8

    .line 605
    .local v8, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_3c

    .line 608
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_42
    :try_start_42
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.net.VpnService"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_a1

    move-result-wide v16

    .line 613
    .local v16, "token":J
    :try_start_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 614
    .local v19, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v20

    if-eqz v20, :cond_a4

    .line 615
    new-instance v20, Ljava/lang/SecurityException;

    const-string v21, "Restricted users cannot establish VPNs"

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_7c} :catch_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_9c

    .line 626
    .end local v19    # "user":Landroid/content/pm/UserInfo;
    :catch_7c
    move-exception v8

    .line 627
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_7d
    new-instance v20, Ljava/lang/SecurityException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot find "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_9c
    .catchall {:try_start_7d .. :try_end_9c} :catchall_9c

    .line 629
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_9c
    move-exception v20

    :try_start_9d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    .line 596
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/UserManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "token":J
    :catchall_a1
    move-exception v20

    monitor-exit p0

    throw v20

    .line 618
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v14    # "mgr":Landroid/os/UserManager;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "token":J
    .restart local v19    # "user":Landroid/content/pm/UserInfo;
    :cond_a4
    :try_start_a4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 620
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_df

    .line 621
    new-instance v20, Ljava/lang/SecurityException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot find "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 623
    :cond_df
    const-string v20, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_116

    .line 624
    new-instance v20, Ljava/lang/SecurityException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not require "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_116} :catch_7c
    .catchall {:try_start_a4 .. :try_end_116} :catchall_9c

    .line 629
    :cond_116
    :try_start_116
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_139

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_139

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1c3

    .line 633
    :cond_139
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    .line 639
    :goto_141
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_152
    .catchall {:try_start_116 .. :try_end_152} :catchall_a1

    move-result-object v18

    .line 641
    .local v18, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_153
    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v21, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 661
    .local v12, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_17b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1cd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 663
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a1
    .catch Ljava/lang/RuntimeException; {:try_start_153 .. :try_end_1a1} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_1a1} :catch_1e9
    .catchall {:try_start_153 .. :try_end_1a1} :catchall_a1

    goto :goto_17b

    .line 725
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    :catch_1a2
    move-exception v8

    .line 726
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1a3
    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v21, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 727
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1b3
    .catchall {:try_start_1a3 .. :try_end_1b3} :catchall_a1

    .line 730
    :try_start_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1c2} :catch_439
    .catchall {:try_start_1b3 .. :try_end_1c2} :catchall_a1

    .line 734
    :goto_1c2
    :try_start_1c2
    throw v8

    .line 635
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "tun":Landroid/os/ParcelFileDescriptor;
    :cond_1c3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z
    :try_end_1cb
    .catchall {:try_start_1c2 .. :try_end_1cb} :catchall_a1

    goto/16 :goto_141

    .line 665
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "interfaze":Ljava/lang/String;
    .restart local v18    # "tun":Landroid/os/ParcelFileDescriptor;
    :cond_1cd
    :try_start_1cd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_21c

    .line 666
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "At least one address must be specified"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1e9
    .catch Ljava/lang/RuntimeException; {:try_start_1cd .. :try_end_1e9} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1e9} :catch_1e9
    .catchall {:try_start_1cd .. :try_end_1e9} :catchall_a1

    .line 736
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    :catch_1e9
    move-exception v13

    .line 739
    .local v13, "ioe":Ljava/io/IOException;
    :try_start_1ea
    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v21, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 740
    const-string v20, "Vpn"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MVP VPN is unable to start "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 743
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_21c
    .catchall {:try_start_1ea .. :try_end_21c} :catchall_a1

    .line 674
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "interfaze":Ljava/lang/String;
    :cond_21c
    :try_start_21c
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 675
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v20

    if-nez v20, :cond_265

    .line 677
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot bind "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 679
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v20, v0

    if-eqz v20, :cond_27c

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 682
    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_29f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_29f

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 685
    :cond_29f
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 686
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 687
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 692
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 694
    new-instance v20, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2e9
    .catch Ljava/lang/RuntimeException; {:try_start_21c .. :try_end_2e9} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_2e9} :catch_1e9
    .catchall {:try_start_21c .. :try_end_2e9} :catchall_a1

    move-result-wide v16

    .line 713
    :try_start_2ea
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_335

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 718
    :cond_335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_342
    .catchall {:try_start_2ea .. :try_end_342} :catchall_3e6

    .line 720
    :try_start_342
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_345
    .catch Ljava/lang/RuntimeException; {:try_start_342 .. :try_end_345} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_345} :catch_1e9
    .catchall {:try_start_342 .. :try_end_345} :catchall_a1

    .line 746
    :try_start_345
    const-string v20, "Vpn"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Established by "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v20, v0

    if-nez v20, :cond_3ee

    .line 751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37e
    .catchall {:try_start_345 .. :try_end_37e} :catchall_a1

    move-result-wide v16

    .line 753
    :try_start_37f
    invoke-virtual {v14}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_387
    :goto_387
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3eb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "user":Landroid/content/pm/UserInfo;
    check-cast v19, Landroid/content/pm/UserInfo;

    .line 754
    .restart local v19    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_396
    .catchall {:try_start_37f .. :try_end_396} :catchall_3e1

    move-result v20

    if-eqz v20, :cond_387

    .line 758
    :try_start_399
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_387

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_387

    .line 759
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3ba} :catch_3bb
    .catchall {:try_start_399 .. :try_end_3ba} :catchall_3e1

    goto :goto_387

    .line 763
    :catch_3bb
    move-exception v8

    .line 764
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3bc
    const-string v20, "Vpn"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to add user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to owner\'s VPN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e0
    .catchall {:try_start_3bc .. :try_end_3e0} :catchall_3e1

    goto :goto_387

    .line 769
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v19    # "user":Landroid/content/pm/UserInfo;
    :catchall_3e1
    move-exception v20

    :try_start_3e2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_3e6
    .catchall {:try_start_3e2 .. :try_end_3e6} :catchall_a1

    .line 720
    .restart local v19    # "user":Landroid/content/pm/UserInfo;
    :catchall_3e6
    move-exception v20

    :try_start_3e7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_3eb
    .catch Ljava/lang/RuntimeException; {:try_start_3e7 .. :try_end_3eb} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_3e7 .. :try_end_3eb} :catch_1e9
    .catchall {:try_start_3e7 .. :try_end_3eb} :catchall_a1

    .line 769
    :cond_3eb
    :try_start_3eb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    :cond_3ee
    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v21, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 776
    if-eqz v18, :cond_3c

    .line 777
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_411

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_42e

    .line 779
    :cond_411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 781
    :cond_42e
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V
    :try_end_437
    .catchall {:try_start_3eb .. :try_end_437} :catchall_a1

    goto/16 :goto_3c

    .line 731
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    .local v8, "e":Ljava/lang/RuntimeException;
    :catch_439
    move-exception v20

    goto/16 :goto_1c2
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 1588
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1590
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .prologue
    .line 1574
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1575
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 1583
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 1577
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1578
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1579
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1580
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1581
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 1574
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 960
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public getVpnType()Z
    .registers 2

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    return v0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 979
    :goto_5
    return-void

    .line 976
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 966
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 970
    :goto_6
    monitor-exit p0

    return-void

    .line 966
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 967
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public isAddressCovered(Ljava/net/InetAddress;)Z
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 835
    monitor-enter p0

    .line 836
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_a

    .line 837
    monitor-exit p0

    .line 839
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    monitor-exit p0

    goto :goto_9

    .line 840
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 495
    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d6

    move-result v7

    if-nez v7, :cond_10

    move v6, v0

    .line 557
    :cond_e
    :goto_e
    monitor-exit p0

    return v6

    .line 500
    :cond_10
    if-eqz p2, :cond_e

    :try_start_12
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "[Legacy VPN]"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 506
    :cond_22
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 509
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v7, :cond_7c

    .line 510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_d6

    move-result-wide v3

    .line 512
    .local v3, "token":J
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 513
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 514
    .local v2, "size":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_49

    move v0, v6

    .line 516
    .local v0, "forwardDns":Z
    :cond_49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    if-ge v1, v2, :cond_63

    .line 517
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 518
    .local v5, "user":I
    iget-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    if-ne v7, v6, :cond_5d

    .line 519
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 521
    :cond_5d
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 523
    .end local v5    # "user":I
    :cond_63
    iget-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z

    if-ne v7, v6, :cond_6e

    .line 524
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_2d .. :try_end_6e} :catchall_d9

    .line 527
    :cond_6e
    :try_start_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 530
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 531
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 535
    .end local v0    # "forwardDns":Z
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "token":J
    :cond_7c
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_d6

    if-eqz v7, :cond_de

    .line 537
    :try_start_80
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn$Connection;->access$300(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v7

    const v8, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_92} :catch_eb
    .catchall {:try_start_80 .. :try_end_92} :catchall_d6

    .line 542
    :goto_92
    :try_start_92
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 543
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 546
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V

    .line 553
    :cond_a0
    :goto_a0
    sget-boolean v7, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v7, :cond_c8

    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switched from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_c8
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 555
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 556
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "prepare"

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_92 .. :try_end_d4} :catchall_d6

    goto/16 :goto_e

    .line 495
    :catchall_d6
    move-exception v6

    monitor-exit p0

    throw v6

    .line 527
    .restart local v3    # "token":J
    :catchall_d9
    move-exception v6

    :try_start_da
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 548
    .end local v3    # "token":J
    :cond_de
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v7, :cond_a0

    .line 549
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 550
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_ea
    .catchall {:try_start_da .. :try_end_ea} :catchall_d6

    goto :goto_a0

    .line 539
    :catch_eb
    move-exception v7

    goto :goto_92
.end method

.method public declared-synchronized prepareForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z
    .registers 7
    .param p1, "newPackage"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v3, 0x1

    .line 362
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 365
    if-nez p1, :cond_f

    .line 366
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->clearMvpConnection()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_44

    .line 406
    :goto_d
    monitor-exit p0

    return v3

    .line 374
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 376
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v0, :cond_b3

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 379
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v0, :cond_41

    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareForMvp: package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_41
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_44

    goto :goto_d

    .line 362
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    .line 384
    :cond_47
    :try_start_47
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v0, :cond_69

    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareForMvp: package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not prepared, clearMvpConnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_69
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->clearMvpConnection()V

    .line 393
    :cond_6c
    :goto_6c
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v0, :cond_9a

    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switched from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for mvp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_9a
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mMvpMessenger:Landroid/os/Messenger;

    .line 399
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "prepare-mvp"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace;

    invoke-direct {v0}, Lcom/android/server/connectivity/VpnNamespace;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 405
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpClientsMgr:Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->addMvpClientToList(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 388
    :cond_b3
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b9
    .catchall {:try_start_47 .. :try_end_b9} :catchall_44

    goto :goto_6c
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 9
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 570
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_1c

    .line 572
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 575
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 577
    .local v2, "token":J
    :try_start_20
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_30

    .line 579
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 584
    return-void

    .line 579
    :catchall_30
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshNotification(Ljava/lang/String;ZI)V
    .registers 30
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "optionAdd"    # Z
    .param p3, "domain"    # I

    .prologue
    .line 1153
    sget-boolean v22, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v22, :cond_2e

    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "refreshNotification > domain : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", optionAdd : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v22, v0

    if-eqz v22, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_68

    .line 1155
    sget-boolean v22, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v22, :cond_67

    const-string v22, "Vpn"

    const-string v23, "refreshNotification > profileName is not matched"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_67
    :goto_67
    return-void

    .line 1158
    :cond_68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1160
    .local v13, "identity":J
    :try_start_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "notification"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 1162
    .local v18, "nm":Landroid/app/NotificationManager;
    if-eqz v18, :cond_139

    .line 1163
    if-eqz p2, :cond_165

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_147

    move-result-object v20

    .line 1165
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1167
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_89
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v25, v0

    invoke-interface/range {v22 .. v25}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_9e} :catch_13e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9e} :catch_147

    move-result-object v5

    .line 1171
    :try_start_9f
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1173
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1174
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 1175
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    if-lez v22, :cond_104

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    if-lez v22, :cond_104

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1050005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 1178
    .local v21, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1050006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1180
    .local v10, "height":I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1181
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1182
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1183
    .local v7, "c":Landroid/graphics/Canvas;
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1184
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1186
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v10    # "height":I
    .end local v21    # "width":I
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v19

    .line 1187
    .local v19, "notification":Landroid/app/Notification;
    const/16 v22, 0x0

    const v23, 0x1081006

    add-int v23, v23, p3

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_139} :catch_147

    .line 1212
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "label":Ljava/lang/String;
    .end local v18    # "nm":Landroid/app/NotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_139
    :goto_139
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_67

    .line 1168
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "nm":Landroid/app/NotificationManager;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_13e
    move-exception v9

    .line 1169
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_13f
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Invalid application"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_147} :catch_147

    .line 1209
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v18    # "nm":Landroid/app/NotificationManager;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_147
    move-exception v9

    .line 1210
    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 1189
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v18    # "nm":Landroid/app/NotificationManager;
    :cond_165
    :try_start_165
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_147

    move-result-object v22

    if-eqz v22, :cond_1dc

    .line 1191
    :try_start_16b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1192
    .local v8, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_139

    .line 1193
    const/4 v15, 0x0

    .line 1194
    .local v15, "isExists":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_186
    :goto_186
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_19e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1195
    .local v16, "item":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_186

    .line 1196
    const/4 v15, 0x1

    goto :goto_186

    .line 1199
    .end local v16    # "item":Ljava/lang/String;
    :cond_19e
    if-nez v15, :cond_139

    const/16 v22, 0x0

    const v23, 0x1081006

    add-int v23, v23, p3

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_1bb} :catch_1bd

    goto/16 :goto_139

    .line 1201
    .end local v8    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "isExists":Z
    :catch_1bd
    move-exception v9

    .line 1202
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_1be
    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_139

    .line 1205
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1dc
    sget-boolean v22, Lcom/android/server/connectivity/Vpn;->DBG:Z

    if-eqz v22, :cond_139

    const-string v22, "Vpn"

    const-string/jumbo v23, "showNotification > knoxVpnService is not created"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1e8} :catch_147

    goto/16 :goto_139
.end method

.method public setEnableNotifications(Z)V
    .registers 2
    .param p1, "enableNotif"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 249
    return-void
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 258
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 2095
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 27
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1366
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "KeyStore isn\'t unlocked"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1369
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v13

    .line 1370
    .local v13, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 1371
    .local v11, "gateway":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v12

    .line 1374
    .local v12, "iface":Ljava/lang/String;
    const-string v16, ""

    .line 1375
    .local v16, "privateKey":Ljava/lang/String;
    const-string v19, ""

    .line 1376
    .local v19, "userCert":Ljava/lang/String;
    const-string v8, ""

    .line 1377
    .local v8, "caCert":Ljava/lang/String;
    const-string v18, ""

    .line 1378
    .local v18, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1381
    .local v20, "value":[B
    if-nez v20, :cond_d0

    const/16 v19, 0x0

    .line 1383
    .end local v20    # "value":[B
    :cond_6b
    :goto_6b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1385
    .restart local v20    # "value":[B
    if-nez v20, :cond_dc

    const/4 v8, 0x0

    .line 1387
    .end local v20    # "value":[B
    :cond_95
    :goto_95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1389
    .restart local v20    # "value":[B
    if-nez v20, :cond_e6

    const/16 v18, 0x0

    .line 1391
    .end local v20    # "value":[B
    :cond_c0
    :goto_c0
    if-eqz v16, :cond_c8

    if-eqz v19, :cond_c8

    if-eqz v8, :cond_c8

    if-nez v18, :cond_f2

    .line 1392
    :cond_c8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load credentials"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1381
    .restart local v20    # "value":[B
    :cond_d0
    new-instance v19, Ljava/lang/String;

    .end local v19    # "userCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_6b

    .line 1385
    .restart local v19    # "userCert":Ljava/lang/String;
    :cond_dc
    new-instance v8, Ljava/lang/String;

    .end local v8    # "caCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_95

    .line 1389
    .restart local v8    # "caCert":Ljava/lang/String;
    :cond_e6
    new-instance v18, Ljava/lang/String;

    .end local v18    # "serverCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_c0

    .line 1396
    .end local v20    # "value":[B
    .restart local v18    # "serverCert":Ljava/lang/String;
    :cond_f2
    const/16 v17, 0x0

    .line 1397
    .local v17, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_426

    .line 1418
    :goto_fb
    :pswitch_fb
    const/4 v9, 0x0

    .line 1422
    .local v9, "charon":[Ljava/lang/String;
    const-string v2, "security.mdpp"

    const-string v3, "Disabled"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1423
    .local v14, "mdppModePropertyValue":Ljava/lang/String;
    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDPP property value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    if-eqz v14, :cond_1c6

    const-string v2, "Enabled"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 1428
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 1430
    const-string v2, "Vpn"

    const-string v3, "Initting security manager."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->initStrongSwanIntegrityTest()Z

    move-result v2

    if-nez v2, :cond_1d2

    .line 1433
    const-string v2, "Vpn"

    const-string v3, "SecurityManagerService init failed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_13f
    return-void

    .line 1399
    .end local v9    # "charon":[Ljava/lang/String;
    .end local v14    # "mdppModePropertyValue":Ljava/lang/String;
    :pswitch_140
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "udppsk"

    aput-object v3, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x5

    const-string v3, "1701"

    aput-object v3, v17, v2

    .line 1403
    .restart local v17    # "racoon":[Ljava/lang/String;
    goto :goto_fb

    .line 1405
    :pswitch_169
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "udprsa"

    aput-object v3, v17, v2

    const/4 v2, 0x3

    aput-object v16, v17, v2

    const/4 v2, 0x4

    aput-object v19, v17, v2

    const/4 v2, 0x5

    aput-object v8, v17, v2

    const/4 v2, 0x6

    aput-object v18, v17, v2

    const/4 v2, 0x7

    const-string v3, "1701"

    aput-object v3, v17, v2

    .line 1409
    .restart local v17    # "racoon":[Ljava/lang/String;
    goto/16 :goto_fb

    .line 1411
    :pswitch_192
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x2

    const-string v3, "hybridrsa"

    aput-object v3, v17, v2

    const/4 v2, 0x3

    aput-object v8, v17, v2

    const/4 v2, 0x4

    aput-object v18, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v17, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v17, v2

    const/16 v2, 0x8

    aput-object v11, v17, v2

    .restart local v17    # "racoon":[Ljava/lang/String;
    goto/16 :goto_fb

    .line 1439
    .restart local v9    # "charon":[Ljava/lang/String;
    .restart local v14    # "mdppModePropertyValue":Ljava/lang/String;
    :cond_1c6
    const-string v2, "Vpn"

    const-string v3, "mdpp mode not enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 1445
    :cond_1d2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_434

    .line 1494
    :goto_1d9
    :pswitch_1d9
    if-eqz v9, :cond_2bd

    move-object/from16 v21, v9

    .line 1495
    .local v21, "vpnParameters":[Ljava/lang/String;
    :goto_1dd
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c1

    .line 1497
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Connecting to VPN network "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, " failed - unsecure"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 1447
    .end local v21    # "vpnParameters":[Ljava/lang/String;
    :pswitch_220
    const/4 v2, 0x6

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "xauthpsk"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v9, v2

    .line 1451
    .restart local v9    # "charon":[Ljava/lang/String;
    goto :goto_1d9

    .line 1453
    :pswitch_24d
    const/16 v2, 0x8

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "xauthrsa"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    aput-object v16, v9, v2

    const/4 v2, 0x3

    aput-object v19, v9, v2

    const/4 v2, 0x4

    aput-object v8, v9, v2

    const/4 v2, 0x5

    aput-object v18, v9, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v9, v2

    .line 1457
    .restart local v9    # "charon":[Ljava/lang/String;
    goto/16 :goto_1d9

    .line 1459
    :pswitch_27a
    const/4 v2, 0x4

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "ikev2psk"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v9, v2

    .line 1463
    .restart local v9    # "charon":[Ljava/lang/String;
    goto/16 :goto_1d9

    .line 1465
    :pswitch_299
    const/4 v2, 0x7

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "ikev2rsa"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    aput-object v16, v9, v2

    const/4 v2, 0x3

    aput-object v19, v9, v2

    const/4 v2, 0x4

    aput-object v8, v9, v2

    const/4 v2, 0x5

    aput-object v18, v9, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v3, v9, v2

    .restart local v9    # "charon":[Ljava/lang/String;
    goto/16 :goto_1d9

    :cond_2bd
    move-object/from16 v21, v17

    .line 1494
    goto/16 :goto_1dd

    .line 1507
    .restart local v21    # "vpnParameters":[Ljava/lang/String;
    :cond_2c1
    const/4 v15, 0x0

    .line 1508
    .local v15, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_442

    .line 1529
    :goto_2c9
    new-instance v10, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v10}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1530
    .local v10, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1531
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1532
    iput-object v12, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1533
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1535
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_300

    .line 1537
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1539
    :cond_300
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31a

    .line 1540
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1542
    :cond_31a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v9, v15}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 1510
    .end local v10    # "config":Lcom/android/internal/net/VpnConfig;
    :pswitch_323
    const/16 v2, 0x14

    new-array v15, v2, [Ljava/lang/String;

    .end local v15    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v15, v2

    const/4 v2, 0x1

    const-string v3, "pptp"

    aput-object v3, v15, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x3

    const-string v3, "1723"

    aput-object v3, v15, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v15, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x6

    const-string v3, "password"

    aput-object v3, v15, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v15, v2

    const/16 v2, 0x8

    const-string v3, "linkname"

    aput-object v3, v15, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "vpn"

    aput-object v3, v15, v2

    const/16 v2, 0xa

    const-string v3, "refuse-eap"

    aput-object v3, v15, v2

    const/16 v2, 0xb

    const-string v3, "nodefaultroute"

    aput-object v3, v15, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "usepeerdns"

    aput-object v3, v15, v2

    const/16 v2, 0xd

    const-string v3, "idle"

    aput-object v3, v15, v2

    const/16 v2, 0xe

    const-string v3, "1800"

    aput-object v3, v15, v2

    const/16 v2, 0xf

    const-string v3, "mtu"

    aput-object v3, v15, v2

    const/16 v2, 0x10

    const-string v3, "1400"

    aput-object v3, v15, v2

    const/16 v2, 0x11

    const-string v3, "mru"

    aput-object v3, v15, v2

    const/16 v2, 0x12

    const-string v3, "1400"

    aput-object v3, v15, v2

    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v2, :cond_3a5

    const-string v2, "+mppe"

    :goto_3a1
    aput-object v2, v15, v3

    .line 1517
    .restart local v15    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_2c9

    .line 1510
    .end local v15    # "mtpd":[Ljava/lang/String;
    :cond_3a5
    const-string v2, "nomppe"

    goto :goto_3a1

    .line 1520
    .restart local v15    # "mtpd":[Ljava/lang/String;
    :pswitch_3a8
    const/16 v2, 0x14

    new-array v15, v2, [Ljava/lang/String;

    .end local v15    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v15, v2

    const/4 v2, 0x1

    const-string v3, "l2tp"

    aput-object v3, v15, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x3

    const-string v3, "1701"

    aput-object v3, v15, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v15, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x7

    const-string v3, "password"

    aput-object v3, v15, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v15, v2

    const/16 v2, 0x9

    const-string v3, "linkname"

    aput-object v3, v15, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "vpn"

    aput-object v3, v15, v2

    const/16 v2, 0xb

    const-string v3, "refuse-eap"

    aput-object v3, v15, v2

    const/16 v2, 0xc

    const-string v3, "nodefaultroute"

    aput-object v3, v15, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "usepeerdns"

    aput-object v3, v15, v2

    const/16 v2, 0xe

    const-string v3, "idle"

    aput-object v3, v15, v2

    const/16 v2, 0xf

    const-string v3, "1800"

    aput-object v3, v15, v2

    const/16 v2, 0x10

    const-string v3, "mtu"

    aput-object v3, v15, v2

    const/16 v2, 0x11

    const-string v3, "1300"

    aput-object v3, v15, v2

    const/16 v2, 0x12

    const-string v3, "mru"

    aput-object v3, v15, v2

    const/16 v2, 0x13

    const-string v3, "1300"

    aput-object v3, v15, v2

    .restart local v15    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_2c9

    .line 1397
    :pswitch_data_426
    .packed-switch 0x1
        :pswitch_140
        :pswitch_169
        :pswitch_fb
        :pswitch_fb
        :pswitch_192
    .end packed-switch

    .line 1445
    :pswitch_data_434
    .packed-switch 0x3
        :pswitch_220
        :pswitch_24d
        :pswitch_1d9
        :pswitch_27a
        :pswitch_299
    .end packed-switch

    .line 1508
    :pswitch_data_442
    .packed-switch 0x0
        :pswitch_323
        :pswitch_3a8
        :pswitch_3a8
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .registers 3

    .prologue
    .line 1558
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_11

    .line 1559
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1562
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 1565
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    .line 1567
    :cond_11
    monitor-exit p0

    return-void

    .line 1565
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 1558
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .registers 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
