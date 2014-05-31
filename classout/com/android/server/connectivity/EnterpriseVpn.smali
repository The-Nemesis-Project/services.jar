.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;,
        Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "EnterpriseVpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field final knoxVpnV1Enabled:Z

.field final knoxVpnV2Enabled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field mLabel:Ljava/lang/String;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mProfileName:Ljava/lang/String;

.field private mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

.field private mRouteInfo:Z

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 133
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnCallback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Ljava/lang/String;Landroid/os/INetworkManagementService;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnCallback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "userId"    # I

    .prologue
    .line 141
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mEnableTeardown:Z

    .line 123
    const-string v1, "1"

    const-string v3, "ro.config.knox"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV1Enabled:Z

    .line 124
    const-string/jumbo v1, "v30"

    const-string v3, "ro.config.knox"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    .line 127
    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 541
    new-instance v1, Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 142
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 143
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 144
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 145
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 148
    .local v12, "token":J
    :try_start_63
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_ae
    .catchall {:try_start_63 .. :try_end_6a} :catchall_cc

    .line 152
    :goto_6a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 167
    .local v2, "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v4, "localeFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    if-nez p5, :cond_ad

    .line 175
    new-instance v1, Lcom/android/server/connectivity/EnterpriseVpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    :cond_ad
    return-void

    .line 149
    .end local v2    # "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "localeFilter":Landroid/content/IntentFilter;
    :catch_ae
    move-exception v11

    .line 150
    .local v11, "e":Ljava/lang/Exception;
    :try_start_af
    const-string v1, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to register mObserver : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_af .. :try_end_cb} :catchall_cc

    goto :goto_6a

    .line 152
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_cc
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->sendInterfaceStateToKnoxVpn(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addVpnUserLocked(I)V
    .registers 8
    .param p1, "user"    # I

    .prologue
    const/4 v2, 0x1

    .line 883
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 884
    const-string v3, "EnterpriseVpn"

    const-string v4, "In addVpnUserLocked before isRunningLocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_19

    .line 886
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN is not active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :cond_19
    iget-boolean v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v3, v2, :cond_63

    .line 890
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_78

    move v1, v2

    .line 892
    .local v1, "forwardDns":Z
    :goto_2e
    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In addVpnUserLocked before addUserForwarding()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_63} :catch_7a

    .line 901
    .end local v1    # "forwardDns":Z
    :cond_63
    :goto_63
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 904
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    const-string v4, "[Legacy VPN]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 905
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 907
    :cond_77
    return-void

    .line 890
    :cond_78
    const/4 v1, 0x0

    goto :goto_2e

    .line 896
    .restart local v1    # "forwardDns":Z
    :catch_7a
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_63
.end method

.method private enforceControlPermission()V
    .registers 3

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 654
    return-void

    .line 656
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unauthorized Caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized getConnectivityService()Landroid/net/IConnectivityManager;
    .registers 5

    .prologue
    .line 252
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_11

    .line 253
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2f
    .catchall {:try_start_1 .. :try_end_11} :catchall_4d

    .line 258
    :cond_11
    :goto_11
    :try_start_11
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectivityService: mConnectivityService value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_4d

    monitor-exit p0

    return-object v1

    .line 255
    :catch_2f
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4d

    goto :goto_11

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 863
    monitor-enter p0

    :try_start_1
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_41

    move-result-object v1

    .line 865
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_7
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 866
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_22
    .catchall {:try_start_7 .. :try_end_16} :catchall_41

    move-result-object v2

    .line 874
    :goto_17
    monitor-exit p0

    return-object v2

    .line 868
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_22
    .catchall {:try_start_19 .. :try_end_20} :catchall_41

    move-result-object v2

    goto :goto_17

    .line 870
    :catch_22
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "EnterpriseVpn"

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

    .line 874
    const/4 v2, 0x0

    goto :goto_17

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_11

    .line 265
    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 268
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 264
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_10

    .line 631
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    .line 634
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1a

    .line 274
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 277
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_14
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 281
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private isRunningLocked()Z
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
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
    .line 931
    monitor-enter p0

    .line 932
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 933
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 934
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    move-result v3

    if-eqz v3, :cond_14

    .line 936
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->addVpnUserLocked(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16
    .catchall {:try_start_11 .. :try_end_14} :catchall_1f

    .line 941
    :cond_14
    :goto_14
    :try_start_14
    monitor-exit p0

    .line 942
    return-void

    .line 937
    :catch_16
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 941
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
    .line 946
    monitor-enter p0

    .line 947
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 948
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 949
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_21

    move-result v3

    if-eqz v3, :cond_16

    .line 951
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->removeVpnUserLocked(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 956
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 957
    return-void

    .line 952
    :catch_18
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 956
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
    .registers 6
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x1

    .line 910
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 912
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_12

    .line 913
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN is not active"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 916
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v2, v1, :cond_2d

    .line 917
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_36

    .line 920
    .local v1, "forwardDns":Z
    :goto_26
    :try_start_26
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2d} :catch_38

    .line 925
    .end local v1    # "forwardDns":Z
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 926
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification()V

    .line 927
    return-void

    .line 917
    :cond_36
    const/4 v1, 0x0

    goto :goto_26

    .line 921
    .restart local v1    # "forwardDns":Z
    :catch_38
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2d
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 612
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_29

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

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

    .line 613
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 616
    .local v1, "token":J
    :try_start_2d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v3, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v3, "extra_profile_name"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v3, "extra_tun_id"

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v3, "extra_state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_70

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_70
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_2d .. :try_end_77} :catchall_7b

    .line 625
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    return-void

    .line 625
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_7b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public closeInterface()V
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 791
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 793
    sget-object v0, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 795
    :cond_10
    return-void
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 662
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x1040792

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v4, 0x1040794

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "text":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1081008

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 675
    .local v0, "notification":Landroid/app/Notification;
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 32
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    .line 382
    .local v19, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_a7

    move-result-object v20

    .line 383
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 385
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    invoke-interface/range {v26 .. v29}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_3e
    .catchall {:try_start_16 .. :try_end_34} :catchall_a7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_42

    .line 387
    const/16 v23, 0x0

    .line 508
    :goto_3c
    monitor-exit p0

    return-object v23

    .line 389
    :catch_3e
    move-exception v10

    .line 390
    .local v10, "e":Ljava/lang/Exception;
    const/16 v23, 0x0

    goto :goto_3c

    .line 394
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_42
    :try_start_42
    new-instance v17, Landroid/content/Intent;

    const-string v26, "android.net.VpnService"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_65
    .catchall {:try_start_42 .. :try_end_65} :catchall_a7

    move-result-wide v21

    .line 399
    .local v21, "token":J
    :try_start_66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 400
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v26

    if-eqz v26, :cond_aa

    .line 401
    new-instance v26, Ljava/lang/SecurityException;

    const-string v27, "Restricted users cannot establish VPNs"

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_82} :catch_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_a2

    .line 412
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :catch_82
    move-exception v10

    .line 413
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_83
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_a2
    .catchall {:try_start_83 .. :try_end_a2} :catchall_a2

    .line 415
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_a2
    move-exception v26

    :try_start_a3
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a7

    .line 381
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "mgr":Landroid/os/UserManager;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "token":J
    :catchall_a7
    move-exception v26

    monitor-exit p0

    throw v26

    .line 404
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v19    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "token":J
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_aa
    :try_start_aa
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 406
    .local v16, "info":Landroid/content/pm/ResolveInfo;
    if-nez v16, :cond_e7

    .line 407
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot find "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 409
    :cond_e7
    const-string v26, "android.permission.BIND_VPN_SERVICE"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_120

    .line 410
    new-instance v26, Ljava/lang/SecurityException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " does not require "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_120} :catch_82
    .catchall {:try_start_aa .. :try_end_120} :catchall_a2

    .line 415
    :cond_120
    :try_start_120
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_143

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_143

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_14b

    .line 419
    :cond_143
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    .line 424
    :cond_14b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 425
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mLabel:Ljava/lang/String;

    .line 426
    const/16 v25, -0x1

    .line 427
    .local v25, "width":I
    const/4 v13, -0x1

    .line 428
    .local v13, "height":I
    const/4 v12, -0x1

    .line 429
    .local v12, "fixed_size":I
    const/4 v15, 0x0

    .line 432
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-nez v26, :cond_1e7

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1081008

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 434
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    if-lez v26, :cond_1e7

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    if-lez v26, :cond_1e7

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 439
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 440
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    .line 441
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 442
    .local v8, "c":Landroid/graphics/Canvas;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    .end local v8    # "c":Landroid/graphics/Canvas;
    :cond_1e7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreate(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_1f8
    .catchall {:try_start_120 .. :try_end_1f8} :catchall_a7

    move-result-object v23

    .line 454
    .local v23, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_1f9
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v18

    .line 455
    .local v18, "interfaze":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v7, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_214
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_24d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 458
    .local v5, "address":Landroid/net/LinkAddress;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_23a} :catch_23b
    .catchall {:try_start_1f9 .. :try_end_23a} :catchall_a7

    goto :goto_214

    .line 496
    .end local v5    # "address":Landroid/net/LinkAddress;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "interfaze":Ljava/lang/String;
    :catch_23b
    move-exception v10

    .line 497
    .local v10, "e":Ljava/lang/Exception;
    :try_start_23c
    const-string v26, "EnterpriseVpn"

    const-string v27, "Exception in creating tun interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_246
    .catchall {:try_start_23c .. :try_end_246} :catchall_a7

    .line 500
    :try_start_246
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_249} :catch_3c3
    .catchall {:try_start_246 .. :try_end_249} :catchall_a7

    .line 505
    :goto_249
    const/16 v23, 0x0

    goto/16 :goto_3c

    .line 460
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v18    # "interfaze":Ljava/lang/String;
    :cond_24d
    :try_start_24d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_26b

    .line 461
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "At least one address must be specified"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 464
    :cond_26b
    new-instance v9, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v9, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    .line 465
    .local v9, "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_2b6

    .line 467
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot bind "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 469
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2cd

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 472
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2f2

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 476
    :cond_2f2
    new-instance v26, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 477
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 478
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 482
    sget-object v26, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_330
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_330} :catch_23b
    .catchall {:try_start_24d .. :try_end_330} :catchall_a7

    move-result-wide v21

    .line 486
    :try_start_331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37e

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 491
    :cond_37e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->addVpnUserLocked(I)V
    :try_end_38b
    .catchall {:try_start_331 .. :try_end_38b} :catchall_3be

    .line 493
    :try_start_38b
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_38e
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_38e} :catch_23b
    .catchall {:try_start_38b .. :try_end_38e} :catchall_a7

    .line 507
    :try_start_38e
    const-string v26, "EnterpriseVpn"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Established by "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " on "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bc
    .catchall {:try_start_38e .. :try_end_3bc} :catchall_a7

    goto/16 :goto_3c

    .line 493
    :catchall_3be
    move-exception v26

    :try_start_3bf
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_3c3
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3c3} :catch_23b
    .catchall {:try_start_3bf .. :try_end_3c3} :catchall_a7

    .line 501
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "interfaze":Ljava/lang/String;
    .restart local v10    # "e":Ljava/lang/Exception;
    :catch_3c3
    move-exception v11

    .line 502
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_3c4
    const-string v26, "EnterpriseVpn"

    const-string v27, "Exception in closing tun interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3ce
    .catchall {:try_start_3c4 .. :try_end_3ce} :catchall_a7

    goto/16 :goto_249
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
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
    .line 847
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 850
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_6d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6d

    .line 851
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_53

    const-string v4, "EnterpriseVpn"

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

    .line 852
    :cond_53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 853
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 856
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_6d
    sget-boolean v4, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v4, :cond_78

    const-string v4, "EnterpriseVpn"

    const-string v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_78
    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public hideNotification()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 800
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "EnterpriseVpn"

    const-string v7, "hideNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_c
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 803
    .local v5, "nm":Landroid/app/NotificationManager;
    if-eqz v5, :cond_2a

    .line 804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 805
    .local v3, "identity":J
    iget-boolean v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v6, :cond_2b

    .line 806
    const/16 v6, 0x3e9

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 817
    :cond_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    .end local v3    # "identity":J
    :cond_2a
    return-void

    .line 808
    .restart local v3    # "identity":J
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 809
    .local v1, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    if-eqz v1, :cond_27

    .line 811
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 812
    .local v0, "domain":I
    sget-boolean v6, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v6, :cond_69

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_69
    add-int/lit16 v6, v0, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_3d
.end method

.method public hideNotification(I)V
    .registers 8
    .param p1, "domain"    # I

    .prologue
    .line 822
    sget-boolean v3, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideNotification > domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1c
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 825
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz v2, :cond_3a

    .line 826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 827
    .local v0, "identity":J
    const/4 v3, 0x0

    add-int/lit16 v4, p1, 0x3e9

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 828
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    .end local v0    # "identity":J
    :cond_3a
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 530
    :goto_5
    return-void

    .line 527
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public isConnectedProfile()Z
    .registers 4

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    sget-object v2, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->CONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    sget-object v2, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    if-ne v1, v2, :cond_e

    .line 535
    :cond_d
    const/4 v0, 0x1

    .line 537
    :cond_e
    sget-object v1, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->IDLE:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 538
    return v0
.end method

.method public declared-synchronized prepare()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 294
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->enforceControlPermission()V

    .line 297
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v8, :cond_6a

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_52

    move-result-wide v4

    .line 300
    .local v4, "token":J
    :try_start_e
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 301
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 302
    .local v3, "size":I
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v8, :cond_2a

    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2a

    move v1, v7

    .line 304
    .local v1, "forwardDns":Z
    :cond_2a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v3, :cond_55

    .line 305
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 306
    .local v6, "user":I
    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v8, v7, :cond_45

    .line 307
    const-string v8, "EnterpriseVpn"

    const-string v9, "Before clearUserForwarding in prepare EnterpriseVPN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_4d

    .line 309
    :try_start_3e
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_45} :catch_48
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 304
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 310
    :catch_48
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_45

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "user":I
    :catchall_4d
    move-exception v7

    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    .line 294
    .end local v4    # "token":J
    :catchall_52
    move-exception v7

    monitor-exit p0

    throw v7

    .line 317
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "token":J
    :cond_55
    :try_start_55
    iget-boolean v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    if-ne v8, v7, :cond_67

    .line 318
    const-string v8, "EnterpriseVpn"

    const-string v9, "Before clearMarkedForwarding in prepare EnterpriseVPN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_4d

    .line 323
    :cond_67
    :try_start_67
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "token":J
    :cond_6a
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_52

    if-eqz v8, :cond_8a

    .line 330
    :try_start_6e
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->access$300(Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Landroid/os/IBinder;

    move-result-object v8

    const v9, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_9f
    .catchall {:try_start_6e .. :try_end_80} :catchall_52

    .line 335
    :goto_80
    :try_start_80
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 336
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 338
    :cond_8a
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    if-eqz v8, :cond_9a

    .line 339
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 340
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 341
    sget-object v8, Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;->DISCONNECTED:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileState:Lcom/android/server/connectivity/EnterpriseVpn$profileStateVals;

    .line 343
    :cond_9a
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_9d
    .catchall {:try_start_80 .. :try_end_9d} :catchall_52

    .line 344
    monitor-exit p0

    return v7

    .line 332
    :catch_9f
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v8, "EnterpriseVpn"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_52

    goto :goto_80
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
    .line 356
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 357
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_1c

    .line 359
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 364
    .local v2, "token":J
    :try_start_20
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_30

    .line 366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniProtect(ILjava/lang/String;)V

    .line 369
    return-void

    .line 366
    :catchall_30
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reconnectDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public refreshNotification(ZI)V
    .registers 11
    .param p1, "optionAdd"    # Z
    .param p2, "domain"    # I

    .prologue
    .line 833
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v5, :cond_26

    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshNotification > domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", optionAdd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 836
    .local v1, "identity":J
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 838
    .local v3, "nm":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v5, v6, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    .line 839
    .local v4, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    add-int/lit16 v6, p2, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4b} :catch_4f

    .line 843
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    return-void

    .line 840
    :catch_4f
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 220
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    return-void
.end method

.method public showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    .registers 16
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "optionAdd"    # Z

    .prologue
    const/4 v12, 0x0

    .line 679
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_2a

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showNotification > profileName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , optionAdd : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_2a
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 683
    .local v7, "nm":Landroid/app/NotificationManager;
    if-eqz p1, :cond_38

    if-nez v7, :cond_40

    .line 684
    :cond_38
    const-string v9, "EnterpriseVpn"

    const-string v10, "Error : can not init"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3f
    :goto_3f
    return-void

    .line 688
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 689
    if-eqz v7, :cond_3f

    if-eqz p1, :cond_3f

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 692
    .local v4, "identity":J
    iget-boolean v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v9, :cond_77

    .line 693
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_5e

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > KNOX 1.0 enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_5e
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpn(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;Z)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 695
    .local v8, "notification":Landroid/app/Notification;
    const/16 v9, 0x3e9

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x1

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v12, v9, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 732
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_73
    :goto_73
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    .line 697
    :cond_77
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_83

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > KNOX 2.0 enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_83
    iget-boolean v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ce

    .line 699
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_94

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > vpn type is system"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_94
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v9, p1, p2, v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 713
    .restart local v8    # "notification":Landroid/app/Notification;
    iget v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v9, v9, 0x3e9

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v12, v9, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 714
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_73

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showNotification > domain : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 716
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_ce
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_da

    const-string v9, "EnterpriseVpn"

    const-string/jumbo v10, "showNotification > vpn type is per-app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_da
    :try_start_da
    iget-object v9, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 719
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_73

    .line 720
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_e6
    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 721
    .local v6, "item":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 722
    .local v0, "domain":I
    iget-object v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v8

    .line 723
    .restart local v8    # "notification":Landroid/app/Notification;
    const/4 v9, 0x0

    add-int/lit16 v10, v0, 0x3e9

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 724
    sget-boolean v9, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v9, :cond_e6

    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showNotification > keyicon notifyed to user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_128} :catch_129

    goto :goto_e6

    .line 727
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :catch_129
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseVpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73
.end method

.method protected startMonitoringInternal()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public teardown()Z
    .registers 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public teardownDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateNotification()V
    .registers 15

    .prologue
    .line 739
    monitor-enter p0

    :try_start_1
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_20

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_20
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 742
    .local v6, "nm":Landroid/app/NotificationManager;
    if-eqz v6, :cond_6b

    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 744
    .local v3, "identity":J
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x1040792

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 745
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    const v11, 0x1040794

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 747
    .local v8, "text":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnV2Enabled:Z

    if-nez v10, :cond_6d

    .line 748
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_52

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 1.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_52
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefresh(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 750
    .local v7, "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    const/16 v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 780
    .end local v7    # "notification":Landroid/app/Notification;
    :cond_68
    :goto_68
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_c5

    .line 782
    .end local v3    # "identity":J
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_6b
    monitor-exit p0

    return-void

    .line 752
    .restart local v3    # "identity":J
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_6d
    :try_start_6d
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_79

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_79
    iget-boolean v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c8

    .line 754
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_8a

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_8a
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-static {v10, v11}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 766
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    add-int/lit16 v11, v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 767
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_68

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > domain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_6d .. :try_end_c4} :catchall_c5

    goto :goto_68

    .line 739
    .end local v3    # "identity":J
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :catchall_c5
    move-exception v10

    monitor-exit p0

    throw v10

    .line 769
    .restart local v3    # "identity":J
    .restart local v6    # "nm":Landroid/app/NotificationManager;
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_c8
    :try_start_c8
    sget-boolean v10, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    if-eqz v10, :cond_d4

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is per-app"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_d4
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 771
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_68

    .line 772
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 773
    .local v5, "item":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 774
    .local v0, "domain":I
    iget-object v10, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 775
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    add-int/lit16 v11, v0, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_107
    .catchall {:try_start_c8 .. :try_end_107} :catchall_c5

    goto :goto_e2
.end method
