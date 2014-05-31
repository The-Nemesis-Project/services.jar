.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.super Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAP_KEY_VALUESTRING:Ljava/lang/String; = "value_string"

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static TAG:Ljava/lang/String;

.field public static VPN_RETURN_INT_ERROR:I

.field private static cisco_proxy_application:Ljava/lang/String;

.field private static mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private static mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

.field private static mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

.field private vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 105
    const-string v0, "KnoxVpnEngineService"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    .line 135
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 137
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 138
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 140
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3576
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 125
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 127
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 131
    const-string v0, "knoxv_"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 143
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing in constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 151
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    .line 152
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 155
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 158
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHandlerThread()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 162
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .prologue
    .line 100
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleVpnInterfaceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageAdded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleConnectivityAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserRemoved(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHashtable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addBlockingRulesForPackages()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilter()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->registerPersonaObserverForVpn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserSwitched(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method private addBlockingRulesForPackages()V
    .registers 8

    .prologue
    .line 2322
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "addBlockingRulesForPackages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->updateIpBlockingRule()V

    .line 2326
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2327
    .local v3, "profileName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding iptables for profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    goto :goto_16

    .line 2335
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 2336
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBlockingRulesForPackages : Exception when reading package DB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5b
    return-void

    .line 2331
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5c
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2332
    .restart local v3    # "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 2333
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7f} :catch_3e

    goto :goto_66
.end method

.method private addMangleExceptions(Ljava/lang/String;)V
    .registers 8
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 2879
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2881
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 2882
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 2883
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForUid(I)V

    .line 2885
    return-void
.end method

.method private addPackagesToIpTables(Ljava/lang/String;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3235
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v5

    .line 3238
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3239
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_27

    .line 3262
    :cond_26
    return-void

    .line 3243
    :cond_27
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_46

    .line 3244
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3245
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 3246
    .local v1, "cid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3247
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v8

    invoke-direct {p0, p1, v7, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 3250
    .end local v1    # "cid":I
    .end local v3    # "interfaceName":Ljava/lang/String;
    :cond_46
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 3251
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p.getPackageName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3254
    .local v6, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3255
    .restart local v3    # "interfaceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3256
    if-eqz v3, :cond_a1

    .line 3257
    invoke-direct {p0, p1, v6, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4e

    .line 3259
    :cond_a1
    invoke-direct {p0, p1, v6, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_4e
.end method

.method private declared-synchronized blockProxyService(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2955
    monitor-enter p0

    const/4 v8, 0x0

    .line 2956
    .local v8, "proxyPresent":Z
    const/4 v7, 0x0

    .line 2957
    .local v7, "proxyPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2959
    .local v6, "proxyClassName":Ljava/lang/String;
    :try_start_4
    new-instance v11, Landroid/content/Intent;

    const-string v13, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2960
    .local v11, "queryServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2961
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v5, v11, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 2962
    .local v10, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_a5

    .line 2963
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2964
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The blockProxyService packageName value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "whose class name is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 2966
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2967
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 2968
    const/4 v8, 0x1

    .line 2972
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_70
    if-eqz v8, :cond_a5

    .line 2973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2974
    .local v1, "blockToken":J
    const/4 v13, 0x1

    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v7, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 2975
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_84} :catch_88
    .catchall {:try_start_4 .. :try_end_84} :catchall_bf

    .line 2976
    const/4 v8, 0x1

    move v9, v8

    .line 2984
    .end local v1    # "blockToken":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "proxyPresent":Z
    .end local v10    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "queryServiceIntent":Landroid/content/Intent;
    .local v9, "proxyPresent":I
    :goto_86
    monitor-exit p0

    return v9

    .line 2980
    .end local v9    # "proxyPresent":I
    .restart local v8    # "proxyPresent":Z
    :catch_88
    move-exception v3

    .line 2981
    .local v3, "e":Ljava/lang/Exception;
    :try_start_89
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at blockProxyService "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a5
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "blockProxyService : proxyPresent value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_89 .. :try_end_bd} :catchall_bf

    move v9, v8

    .line 2984
    .restart local v9    # "proxyPresent":I
    goto :goto_86

    .line 2955
    .end local v9    # "proxyPresent":I
    :catchall_bf
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private declared-synchronized checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2988
    monitor-enter p0

    const/4 v6, 0x0

    .line 2990
    .local v6, "supportsKnox":Z
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2991
    .local v4, "queryifKnoxEnabled":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2992
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2993
    .local v0, "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_62

    .line 2994
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2995
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The checkIfAnyConnectSupportsKnox packageName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "whose class name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_7c
    .catchall {:try_start_2 .. :try_end_5e} :catchall_9a

    move-result v7

    if-eqz v7, :cond_1e

    .line 2997
    const/4 v6, 0x1

    .line 3005
    .end local v0    # "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "queryifKnoxEnabled":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_62
    :goto_62
    :try_start_62
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyConnectSupportsKnox : supportsKnox value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_9a

    .line 3006
    monitor-exit p0

    return v6

    .line 3002
    :catch_7c
    move-exception v1

    .line 3003
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7d
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfAnyConnectSupportsKnox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_9a

    goto :goto_62

    .line 2988
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_9a
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2442
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "Inside deleteUIDFromPackageData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission(Lcom/sec/enterprise/knox/KnoxVpnContext;)V
    .registers 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;

    .prologue
    .line 3523
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3524
    .local v0, "adminId":I
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforce permission. adminId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_23

    .line 3535
    :goto_22
    return-void

    .line 3529
    :cond_23
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_2f

    .line 3530
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    goto :goto_22

    .line 3533
    :cond_2f
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to enforce permission. mKnoxVpnHelper = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private declared-synchronized getActivate(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3629
    monitor-enter p0

    const/4 v2, -0x1

    .line 3631
    .local v2, "temp":I
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_13
    .catchall {:try_start_2 .. :try_end_7} :catchall_25

    move-result-object v1

    .line 3632
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v1, :cond_d

    .line 3633
    const/4 v3, -0x1

    .line 3641
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :goto_b
    monitor-exit p0

    return v3

    .line 3635
    .restart local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_d
    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_13
    .catchall {:try_start_d .. :try_end_10} :catchall_25

    move-result v2

    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :goto_11
    move v3, v2

    .line 3641
    goto :goto_b

    .line 3637
    :catch_13
    move-exception v0

    .line 3638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_14
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getActivate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    goto :goto_11

    .line 3629
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 24
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1307
    .local v3, "adminId":I
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_22

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Profile : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_22
    const/4 v13, 0x0

    .line 1309
    .local v13, "retVal":[Ljava/lang/String;
    new-instance v12, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v12}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1310
    .local v12, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1312
    const/4 v10, 0x0

    .line 1313
    .local v10, "packageList":[Ljava/lang/String;
    if-eqz p2, :cond_1a0

    .line 1314
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_39

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : Profile is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_39
    :try_start_39
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_46

    .line 1375
    :goto_45
    return-object v12

    .line 1323
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v4

    .line 1326
    .local v4, "containerId":I
    const/4 v6, 0x0

    .line 1327
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v15, "VpnPackageInfo"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "profileName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "packageCid"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    const/16 v18, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "packageName"

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1338
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_92

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 1340
    :cond_92
    const/4 v8, 0x0

    .line 1341
    .local v8, "i":I
    if-eqz v6, :cond_18e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_18e

    .line 1342
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v10, v14, [Ljava/lang/String;

    .line 1343
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1345
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v14, "packageName"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1346
    .local v11, "personifiedPackageName":Ljava/lang/String;
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_d3

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Personified Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_d3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-eq v14, v15, :cond_151

    .line 1350
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_109

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : personifiedPackageName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_109
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_a5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : vpnContext.personaId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_12b} :catch_12d

    goto/16 :goto_a5

    .line 1368
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :catch_12d
    move-exception v7

    .line 1369
    .local v7, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Exceptionin notify: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v14, 0x1

    const/4 v15, 0x3

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_45

    .line 1355
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "containerId":I
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_151
    :try_start_151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v8

    .line 1356
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_179

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Regular Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_179
    add-int/lit8 v8, v8, 0x1

    .line 1358
    goto/16 :goto_a5

    .line 1360
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_17d
    new-array v13, v8, [Ljava/lang/String;

    .line 1361
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v14, v13, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1362
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1363
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_45

    .line 1365
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_18e
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_199

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : DB read for packages is either null or zero"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_199
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_19e} :catch_12d

    goto/16 :goto_45

    .line 1373
    .end local v4    # "containerId":I
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    :cond_1a0
    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_45
.end method

.method private getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1266
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_1d

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get all rnaged packages : Profile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_1d
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1268
    .local v0, "adminId":I
    const/4 v6, 0x0

    .line 1269
    .local v6, "retVal":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1270
    .local v3, "packageList":[Ljava/lang/String;
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1271
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1273
    if-eqz p2, :cond_81

    .line 1274
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_36

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "get all rnaged packages : Profile is not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_36
    :try_start_36
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v7

    if-eqz v7, :cond_3d

    .line 1301
    :goto_3c
    return-object v5

    .line 1281
    :cond_3d
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 1282
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 1284
    .local v1, "containerId":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7b

    .line 1285
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v3

    .line 1286
    invoke-virtual {v5, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1287
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_58} :catch_59

    goto :goto_3c

    .line 1293
    .end local v1    # "containerId":I
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_59
    move-exception v2

    .line 1294
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exceptionin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v7, 0x3

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3c

    .line 1291
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerId":I
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_7b
    const/4 v7, 0x1

    const/4 v8, 0x4

    :try_start_7d
    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_59

    goto :goto_3c

    .line 1298
    .end local v1    # "containerId":I
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_81
    const/4 v7, 0x2

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3c
.end method

.method private getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3564
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 3565
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v0, :cond_22

    .line 3566
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get binder for profile : Profile does not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    const/4 v2, 0x0

    .line 3572
    :goto_21
    return-object v2

    .line 3569
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    .line 3570
    .local v1, "vendorNameWithCid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v2

    .line 3572
    .local v2, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    goto :goto_21
.end method

.method private declared-synchronized getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3622
    monitor-enter p0

    const/4 v0, 0x0

    .line 3623
    .local v0, "temp":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knoxv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_17

    move-result-object v0

    .line 3624
    monitor-exit p0

    return-object v0

    .line 3622
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 5

    .prologue
    .line 226
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_b
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2d
    if-eqz v0, :cond_57

    .line 230
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_57

    .line 231
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 232
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_57

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_57
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_10

    .line 240
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 243
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized getRoutType(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3647
    monitor-enter p0

    const/4 v1, -0x1

    .line 3648
    .local v1, "iRval":I
    const/4 v2, 0x0

    .line 3650
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_14
    .catchall {:try_start_3 .. :try_end_8} :catchall_2b

    move-result-object v2

    .line 3651
    if-nez v2, :cond_e

    move v3, v1

    .line 3662
    :goto_c
    monitor-exit p0

    return v3

    .line 3654
    :cond_e
    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_14
    .catchall {:try_start_e .. :try_end_11} :catchall_2b

    move-result v1

    move v3, v1

    .line 3662
    goto :goto_c

    .line 3656
    :catch_14
    move-exception v0

    .line 3658
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getRoutType error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :cond_20
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2b

    .line 3660
    const/4 v3, -0x1

    goto :goto_c

    .line 3647
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getVPNState(Ljava/lang/String;)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3782
    monitor-enter p0

    const/4 v1, 0x0

    .line 3783
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v2, -0x1

    .line 3785
    .local v2, "state":I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2d
    .catchall {:try_start_4 .. :try_end_9} :catchall_51

    move-result-object v1

    .line 3786
    if-nez v1, :cond_e

    .line 3802
    :goto_c
    monitor-exit p0

    return v4

    .line 3790
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 3791
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_4c

    .line 3792
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVPNState : Interface null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d
    .catchall {:try_start_e .. :try_end_2c} :catchall_51

    goto :goto_c

    .line 3799
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2d
    move-exception v0

    .line 3800
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2e
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVPNState : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_51

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    move v4, v2

    .line 3802
    goto :goto_c

    .line 3796
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4c
    :try_start_4c
    invoke-interface {v3, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_2d
    .catchall {:try_start_4c .. :try_end_4f} :catchall_51

    move-result v2

    goto :goto_4a

    .line 3782
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_51
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized getVPNTransitionState(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 3742
    monitor-enter p0

    const/4 v0, -0x1

    .line 3743
    .local v0, "iVPNCurActivateState":I
    const/4 v1, -0x1

    .line 3744
    .local v1, "iVpnConnectState":I
    const/4 v2, -0x1

    .line 3746
    .local v2, "temp":I
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNState(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_39

    move-result v1

    .line 3747
    if-ltz v1, :cond_e

    const/4 v4, 0x5

    if-ge v4, v1, :cond_10

    .line 3772
    :cond_e
    :goto_e
    monitor-exit p0

    return v3

    .line 3751
    :cond_10
    move v2, v1

    .line 3754
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v0

    .line 3755
    if-ltz v0, :cond_e

    .line 3759
    if-nez v0, :cond_1b

    .line 3760
    add-int/lit8 v2, v2, 0x64

    .line 3770
    :cond_1b
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_37

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVPNTransitionState : VpnState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_39

    :cond_37
    move v3, v2

    .line 3772
    goto :goto_e

    .line 3742
    :catchall_39
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getValidationOfPackageName(ILjava/lang/String;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3666
    const/4 v2, -0x1

    .line 3667
    .local v2, "retValue":I
    const/4 v1, 0x0

    .line 3669
    .local v1, "isPackageInstalledResult":Z
    if-lez p1, :cond_f

    .line 3670
    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    .line 3671
    if-eqz v1, :cond_d

    .line 3672
    const/4 v2, 0x0

    :cond_d
    :goto_d
    move v3, v2

    .line 3684
    .end local v2    # "retValue":I
    .local v3, "retValue":I
    :goto_e
    return v3

    .line 3674
    .end local v3    # "retValue":I
    .restart local v2    # "retValue":I
    :cond_f
    if-nez p1, :cond_d

    .line 3675
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_1b

    move-result v1

    .line 3676
    if-eqz v1, :cond_d

    .line 3677
    const/4 v2, 0x0

    goto :goto_d

    .line 3680
    :catch_1b
    move-exception v0

    .line 3681
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCheckedPackageName : Exception occurred for checkingPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 3682
    .end local v2    # "retValue":I
    .restart local v3    # "retValue":I
    goto :goto_e
.end method

.method private getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .registers 9
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3579
    const/4 v3, 0x0

    .line 3581
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p1, :cond_11

    .line 3582
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3583
    .local v2, "interfaceObject":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_11

    .line 3584
    move-object v0, v2

    check-cast v0, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-object v3, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    .line 3590
    .end local v2    # "interfaceObject":Ljava/lang/Object;
    :cond_11
    :goto_11
    return-object v3

    .line 3587
    :catch_12
    move-exception v1

    .line 3588
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving Binder interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private handleActionPackageAdded(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2897
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : Handle MSG package add"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const/4 v10, -0x1

    .line 2899
    .local v10, "uid":I
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2900
    .local v6, "originalPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2902
    .local v1, "cid":I
    :try_start_c
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 2903
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2904
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2907
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_50

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_50
    if-nez v7, :cond_53

    .line 2952
    :cond_52
    :goto_52
    return-void

    .line 2912
    :cond_53
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 2913
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_78

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : calling bind package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_78
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7d} :catch_7e

    goto :goto_52

    .line 2949
    :catch_7e
    move-exception v4

    .line 2950
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : pakcage add : Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2917
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9d
    :try_start_9d
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_ba

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : checking update package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_ba
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 2920
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    const/4 v9, 0x0

    .line 2923
    .local v9, "profileName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 2924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "packageUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_f2} :catch_7e

    move-result-object v3

    .line 2932
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_13a

    .line 2934
    :try_start_f5
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "getting vpn object from database : Cursor not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_100
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2936
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2937
    const-string v11, "packageUid"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_11b} :catch_11d

    move-result v10

    goto :goto_100

    .line 2939
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_11d
    move-exception v4

    .line 2940
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_11e
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getting vpn object from database : Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_13a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v8

    .line 2945
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v8, v7, v10, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 2946
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_52

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_151} :catch_7e

    goto/16 :goto_52
.end method

.method private handleActionUserRemoved(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3151
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "handleActionUserRemoved : Got USERREMOVED intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    const-string v7, "android.intent.extra.user_handle"

    const/16 v8, -0x2710

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3155
    .local v5, "personaId":I
    :try_start_f
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnProfileInfo"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "personaId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3158
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 3159
    .local v6, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_7c

    .line 3160
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3161
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "profileName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3162
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5e} :catch_5f

    goto :goto_31

    .line 3166
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileName":Ljava/lang/String;
    :catch_5f
    move-exception v2

    .line 3167
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7c
    :try_start_7c
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v8, "VpnPackageInfo"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "packageCid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3175
    .restart local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_e8

    .line 3176
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3177
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v7, "packageName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3178
    .local v4, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_ca} :catch_cb

    goto :goto_9d

    .line 3182
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_cb
    move-exception v2

    .line 3183
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleActionUserRemoved : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e8
    return-void
.end method

.method private handleActionUserSwitched(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3118
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Got USERSWITCHED intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3121
    .local v0, "containerId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendorsForContainer(I)V

    .line 3122
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 3148
    return-void
.end method

.method private declared-synchronized handleAnyConnectUninstall(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3010
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "whose container id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_7a

    .line 3011
    const/4 v1, 0x0

    .line 3013
    .local v1, "packageRemoved":Z
    :try_start_25
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_51
    .catchall {:try_start_25 .. :try_end_2b} :catchall_7d

    move-result v1

    .line 3017
    :try_start_2c
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3018
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3021
    :cond_37
    :goto_37
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_7a

    .line 3022
    monitor-exit p0

    return v1

    .line 3014
    :catch_51
    move-exception v0

    .line 3015
    .local v0, "e":Ljava/lang/Exception;
    :try_start_52
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at handleAnyConnectUninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_7d

    .line 3017
    :try_start_6e
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3018
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7a

    goto :goto_37

    .line 3010
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "packageRemoved":Z
    :catchall_7a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3017
    .restart local v1    # "packageRemoved":Z
    :catchall_7d
    move-exception v2

    :try_start_7e
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 3018
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3017
    :cond_89
    throw v2
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_7a
.end method

.method private handleConnectivityAction(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2777
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2778
    .local v0, "networkDown":Z
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION. networkDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    if-nez v0, :cond_24

    .line 2780
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 2782
    :cond_24
    return-void
.end method

.method private handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V
    .registers 23
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 3438
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : vendorNameWithCid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    const/4 v2, 0x0

    .line 3440
    .local v2, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 3441
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : mConnectivityService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    const/16 v18, 0x0

    .line 3443
    .local v18, "interfaceName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "oldPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3444
    .local v4, "newPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "isConnecting":Z
    const/4 v12, 0x0

    .local v12, "PERAPP_VPN":Z
    const/4 v6, 0x1

    .line 3445
    .local v6, "SYSTEM_VPN":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_104

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 3446
    .local v20, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 3447
    .local v5, "profileName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v14

    .line 3448
    .local v14, "activateState":I
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v19

    .line 3450
    .local v19, "storedVendorName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : storedVendorName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-eq v14, v8, :cond_50

    if-eqz v19, :cond_50

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 3452
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    .line 3453
    .local v17, "iface":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3455
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-ne v8, v9, :cond_e5

    .line 3457
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting System vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    invoke-interface/range {v2 .. v7}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c6} :catch_c7

    goto :goto_50

    .line 3473
    .end local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .end local v3    # "oldPackage":Ljava/lang/String;
    .end local v4    # "newPackage":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "SYSTEM_VPN":Z
    .end local v7    # "isConnecting":Z
    .end local v12    # "PERAPP_VPN":Z
    .end local v14    # "activateState":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iface":Ljava/lang/String;
    .end local v18    # "interfaceName":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_c7
    move-exception v15

    .line 3474
    .local v15, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle knox vpn service disconnect : Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e4
    :goto_e4
    return-void

    .line 3460
    .restart local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .restart local v3    # "oldPackage":Ljava/lang/String;
    .restart local v4    # "newPackage":Ljava/lang/String;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "SYSTEM_VPN":Z
    .restart local v7    # "isConnecting":Z
    .restart local v12    # "PERAPP_VPN":Z
    .restart local v14    # "activateState":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iface":Ljava/lang/String;
    .restart local v18    # "interfaceName":Ljava/lang/String;
    .restart local v19    # "storedVendorName":Ljava/lang/String;
    .restart local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_e5
    :try_start_e5
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting Per-App vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3464
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    .line 3465
    invoke-interface/range {v8 .. v13}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto/16 :goto_50

    .line 3472
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v14    # "activateState":I
    .end local v17    # "iface":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_104
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_e4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10b} :catch_c7

    goto :goto_e4
.end method

.method private handleMigrate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2774
    return-void
.end method

.method private handleVpnInterfaceState(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2806
    :try_start_0
    const-string v13, "extra_profile_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2807
    .local v7, "profileName":Ljava/lang/String;
    const-string v13, "extra_action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2808
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 2809
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v6, :cond_1b

    .line 2876
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 2812
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v13

    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-eq v13, v14, :cond_1a

    .line 2816
    const-string/jumbo v13, "tun_info"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_184

    .line 2817
    const-string v13, "extra_tun_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2818
    .local v10, "tunInterfaceName":Ljava/lang/String;
    const-string v13, "extra_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2819
    .local v9, "state":I
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState - ProfileName, state, tunInterfaceName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    const/4 v13, 0x1

    if-ne v9, v13, :cond_b4

    .line 2822
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE UP - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    if-eqz v6, :cond_1a

    .line 2827
    invoke-virtual {v6, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 2831
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_95

    goto :goto_1a

    .line 2873
    .end local v1    # "action":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v9    # "state":I
    .end local v10    # "tunInterfaceName":Ljava/lang/String;
    :catch_95
    move-exception v3

    .line 2874
    .local v3, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 2832
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v9    # "state":I
    .restart local v10    # "tunInterfaceName":Ljava/lang/String;
    :cond_b4
    const/4 v13, 0x2

    if-ne v9, v13, :cond_1a

    .line 2833
    :try_start_b7
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE DOWN - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2836
    .local v4, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 2838
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 2839
    .local v12, "vpnState":I
    const/4 v13, 0x2

    if-eq v12, v13, :cond_f5

    const/4 v13, 0x4

    if-eq v12, v13, :cond_f5

    const/4 v13, 0x3

    if-eq v12, v13, :cond_f5

    const/16 v13, 0x66

    if-eq v12, v13, :cond_f5

    const/16 v13, 0x68

    if-eq v12, v13, :cond_f5

    const/16 v13, 0x67

    if-ne v12, v13, :cond_124

    .line 2843
    :cond_f5
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  TUN INTERFACE DOWN : profile connected. profileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    new-instance v11, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v13, 0x3e8

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v14

    const-string v15, "Knox_Framework"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2846
    .local v11, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v5

    .line 2849
    .local v5, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2852
    .end local v5    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v11    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_124
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  Trying to remove profile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getMarkProfileForDeletion()Z

    move-result v13

    if-eqz v13, :cond_166

    .line 2855
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Got it. removing profile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2864
    :goto_161
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    goto/16 :goto_1a

    .line 2860
    :cond_166
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState : Adding blocking rules : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_161

    .line 2866
    .end local v4    # "iface":Ljava/lang/String;
    .end local v9    # "state":I
    .end local v10    # "tunInterfaceName":Ljava/lang/String;
    .end local v12    # "vpnState":I
    :cond_184
    const-string v13, "dns_info"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 2867
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleVpnInterfaceState  DNS INFO - ProfileName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const-string v13, "dnsList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2869
    .local v2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "searchDomainList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2870
    .local v8, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setDnsList(Ljava/util/List;)V

    .line 2871
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setSearchDomainList(Ljava/util/List;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1ba} :catch_95

    goto/16 :goto_1a
.end method

.method private hasVpnInterface(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3602
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3603
    const/4 v0, 0x1

    .line 3605
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private initializeHandlerThread()V
    .registers 4

    .prologue
    .line 188
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxVpnHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 191
    return-void
.end method

.method private initializeHashtable()V
    .registers 29

    .prologue
    .line 2199
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnProfileInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2204
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v18, 0x0

    .local v18, "profileName":Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "vendorNameWithCid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2205
    .local v19, "protocolType":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "adminId":I
    const/16 v16, 0x0

    .local v16, "personaId":I
    const/16 v20, -0x1

    .local v20, "routeType":I
    sget v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 2206
    .local v4, "activateState":I
    const/4 v7, -0x1

    .line 2207
    .local v7, "containerVpnState":I
    const/16 v17, 0x0

    .line 2208
    .local v17, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v9, :cond_1b5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_1b5

    .line 2210
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_3c

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : VPN INFO: New Framework is enabled. Set the system property"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_3c
    const-string v23, "net.vpn.framework"

    const-string v24, "2.0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_4e

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_4e
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 2214
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2215
    const-string v23, "defaultRoute"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2216
    const-string v23, "adminUid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2217
    const-string v23, "personaId"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2218
    const-string/jumbo v23, "vendorName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2219
    const-string v23, "protocolType"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2220
    const-string v23, "activateState"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2221
    const-string v23, "containerVpnState"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2222
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_ed

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : adminId :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " vendorName :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_ed
    if-eqz v18, :cond_52

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_11c

    .line 2227
    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;-><init>()V

    .line 2228
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2232
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2233
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_135

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable :  ProfileName found in map. Add to the list."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_135
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 2236
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setRouteType(I)V

    .line 2237
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setAdminId(I)V

    .line 2238
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setPersonaId(I)V

    .line 2239
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 2240
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 2241
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V

    .line 2242
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 2245
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_18f

    .line 2246
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 2247
    .local v12, "interfaceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v23

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 2252
    .end local v12    # "interfaceName":Ljava/lang/String;
    :cond_18f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_196} :catch_198

    goto/16 :goto_52

    .line 2256
    .end local v4    # "activateState":I
    .end local v5    # "adminId":I
    .end local v7    # "containerVpnState":I
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v22    # "vendorNameWithCid":Ljava/lang/String;
    :catch_198
    move-exception v10

    .line 2257
    .local v10, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init :  Exception when reading Profile DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1b5
    :try_start_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnPackageInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2265
    .restart local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v15, 0x0

    .local v15, "packageName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2266
    .restart local v18    # "profileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2267
    .local v13, "originalPackageName":Ljava/lang/String;
    const/16 v21, -0x1

    .local v21, "uid":I
    const/4 v6, 0x0

    .line 2269
    .local v6, "cid":I
    const/4 v14, 0x0

    .line 2270
    .local v14, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    const/16 v17, 0x0

    .line 2271
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v9, :cond_2b8

    .line 2272
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_1de

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : step#2 : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_1de
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_1e2
    :goto_1e2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2b8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 2274
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2275
    const-string v23, "packageName"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2276
    const-string v23, "packageUid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2277
    const-string v23, "packageCid"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2279
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_25c

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable :  Cid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Uid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " packageName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_25c
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_2c7

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2283
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2285
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_2c0

    .line 2287
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_299} :catch_29b

    goto/16 :goto_1e2

    .line 2314
    .end local v6    # "cid":I
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "originalPackageName":Ljava/lang/String;
    .end local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v21    # "uid":I
    :catch_29b
    move-exception v10

    .line 2315
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init2 :  Exception when reading package DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2b8
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_2bf

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 2318
    :cond_2bf
    return-void

    .line 2290
    .restart local v6    # "cid":I
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "originalPackageName":Ljava/lang/String;
    .restart local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "personaId":I
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v21    # "uid":I
    :cond_2c0
    :try_start_2c0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    goto/16 :goto_1e2

    .line 2294
    .end local v16    # "personaId":I
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v21

    .line 2296
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_2fd

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : originalPackageName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_2fd
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_31d

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_31d
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_1e2

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v17

    .line 2301
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2304
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_350

    .line 2305
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    goto/16 :goto_1e2

    .line 2308
    :cond_350
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_355} :catch_29b

    goto/16 :goto_1e2
.end method

.method private initializeVpnVendors()V
    .registers 10

    .prologue
    .line 2175
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2177
    .local v4, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors : vendorList initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2179
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2180
    .local v3, "profileName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : ProfileName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 2182
    .local v5, "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Checking vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    if-eqz v5, :cond_1d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 2184
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Adding vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_1d

    .line 2193
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "vendorNameWithCid":Ljava/lang/String;
    :catch_85
    move-exception v0

    .line 2194
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a2
    return-void

    .line 2189
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a3
    :try_start_a3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2190
    .restart local v5    # "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Binding to vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ce} :catch_85

    goto :goto_a7
.end method

.method private initializeVpnVendorsForContainer(I)V
    .registers 12
    .param p1, "containerId"    # I

    .prologue
    .line 2142
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2144
    .local v5, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_17

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : vendorList initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_17
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2146
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 2147
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v0

    .line 2148
    .local v0, "cid":I
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_5b

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : ProfileName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , cid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_5b
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 2150
    .local v6, "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_7b

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Checking vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_7b
    if-ne v0, p1, :cond_21

    if-eqz v6, :cond_21

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2152
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_a1

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Adding vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_a1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a6

    goto/16 :goto_21

    .line 2168
    .end local v0    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "vendorNameWithCid":Ljava/lang/String;
    :catch_a6
    move-exception v1

    .line 2169
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c3
    return-void

    .line 2157
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c4
    :try_start_c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c8
    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2158
    .restart local v6    # "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_f0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Binding to vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_f0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v7, v8, :cond_106

    .line 2162
    :cond_102
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z

    goto :goto_c8

    .line 2164
    :cond_106
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_c8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : Binding already done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_111} :catch_a6

    goto :goto_c8
.end method

.method private isNetworkConnected()Z
    .registers 3

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2093
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v0, 0x1

    .line 2097
    :goto_24
    return v0

    .line 2096
    :cond_25
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private printProfileVpnMap()V
    .registers 14

    .prologue
    .line 2102
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_16c

    .line 2103
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :try_start_b
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileCount()I

    move-result v5

    .line 2106
    .local v5, "profileCount":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No of profiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_182

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2108
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v6, :cond_172

    .line 2109
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 2110
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2112
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v8

    .line 2113
    .local v8, "state":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ProfileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iface:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; adminId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getAdminId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activated:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v9

    sget v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v9, v12, :cond_16d

    const-string v9, "false "

    :goto_d0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerVpn user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_179

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 2122
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", profileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}},"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_147} :catch_148

    goto :goto_ff

    .line 2133
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v5    # "profileCount":I
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :catch_148
    move-exception v0

    .line 2134
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_165
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profile map --------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_16c
    return-void

    .line 2118
    .restart local v3    # "interfaceName":Ljava/lang/String;
    .restart local v5    # "profileCount":I
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v8    # "state":I
    :cond_16d
    :try_start_16d
    const-string/jumbo v9, "true "

    goto/16 :goto_d0

    .line 2128
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :cond_172
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "VpnProfileInfo contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_179
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 2132
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_182
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_189} :catch_148

    goto :goto_165
.end method

.method private refreshDomainInHashMap(Ljava/lang/String;)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3874
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3875
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_ef

    .line 3876
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "#################### Printing domain map ####################"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :try_start_16
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domain Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3880
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3881
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 3882
    .local v3, "itemStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_81

    .line 3883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3882
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 3886
    :cond_81
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{ProfileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    domains : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    const-string v6, ""

    :goto_b7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "]},"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_c9} :catch_cb

    goto/16 :goto_44

    .line 3891
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_cb
    move-exception v0

    .line 3892
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e8
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "#################### Printing domain map ####################"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    :cond_ef
    return-void

    .line 3887
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "itemStr":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    :cond_f0
    const/4 v6, 0x1

    :try_start_f1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b7

    .line 3890
    .end local v1    # "i":I
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_f6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fd} :catch_cb

    goto :goto_e8
.end method

.method private registerPersonaObserverForVpn()V
    .registers 5

    .prologue
    .line 3479
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 3481
    .local v1, "mPersona":Landroid/os/PersonaManager;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :try_start_11
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "Registering personaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_21

    .line 3514
    :goto_20
    return-void

    .line 3511
    :catch_21
    move-exception v0

    .line 3512
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2400
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName: In remove package"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2402
    .local v3, "profileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 2403
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_1d

    .line 2404
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName: Package name not found in the map"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_1c
    :goto_1c
    return-void

    .line 2407
    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v8, v9, :cond_30

    .line 2408
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName :Profile is deactivated. Just removing package entry"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    goto :goto_1c

    .line 2413
    :cond_30
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    move-result-object v1

    .line 2415
    .local v1, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v1, :cond_42

    .line 2416
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_1c

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "removeFromHashMapByPackageName : Vpn Package Info entry is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 2420
    :cond_42
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 2422
    .local v6, "uid":I
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2423
    invoke-direct {p0, v3, v6, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2424
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageCount()I

    move-result v4

    .line 2427
    .local v4, "size":I
    if-gtz v4, :cond_87

    .line 2428
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v5

    .line 2429
    .local v5, "state":I
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeFromHashMapByPackageName : current state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :try_start_77
    new-instance v7, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v8, 0x3e8

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v9

    const-string v10, "Knox_Framework"

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2433
    .local v7, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    invoke-virtual {p0, v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_8f

    .line 2438
    .end local v5    # "state":I
    .end local v7    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_87
    :goto_87
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_1c

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto :goto_1c

    .line 2434
    .restart local v5    # "state":I
    :catch_8f
    move-exception v0

    .line 2435
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove profile : Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .registers 22
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2341
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : beginning:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v11

    .line 2344
    .local v11, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v11, :cond_1f

    .line 2345
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : VpnProfileInfo returned null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_1e
    :goto_1e
    return-void

    .line 2348
    :cond_1f
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2350
    .local v7, "interfaceName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_82

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 2351
    .local v9, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    const/4 v10, 0x0

    .line 2352
    .local v10, "packageName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 2354
    .local v14, "uid":I
    if-nez v9, :cond_47

    .line 2355
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_2b

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : Vpn Package Info entry is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 2359
    :cond_47
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2360
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v14

    .line 2362
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : uid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_2b

    .line 2366
    .end local v9    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    :cond_82
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ba

    .line 2368
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v4

    .line 2369
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2370
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2373
    .end local v4    # "cid":I
    :cond_ba
    :try_start_ba
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 2375
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c1} :catch_163

    move-result v12

    .line 2376
    .local v12, "state":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_da

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v12, v0, :cond_da

    const/16 v17, 0x66

    move/from16 v0, v17

    if-eq v12, v0, :cond_da

    const/16 v17, 0x68

    move/from16 v0, v17

    if-ne v12, v0, :cond_181

    .line 2380
    :cond_da
    :try_start_da
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : setting mark and calling stop:  profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 2382
    new-instance v15, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v17, 0x3e8

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v18

    const-string v19, "Knox_Framework"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2384
    .local v15, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 2385
    .local v8, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2386
    .local v13, "stopStatus":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : stop status : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_13c} :catch_145

    .line 2396
    .end local v8    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v12    # "state":I
    .end local v13    # "stopStatus":I
    .end local v15    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :goto_13c
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto/16 :goto_1e

    .line 2387
    .restart local v12    # "state":I
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_145
    move-exception v5

    .line 2388
    .local v5, "e":Ljava/lang/Exception;
    :try_start_146
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_162} :catch_163

    goto :goto_13c

    .line 2393
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "state":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_163
    move-exception v5

    .line 2394
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 2391
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "state":I
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_181
    :try_start_181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18e} :catch_163

    goto :goto_13c
.end method

.method private removeMangleExceptions(Ljava/lang/String;)V
    .registers 8
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 2888
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2890
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 2891
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 2892
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForUid(I)V

    .line 2894
    return-void
.end method

.method private removePackagesFromIpTables(Ljava/lang/String;)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3265
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 3269
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3d

    .line 3270
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3271
    .local v2, "interfaceName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 3272
    .local v0, "cid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3273
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 3276
    .end local v0    # "cid":I
    .end local v2    # "interfaceName":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 3278
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v3, :cond_5f

    .line 3279
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_45

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "removePackagesFromIpTables : Vpn Package Info entry is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 3282
    :cond_5f
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_7f

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : p.getPackageName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :cond_7f
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v5

    .line 3285
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3286
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_45

    .line 3288
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v5    # "uid":I
    :cond_90
    return-void
.end method

.method private removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2513
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "removeProfileFromHashMapAndDB : removeProfileFromHashMapAndDB beginning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    const/4 v2, 0x0

    .line 2515
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 2516
    .local v1, "removeSuccess":Z
    if-eqz p1, :cond_3c

    .line 2518
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2519
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profileName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 2524
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for per app : success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_3d

    .line 2530
    :cond_3c
    :goto_3c
    return v1

    .line 2526
    :catch_3d
    move-exception v0

    .line 2527
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private declared-synchronized removeVpnInterface(Ljava/lang/String;)V
    .registers 4
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3610
    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 3611
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 3613
    :cond_11
    monitor-exit p0

    return-void

    .line 3610
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restartVPN(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3808
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "restartVPN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    const/4 v0, 0x0

    .line 3811
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez p1, :cond_12

    .line 3812
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "profileName is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_11
    :goto_11
    return-void

    .line 3816
    :cond_12
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 3817
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getIsRetry()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3819
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setIsRetry(Z)V

    .line 3826
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3827
    .local v1, "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3828
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_11

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "post delay "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3822
    .end local v1    # "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    :cond_3e
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + was tried to re-start once "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private declared-synchronized runAllVpnService()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2534
    monitor-enter p0

    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "run all vpn : runAllVpnService beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c0

    .line 2537
    :try_start_9
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 2538
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2539
    .local v3, "profileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v4

    .line 2540
    .local v4, "state":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_4d

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v5

    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-eq v5, v6, :cond_13

    .line 2547
    if-eq v4, v8, :cond_5a

    const/4 v5, 0x5

    if-ne v4, v5, :cond_98

    .line 2548
    :cond_5a
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_80

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : startVpnConnectionForProfile : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_80
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;Z)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_84} :catch_85
    .catchall {:try_start_9 .. :try_end_84} :catchall_c0

    goto :goto_13

    .line 2556
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_85
    move-exception v0

    .line 2558
    .local v0, "e":Ljava/lang/Exception;
    :try_start_86
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "run all vpn : Exception: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_86 .. :try_end_96} :catchall_c0

    .line 2561
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_96
    monitor-exit p0

    return-void

    .line 2553
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v3    # "profileName":Ljava/lang/String;
    .restart local v4    # "state":I
    :cond_98
    :try_start_98
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run all vpn : nothing : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_be} :catch_85
    .catchall {:try_start_98 .. :try_end_be} :catchall_c0

    goto/16 :goto_13

    .line 2534
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catchall_c0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private sendBindSuccessIntent(Ljava/lang/String;)V
    .registers 10
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 249
    .local v2, "token":J
    :try_start_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, "containerId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, "successIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.mdm.VPN_BIND_RESULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v5, "vpn_bind_vendor"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v5, "vpn_bind_cid"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string/jumbo v5, "vpn_bind_status"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "Sending bind success intent to User 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3d

    .line 259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-void

    .line 259
    .end local v0    # "containerId":I
    .end local v1    # "successIntent":Landroid/content/Intent;
    .end local v4    # "vendorName":Ljava/lang/String;
    :catchall_3d
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2695
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    if-eqz v1, :cond_10

    .line 2696
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2697
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2699
    .end local v0    # "msg":Landroid/os/Message;
    :cond_10
    return-void
.end method

.method private declared-synchronized setActivate(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "activateState"    # I

    .prologue
    .line 3692
    monitor-enter p0

    const/4 v7, 0x0

    .line 3693
    .local v7, "status":Z
    const/4 v4, 0x0

    .line 3694
    .local v4, "oldActivateState":I
    const/4 v1, 0x0

    .line 3696
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 3697
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_start_5
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a3

    .line 3701
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_a
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_7f
    .catchall {:try_start_a .. :try_end_f} :catchall_a3

    move-result-object v5

    .line 3702
    if-nez v5, :cond_15

    .line 3703
    const/4 v9, 0x0

    .line 3737
    :goto_13
    monitor-exit p0

    return v9

    .line 3705
    :cond_15
    :try_start_15
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v4

    .line 3706
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V

    .line 3710
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_7f
    .catchall {:try_start_15 .. :try_end_21} :catchall_a3

    .line 3711
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_21
    const-string v9, "activateState"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3712
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileName"

    aput-object v10, v0, v9

    .line 3715
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 3719
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v10, "VpnProfileInfo"

    invoke-virtual {v9, v10, v0, v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    .line 3720
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_70

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setActivate : profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activateState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    :cond_70
    if-nez v7, :cond_9f

    .line 3725
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "setActivate : DB storage failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setActivateState(I)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_7c} :catch_a6
    .catchall {:try_start_21 .. :try_end_7c} :catchall_a9

    .line 3727
    const/4 v9, 0x0

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_13

    .line 3731
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :catch_7f
    move-exception v3

    .line 3733
    .local v3, "e":Ljava/lang/Exception;
    :goto_80
    :try_start_80
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception update  profile : updateVPNProfile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_a3

    .line 3734
    const/4 v9, 0x0

    goto/16 :goto_13

    .line 3737
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_9f
    const/4 v9, 0x1

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto/16 :goto_13

    .line 3692
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v8    # "values":[Ljava/lang/String;
    :catchall_a3
    move-exception v9

    :goto_a4
    monitor-exit p0

    throw v9

    .line 3731
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_a6
    move-exception v3

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_80

    .line 3692
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :catchall_a9
    move-exception v9

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_a4
.end method

.method private setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    .registers 22
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3371
    if-eqz p1, :cond_141

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v14

    if-eqz v14, :cond_141

    .line 3372
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_26

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_26
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_44

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidStart value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_44
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_62

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidEnd value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :cond_62
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_80

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  interfaceName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v13

    .line 3377
    .local v13, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v4, 0x0

    .line 3378
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3379
    .local v3, "dnsArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3380
    .local v9, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3382
    .local v10, "searchDomains":Ljava/lang/String;
    if-eqz v13, :cond_141

    .line 3383
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getDnsList()Ljava/util/List;

    move-result-object v4

    .line 3384
    if-eqz v4, :cond_141

    .line 3385
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dnsArray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 3386
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getSearchDomainList()Ljava/util/List;

    move-result-object v9

    .line 3387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3388
    .local v2, "buffer":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_c7

    .line 3389
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_b1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3390
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 3393
    .end local v5    # "domain":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_c7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3395
    :try_start_cf
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_fc

    .line 3397
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d4
    array-length v14, v3

    if-ge v7, v14, :cond_fc

    .line 3398
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_f9

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  dnsArray value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    :cond_f9
    add-int/lit8 v7, v7, 0x1

    goto :goto_d4

    .line 3401
    .end local v7    # "i":I
    :cond_fc
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_118

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  searchDomains value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_11b} :catch_147

    move-result-wide v11

    .line 3404
    .local v11, "token":J
    :try_start_11c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v3, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_13e
    .catchall {:try_start_11c .. :try_end_13e} :catchall_142

    .line 3407
    :try_start_13e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3417
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "dnsArray":[Ljava/lang/String;
    .end local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "searchDomains":Ljava/lang/String;
    .end local v11    # "token":J
    .end local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_141
    :goto_141
    return-void

    .line 3407
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    .restart local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "searchDomains":Ljava/lang/String;
    .restart local v11    # "token":J
    .restart local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_142
    move-exception v14

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_147} :catch_147

    .line 3410
    .end local v11    # "token":J
    :catch_147
    move-exception v6

    .line 3411
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "VPN_TESTING"

    const-string v15, "setting dns property : Exception "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string v14, "VPN_TESTING"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_141
.end method

.method private setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Ljava/lang/Object;

    .prologue
    .line 3594
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVpnInterface: vendorName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vpnInterface value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_27
    if-nez p2, :cond_2b

    .line 3596
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    .line 3598
    :cond_2b
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    return-void
.end method

.method private setupIntentFilter()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2564
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "setup intent filter is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2566
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2567
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2569
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2570
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2572
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2573
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2574
    const-string v0, "com.sec.enterprise.mdm.MDM_VPN_PRE_ADMIN_REMOVAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2575
    const-string v0, "enterprise.container.uninstalled"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2576
    const-string v0, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2577
    const-string v0, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2578
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2579
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2582
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2584
    return-void
.end method

.method private setupIntentFilterForMigration()V
    .registers 7

    .prologue
    .line 2587
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "setup intent filter Migration is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2589
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2591
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2592
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2593
    return-void
.end method

.method private startUid(I)I
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 3210
    const/4 v1, -0x1

    .line 3212
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int v1, p1, v2

    .line 3213
    :try_start_6
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_23

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    .line 3217
    :cond_23
    :goto_23
    return v1

    .line 3214
    :catch_24
    move-exception v0

    .line 3215
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private startVpnConnectionForProfile(Ljava/lang/String;)I
    .registers 16
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3308
    const/4 v4, -0x1

    .line 3310
    .local v4, "retVal":I
    :try_start_1
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 3311
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_b

    move v5, v4

    .line 3367
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v4    # "retVal":I
    .local v5, "retVal":I
    :goto_a
    return v5

    .line 3314
    .end local v5    # "retVal":I
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v4    # "retVal":I
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3315
    .local v0, "activateState":I
    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v11, :cond_15

    move v5, v4

    .line 3316
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_a

    .line 3318
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_15
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v11

    if-nez v11, :cond_25

    .line 3319
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : Network not connected"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3320
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_a

    .line 3323
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageCount()I

    move-result v6

    .line 3325
    .local v6, "size":I
    if-gtz v6, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3c

    .line 3326
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : No packages in profile. ContainerVpnState = -1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3327
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto :goto_a

    .line 3330
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v10

    .line 3331
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: profileName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vpnInterface = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    if-eqz v10, :cond_135

    .line 3334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    .line 3335
    .local v7, "state":I
    const/4 v11, 0x4

    if-eq v7, v11, :cond_72

    const/4 v11, 0x2

    if-eq v7, v11, :cond_72

    const/4 v11, 0x3

    if-ne v7, v11, :cond_a0

    .line 3336
    :cond_72
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: getState  profileName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile: Returning as profile is already connecting/ed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 3338
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_a

    .line 3341
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":I
    :cond_a0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V

    .line 3342
    invoke-interface {v10, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v4

    .line 3343
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: start result : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    if-eqz v4, :cond_135

    .line 3347
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_10d

    .line 3348
    new-instance v9, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v11, 0x3e8

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v12

    const-string v13, "Knox_Framework"

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3350
    .local v9, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v3

    .line 3351
    .local v3, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v8, 0x0

    .line 3352
    .local v8, "value":Ljava/lang/String;
    if-eqz v3, :cond_105

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v11

    if-nez v11, :cond_105

    .line 3353
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "value":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3354
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_105

    .line 3355
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile: error = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_105
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "startVpnConnectionForProfile : Cannot start vpn, returned error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    .end local v3    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_10d
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_114} :catch_117

    move v5, v4

    .line 3360
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_a

    .line 3364
    .end local v0    # "activateState":I
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v5    # "retVal":I
    .end local v6    # "size":I
    .end local v7    # "state":I
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .restart local v4    # "retVal":I
    :catch_117
    move-exception v1

    .line 3365
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startVpnConnectionForProfile : Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_135
    move v5, v4

    .line 3367
    .end local v4    # "retVal":I
    .restart local v5    # "retVal":I
    goto/16 :goto_a
.end method

.method private startVpnConnectionForProfile(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .prologue
    .line 3292
    const/4 v0, -0x1

    .line 3294
    .local v0, "result":I
    if-eqz p2, :cond_d

    .line 3295
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    .line 3296
    if-eqz v0, :cond_c

    .line 3297
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->restartVPN(Ljava/lang/String;)V

    .line 3304
    :cond_c
    :goto_c
    return v0

    .line 3301
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method private declared-synchronized startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2016
    monitor-enter p0

    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_112

    .line 2018
    const/4 v5, 0x0

    .line 2021
    .local v5, "retval":I
    if-eqz p1, :cond_29

    if-nez p2, :cond_35

    .line 2022
    :cond_29
    :try_start_29
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Param null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_e7
    .catchall {:try_start_29 .. :try_end_33} :catchall_112

    .line 2074
    :goto_33
    monitor-exit p0

    return v7

    .line 2026
    :cond_35
    :try_start_35
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v4

    .line 2027
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v4, :cond_48

    .line 2028
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Profile entry is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_33

    .line 2031
    :cond_48
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2032
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_5a

    .line 2033
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Profile not activated.. Returning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    .line 2034
    goto :goto_33

    .line 2036
    :cond_5a
    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    move-result-object v3

    .line 2038
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-nez v3, :cond_6b

    .line 2039
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : Vpn Package Info entry is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_33

    .line 2043
    :cond_6b
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_87

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add package to profile : VpnPackageInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_87
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v6

    .line 2047
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2048
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;)V

    .line 2050
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_134

    .line 2067
    :pswitch_a0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : VPN State not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activateState":I
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "uid":I
    :cond_a8
    :goto_a8
    move v7, v5

    .line 2074
    goto :goto_33

    .line 2052
    .restart local v0    # "activateState":I
    .restart local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v6    # "uid":I
    :pswitch_aa
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2053
    .local v2, "interfaceValue":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_d5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "interfaceValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_d5
    if-eqz v2, :cond_a8

    .line 2055
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2056
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2057
    invoke-direct {p0, p1, v6, v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_e6} :catch_e7
    .catchall {:try_start_35 .. :try_end_e6} :catchall_112

    goto :goto_a8

    .line 2070
    .end local v0    # "activateState":I
    .end local v2    # "interfaceValue":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "uid":I
    :catch_e7
    move-exception v1

    .line 2071
    .local v1, "e":Ljava/lang/Exception;
    :try_start_e8
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_f4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "startVpnForPackage : "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_f4
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_e8 .. :try_end_111} :catchall_112

    goto :goto_a8

    .line 2016
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "retval":I
    :catchall_112
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2063
    .restart local v0    # "activateState":I
    .restart local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v5    # "retval":I
    .restart local v6    # "uid":I
    :pswitch_115
    :try_start_115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    move-result v5

    .line 2064
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startVpnForPackage : start connection called. profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_132} :catch_e7
    .catchall {:try_start_115 .. :try_end_132} :catchall_112

    goto/16 :goto_a8

    .line 2050
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_115
        :pswitch_a0
        :pswitch_a0
        :pswitch_aa
        :pswitch_115
    .end packed-switch
.end method

.method private stopUid(I)I
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 3221
    const/4 v1, -0x1

    .line 3222
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 3224
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 3225
    :try_start_7
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_24

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_24
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 3227
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_46

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    .line 3231
    :cond_46
    :goto_46
    return v2

    .line 3228
    :catch_47
    move-exception v0

    .line 3229
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .registers 19
    .param p1, "uid"    # I

    .prologue
    .line 2479
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  beginning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/4 v7, 0x0

    .line 2481
    .local v7, "profileName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2483
    .local v1, "adminUid":I
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v11, "VpnProfileInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "profileName"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "adminUid"

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2485
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  got cvList from DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    if-eqz v3, :cond_135

    .line 2487
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_135

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2488
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "profileName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2489
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2490
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  checking profile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    move/from16 v0, p1

    if-ne v1, v0, :cond_42

    .line 2492
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :   admin matched: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  removing hashmap and db: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z

    .line 2495
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 2496
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  vpnInterface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    if-eqz v9, :cond_42

    .line 2498
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 2499
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V

    .line 2500
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  Calling remove Connection: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    invoke-interface {v9, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v8

    .line 2502
    .local v8, "removeStatus":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval : remove Connection. Status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_115} :catch_117

    goto/16 :goto_42

    .line 2507
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v8    # "removeStatus":I
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_117
    move-exception v4

    .line 2508
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_135
    return-void
.end method

.method private syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V
    .registers 10
    .param p1, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3915
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "Start syncProfile between VPNDB and Vendor\'s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    const/4 v2, 0x0

    .line 3917
    .local v2, "profileNameinVendor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3919
    .local v1, "jsonProfile":Ljava/lang/String;
    :try_start_9
    invoke-interface {p1, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3920
    if-eqz v1, :cond_31

    .line 3921
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3922
    invoke-interface {p1, v2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v3

    .line 3923
    .local v3, "removeStatus":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile in VendorDB is removed successfullyStatus of remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    .line 3929
    .end local v3    # "removeStatus":I
    :cond_31
    :goto_31
    return-void

    .line 3926
    :catch_32
    move-exception v0

    .line 3927
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync the profile : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;II)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I

    .prologue
    .line 3420
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "whose start uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose stop uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    if-eqz p1, :cond_56

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 3423
    :try_start_36
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v1

    .line 3424
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 3425
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3427
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p2, p3}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3428
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_56} :catch_57

    .line 3434
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v2    # "token":J
    :cond_56
    :goto_56
    return-void

    .line 3430
    :catch_57
    move-exception v0

    .line 3431
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty : Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method private declared-synchronized updateNotification(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 3899
    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_28

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification profileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v2, v3, :cond_45

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_66

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 3905
    const/4 v1, 0x0

    .line 3906
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    :try_start_38
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3907
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->updateEnterpriseVpn(Ljava/lang/String;IZ)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_45} :catch_47
    .catchall {:try_start_38 .. :try_end_45} :catchall_66

    .line 3912
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :cond_45
    :goto_45
    monitor-exit p0

    return-void

    .line 3908
    .restart local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catch_47
    move-exception v0

    .line 3909
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_66

    goto :goto_45

    .line 3899
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catchall_66
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2447
    monitor-enter p0

    if-eqz p1, :cond_97

    .line 2449
    :try_start_4
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside updatePackageData : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "packageUid"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2458
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_97

    .line 2459
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2461
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "packageUid"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2462
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v0, v6

    .line 2465
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 2468
    .local v4, "values":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_96} :catch_99
    .catchall {:try_start_4 .. :try_end_96} :catchall_b8

    move-result v5

    .line 2475
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_97
    :goto_97
    monitor-exit p0

    return v5

    .line 2471
    :catch_99
    move-exception v3

    .line 2472
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9a
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_9a .. :try_end_b7} :catchall_b8

    goto :goto_97

    .line 2447
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_b8
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "responseData"    # Landroid/app/enterprise/EnterpriseResponseData;

    .prologue
    const/4 v8, 0x1

    .line 3538
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3539
    .local v0, "adminId":I
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 3540
    .local v3, "vendorName":Ljava/lang/String;
    iget v1, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 3541
    .local v1, "personaId":I
    invoke-static {v3, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3542
    .local v4, "vendorNameWithCid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3543
    .local v2, "returnValue":I
    if-eqz p2, :cond_12

    if-eqz v3, :cond_12

    if-nez p3, :cond_3c

    .line 3544
    :cond_12
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    const/4 v2, -0x1

    .line 3546
    if-eqz p3, :cond_3b

    .line 3547
    const/4 v5, 0x7

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 3560
    :cond_3b
    :goto_3b
    return v2

    .line 3548
    :cond_3c
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->checkAdminForProfile(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3b

    .line 3549
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check failed for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    const/4 v2, 0x1

    .line 3551
    const/16 v5, 0x8

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3b
.end method

.method private validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I
    .registers 22
    .param p1, "personaId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageList"    # [Ljava/lang/String;

    .prologue
    .line 1074
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v5, :cond_8e

    aget-object v8, v1, v4

    .line 1079
    .local v8, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z

    move-result v2

    .line 1080
    .local v2, "checkIfApplicationHasSystemUID":Z
    if-eqz v2, :cond_1d

    .line 1081
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package has system uid"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v11, -0x1

    .line 1111
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v8    # "regularPackageName":Ljava/lang/String;
    :goto_1c
    return v11

    .line 1085
    .restart local v2    # "checkIfApplicationHasSystemUID":Z
    .restart local v8    # "regularPackageName":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1087
    .local v9, "transformedPackageName":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackageToVpn : transformed packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 1089
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    .local v7, "profileForPackage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1093
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v9, :cond_56

    if-eqz v7, :cond_58

    .line 1094
    :cond_56
    const/4 v11, -0x1

    goto :goto_1c

    .line 1098
    :cond_58
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1106
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_8a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_8a

    .line 1107
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package already exists in DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v11, -0x1

    goto :goto_1c

    .line 1074
    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1111
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileForPackage":Ljava/lang/String;
    .end local v8    # "regularPackageName":Ljava/lang/String;
    .end local v9    # "transformedPackageName":Ljava/lang/String;
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_8e
    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    goto :goto_1c
.end method

.method private validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .registers 14
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 3189
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_27

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor - vendorNameWithCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vpnInterface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_27
    :try_start_27
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "vendorName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3193
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 3194
    .local v5, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_9f

    if-eqz p2, :cond_9f

    .line 3195
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3196
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "profileName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3197
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_77

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    :cond_77
    invoke-interface {p2, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3199
    .local v4, "jsonProfile":Ljava/lang/String;
    if-nez v4, :cond_48

    .line 3200
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_80} :catch_81

    goto :goto_48

    .line 3204
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonProfile":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    :catch_81
    move-exception v2

    .line 3205
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9f
    return-void
.end method

.method private declared-synchronized writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1116
    .local v2, "adminId":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1117
    .local v3, "containerId":I
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_3e

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_12f

    .line 1118
    :cond_3e
    const/4 v8, -0x1

    .line 1119
    .local v8, "retvalue":I
    const/4 v7, 0x0

    .line 1122
    .local v7, "resultValidatedPacakgeName":I
    :try_start_40
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    .line 1123
    .local v12, "transformedUid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1125
    .local v11, "transformedPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 1126
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_7b

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed UID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_7b
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_98

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed packagename before adding to db : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_98
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1137
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v13, "packageName"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v13, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v4, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v13, "packageUid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    const-string v13, "packageCid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v14, "VpnPackageInfo"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v10

    .line 1144
    .local v10, "status":Z
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_f2} :catch_10f
    .catchall {:try_start_40 .. :try_end_f2} :catchall_12f

    .line 1145
    if-nez v10, :cond_f7

    move v9, v8

    .line 1161
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v8    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .local v9, "retvalue":I
    :goto_f5
    monitor-exit p0

    return v9

    .line 1149
    .end local v9    # "retvalue":I
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v8    # "retvalue":I
    .restart local v10    # "status":Z
    .restart local v11    # "transformedPackageName":Ljava/lang/String;
    .restart local v12    # "transformedUid":I
    :cond_f7
    const/4 v13, -0x1

    if-eq v12, v13, :cond_104

    .line 1151
    :try_start_fa
    invoke-virtual {v6, v11, v12, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_104
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_10b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10b} :catch_10f
    .catchall {:try_start_fa .. :try_end_10b} :catchall_12f

    .line 1160
    :cond_10b
    :try_start_10b
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    move v9, v8

    .line 1161
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_f5

    .line 1156
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v9    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .restart local v8    # "retvalue":I
    :catch_10f
    move-exception v5

    .line 1157
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Exception occured for adding vpn, package map."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_10b .. :try_end_12d} :catchall_12f

    move v9, v8

    .line 1158
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_f5

    .line 1115
    .end local v2    # "adminId":I
    .end local v3    # "containerId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "resultValidatedPacakgeName":I
    .end local v9    # "retvalue":I
    :catchall_12f
    move-exception v13

    monitor-exit p0

    throw v13
.end method


# virtual methods
.method public declared-synchronized activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 26
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 569
    .local v3, "adminId":I
    const/4 v8, -0x1

    .line 571
    .local v8, "iResult":I
    const/4 v7, -0x1

    .line 572
    .local v7, "iNewActivateState":I
    const/16 v16, -0x1

    .line 573
    .local v16, "sVpnTransition":I
    const/4 v15, -0x1

    .line 574
    .local v15, "routeType":I
    const/4 v14, 0x0

    .line 575
    .local v14, "result":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 576
    .local v18, "vendorName":Ljava/lang/String;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile API called: profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v13, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v13}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 578
    .local v13, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 579
    const/16 v19, 0x1

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_bc

    .line 582
    if-eqz v18, :cond_4c

    if-nez p2, :cond_4e

    .line 720
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-object v13

    .line 586
    :cond_4e
    :try_start_4e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v19

    if-nez v19, :cond_4c

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v12

    .line 591
    .local v12, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v12, :cond_4c

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v15

    .line 596
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_90

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : getRoutType(profileName) "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_90
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v19

    if-ne v15, v0, :cond_bf

    .line 598
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : System VPN can\'t be activated"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_9d} :catch_9e
    .catchall {:try_start_4e .. :try_end_9d} :catchall_bc

    goto :goto_4c

    .line 715
    .end local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_9e
    move-exception v5

    .line 716
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9f
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception when activating profile : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_9f .. :try_end_bb} :catchall_bc

    goto :goto_4c

    .line 568
    .end local v3    # "adminId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "iNewActivateState":I
    .end local v8    # "iResult":I
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v14    # "result":Z
    .end local v15    # "routeType":I
    .end local v16    # "sVpnTransition":I
    .end local v18    # "vendorName":Ljava/lang/String;
    :catchall_bc
    move-exception v19

    monitor-exit p0

    throw v19

    .line 604
    .restart local v3    # "adminId":I
    .restart local v7    # "iNewActivateState":I
    .restart local v8    # "iResult":I
    .restart local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v14    # "result":Z
    .restart local v15    # "routeType":I
    .restart local v16    # "sVpnTransition":I
    .restart local v18    # "vendorName":Ljava/lang/String;
    :cond_bf
    if-eqz p3, :cond_118

    :try_start_c1
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    .line 605
    :goto_c3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 607
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_d6

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Start  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_d6
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_197

    .line 614
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_e7

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Activate  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_e7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v14

    .line 617
    if-nez v14, :cond_11b

    .line 618
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_4c

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Activate result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 604
    :cond_118
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    goto :goto_c3

    .line 623
    :cond_11b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 626
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_12b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 627
    .local v10, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, "packageName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_159

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Calling start for packageName =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_159
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 631
    if-eqz v8, :cond_12b

    .line 632
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : Failed to start a vpn  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 639
    .end local v10    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_16c
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17f

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    .line 644
    :cond_17f
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 645
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_4c

    .line 650
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_197
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_4c

    .line 653
    const/4 v9, 0x0

    .line 654
    .local v9, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v17, -0x1

    .line 658
    .local v17, "stopStatus":I
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_1ab

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "activateVpnProfile : DeActivate "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1ab
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v14

    .line 660
    if-nez v14, :cond_1d5

    .line 661
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_4c

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : Deactivate result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 666
    :cond_1d5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 669
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v19

    if-ne v15, v0, :cond_2b7

    const/16 v19, 0x66

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1fb

    const/16 v19, 0x68

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1fb

    const/16 v19, 0x67

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b7

    :cond_1fb
    const/4 v4, 0x1

    .line 672
    .local v4, "checkForPerApp":Z
    :goto_1fc
    if-eqz v4, :cond_2ba

    .line 674
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 675
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 676
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_22c

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : STOP status  =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_22c
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_242

    .line 683
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 684
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 686
    :cond_242
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_270

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : profile : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " may be in lockup / stop result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_270
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_4c

    .line 701
    :cond_278
    :goto_278
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_298

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : stop profile =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_298
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 707
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 708
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_4c

    .line 669
    .end local v4    # "checkForPerApp":Z
    :cond_2b7
    const/4 v4, 0x0

    goto/16 :goto_1fc

    .line 696
    .restart local v4    # "checkForPerApp":Z
    :cond_2ba
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 697
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 698
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_278

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "activateVpnProfile : STOP\'2\' status  =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_2e8} :catch_9e
    .catchall {:try_start_c1 .. :try_end_2e8} :catchall_bc

    goto :goto_278
.end method

.method public addAllContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1730
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add all contaienr  packages to vpn : vpnContext.personaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / containerId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1734
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1735
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_4b

    .line 1736
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add all contaienr  packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1738
    invoke-virtual {v0, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1775
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_4a
    return-object v0

    .line 1744
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4b
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1745
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_7e

    .line 1746
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add all contaienr  packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1748
    const/16 v3, 0x9

    invoke-virtual {v0, v7, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_4a

    .line 1751
    :cond_7e
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1752
    if-eqz v1, :cond_a2

    .line 1753
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_a2

    .line 1754
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add all contaienr  packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1756
    invoke-virtual {v0, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_4a

    .line 1774
    :cond_a2
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1775
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_4a
.end method

.method public declared-synchronized addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 23
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1382
    .local v4, "adminId":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1385
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1386
    const/16 v17, 0x1

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_a9

    .line 1388
    :try_start_27
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v11

    .line 1392
    .local v11, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v11, :cond_77

    .line 1393
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : Error : profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_75} :catch_8b
    .catchall {:try_start_27 .. :try_end_75} :catchall_a9

    .line 1470
    .end local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_75
    :goto_75
    monitor-exit p0

    return-object v9

    .line 1398
    .restart local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_77
    :try_start_77
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v17

    if-eqz v17, :cond_ac

    .line 1399
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : Vendor or admin validation failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8a} :catch_8b
    .catchall {:try_start_77 .. :try_end_8a} :catchall_a9

    goto :goto_75

    .line 1467
    .end local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_8b
    move-exception v8

    .line 1468
    .local v8, "e":Ljava/lang/Exception;
    :try_start_8c
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_8c .. :try_end_a8} :catchall_a9

    goto :goto_75

    .line 1381
    .end local v4    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_a9
    move-exception v17

    monitor-exit p0

    throw v17

    .line 1404
    .restart local v4    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_ac
    :try_start_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v13

    .line 1405
    .local v13, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ce

    .line 1406
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : Error : Trying to add per-app packages to a system/user profile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1411
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageExists(I)Z

    move-result v12

    .line 1412
    .local v12, "packageAlreadyExists":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v14

    .line 1415
    .local v14, "rangeAlreadyExists":Z
    if-nez v12, :cond_f2

    if-eqz v14, :cond_116

    .line 1416
    :cond_f2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_75

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : VPN already exists for this persona or a package in persona. persona = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 1420
    :cond_116
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_134

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_134
    move-object/from16 v0, p1

    iget v6, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1423
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1424
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v17, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1425
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "profileName"

    aput-object v18, v5, v17

    .line 1428
    .local v5, "columns":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    .line 1431
    .local v16, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "VpnProfileInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15

    .line 1433
    .local v15, "status":Z
    if-eqz v15, :cond_75

    .line 1436
    if-eqz v11, :cond_182

    .line 1437
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : setting container vpn state to 1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1441
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v17

    packed-switch v17, :pswitch_data_240

    .line 1459
    :pswitch_1a5
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "add all packages : VPN State not valid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1465
    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1466
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_75

    .line 1446
    :pswitch_1d7
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 1447
    .local v10, "interfaceValue":Ljava/lang/String;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "interfaceValue = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    if-eqz v10, :cond_1ac

    .line 1449
    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    goto :goto_1ac

    .line 1455
    .end local v10    # "interfaceValue":Ljava/lang/String;
    :pswitch_21a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnConnectionForProfile(Ljava/lang/String;)I

    .line 1456
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add all packages : start connection called. profileName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_23d} :catch_8b
    .catchall {:try_start_ac .. :try_end_23d} :catchall_a9

    goto/16 :goto_1ac

    .line 1444
    nop

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_21a
        :pswitch_1a5
        :pswitch_1a5
        :pswitch_1d7
        :pswitch_21a
    .end packed-switch
.end method

.method public addAllPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1781
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add all packages to vpn : vpnContext.personaId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized addContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1546
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1547
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1549
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_25

    .line 1550
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1552
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_5a

    .line 1587
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_23
    monitor-exit p0

    return-object v0

    .line 1558
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1559
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_5d

    .line 1560
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1562
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_5a

    goto :goto_23

    .line 1546
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_5a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1565
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_5d
    :try_start_5d
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1566
    if-eqz v1, :cond_85

    .line 1567
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_85

    .line 1568
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1570
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_23

    .line 1586
    :cond_85
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1587
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_5a

    move-result-object v0

    goto :goto_23
.end method

.method public declared-synchronized addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 25
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 986
    .local v7, "adminId":I
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_35

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : personaId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_35
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_ADDED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_ADDED":I
    const/4 v5, 0x2

    .line 988
    .local v5, "NO_PACKAGES_ADDED":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 989
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 990
    const/16 v18, 0x1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_c2

    .line 994
    :try_start_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v14

    .line 995
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/16 v17, 0x0

    .line 998
    .local v17, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p3, :cond_6d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_6d

    if-nez v14, :cond_7a

    .line 999
    :cond_6d
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_78} :catch_8e
    .catchall {:try_start_53 .. :try_end_78} :catchall_c2

    .line 1070
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_78
    :goto_78
    monitor-exit p0

    return-object v15

    .line 1004
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_7a
    :try_start_7a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v18

    if-eqz v18, :cond_c5

    .line 1005
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Vendor or admin validation failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8d} :catch_8e
    .catchall {:try_start_7a .. :try_end_8d} :catchall_c2

    goto :goto_78

    .line 1061
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_8e
    move-exception v9

    .line 1062
    .local v9, "e":Ljava/lang/Exception;
    :try_start_8f
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1064
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c1
    .catchall {:try_start_8f .. :try_end_c1} :catchall_c2

    goto :goto_78

    .line 985
    .end local v4    # "ALL_PACKAGES_ADDED":I
    .end local v5    # "NO_PACKAGES_ADDED":I
    .end local v6    # "PARTIAL_PACKAGES_ADDED":I
    .end local v7    # "adminId":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_c2
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1010
    .restart local v4    # "ALL_PACKAGES_ADDED":I
    .restart local v5    # "NO_PACKAGES_ADDED":I
    .restart local v6    # "PARTIAL_PACKAGES_ADDED":I
    .restart local v7    # "adminId":I
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_c5
    :try_start_c5
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d9

    .line 1011
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Error : Trying to add per-app packages to a system/user profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1016
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v18

    if-eqz v18, :cond_f3

    .line 1017
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Error : Trying to add per-app packages for a user, for which container vpn already exists"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1021
    :cond_f3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v17

    .line 1022
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "vpnInterface = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    if-eqz v17, :cond_13f

    .line 1024
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1025
    .local v11, "jsonProfile":Ljava/lang/String;
    if-nez v11, :cond_153

    .line 1026
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_78

    .line 1031
    .end local v11    # "jsonProfile":Ljava/lang/String;
    :cond_13f
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : vpnInterface null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_78

    .line 1036
    .restart local v11    # "jsonProfile":Ljava/lang/String;
    :cond_153
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I

    move-result v18

    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_168

    .line 1037
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : This api can\'t be used with System VPN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 1040
    :cond_168
    if-eqz p2, :cond_78

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_78

    .line 1044
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_194

    .line 1045
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : some package is already used in other profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 1049
    :cond_194
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_198
    if-ge v10, v12, :cond_1c5

    aget-object v13, v8, v10

    .line 1050
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1051
    .local v16, "tempResponseData":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c2

    .line 1052
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1053
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : fail to update the DB"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 1049
    :cond_1c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_198

    .line 1058
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "tempResponseData":I
    :cond_1c5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_1df} :catch_8e
    .catchall {:try_start_c5 .. :try_end_1df} :catchall_c2

    .line 1067
    :try_start_1df
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages / success : Returning 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1069
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1fc
    .catchall {:try_start_1df .. :try_end_1fc} :catchall_c2

    goto/16 :goto_78
.end method

.method public declared-synchronized addPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1591
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bindKnoxVpnInterface(Ljava/lang/String;)Z
    .registers 13
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 195
    monitor-enter p0

    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    if-eqz v7, :cond_2c

    .line 198
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "Sending bind success intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_b2

    .line 222
    :goto_2a
    monitor-exit p0

    return v0

    .line 202
    :cond_2c
    :try_start_2c
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "containerId":I
    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 206
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 207
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->blockProxyService(Ljava/lang/String;I)Z

    .line 211
    :cond_45
    const/4 v0, 0x0

    .line 212
    .local v0, "bindSuccess":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".BIND_SERVICE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "vendorAction":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " container ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;

    invoke-direct {v6, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 215
    .local v6, "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_83
    .catchall {:try_start_2c .. :try_end_83} :catchall_b2

    move-result-wide v2

    .line 217
    .local v2, "token":J
    :try_start_84
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_94
    .catchall {:try_start_84 .. :try_end_94} :catchall_b5

    move-result v0

    .line 219
    :try_start_95
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : bindSuccess = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_95 .. :try_end_b0} :catchall_b2

    goto/16 :goto_2a

    .line 195
    .end local v0    # "bindSuccess":Z
    .end local v1    # "containerId":I
    .end local v2    # "token":J
    .end local v4    # "vendorAction":Ljava/lang/String;
    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_b2
    move-exception v7

    monitor-exit p0

    throw v7

    .line 219
    .restart local v0    # "bindSuccess":Z
    .restart local v1    # "containerId":I
    .restart local v2    # "token":J
    .restart local v4    # "vendorAction":Ljava/lang/String;
    .restart local v5    # "vendorName":Ljava/lang/String;
    .restart local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_b5
    move-exception v7

    :try_start_b6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_b2
.end method

.method public declared-synchronized createVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 27
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 337
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 338
    .local v16, "vendorName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_3b

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile API called : vendorName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : personaId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3b
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_59

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : adminId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_59
    new-instance v13, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v13}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 341
    .local v13, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 342
    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_97

    .line 343
    if-nez p2, :cond_78

    .line 417
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_76
    monitor-exit p0

    return-object v13

    .line 347
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_78
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, "profileName":Ljava/lang/String;
    if-nez v10, :cond_9a

    .line 349
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_93

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "setting vpn connection : Error / cann\'t find a profile"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_93} :catch_271
    .catchall {:try_start_78 .. :try_end_93} :catchall_292

    .line 415
    :cond_93
    :try_start_93
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_76

    .line 336
    .end local v3    # "adminId":I
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v16    # "vendorName":Ljava/lang/String;
    :catchall_97
    move-exception v19

    monitor-exit p0

    throw v19

    .line 352
    .restart local v3    # "adminId":I
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v16    # "vendorName":Ljava/lang/String;
    :cond_9a
    :try_start_9a
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v19, "\\s"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 355
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 356
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 357
    .local v5, "found":Z
    if-eqz v5, :cond_cf

    .line 358
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name contains illegal characters"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_cb} :catch_271
    .catchall {:try_start_9a .. :try_end_cb} :catchall_292

    .line 415
    :try_start_cb
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_97

    goto :goto_76

    .line 361
    :cond_cf
    :try_start_cf
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 362
    .local v6, "len":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v6, v0, :cond_df

    const/16 v19, 0x80

    move/from16 v0, v19

    if-le v6, v0, :cond_ea

    .line 363
    :cond_df
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name exceeds length : 128"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e6} :catch_271
    .catchall {:try_start_cf .. :try_end_e6} :catchall_292

    .line 415
    :try_start_e6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_97

    goto :goto_76

    .line 366
    :cond_ea
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v9

    .line 367
    .local v9, "profileExists":Z
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_110} :catch_271
    .catchall {:try_start_ea .. :try_end_110} :catchall_292

    .line 368
    if-eqz v9, :cond_117

    .line 415
    :try_start_112
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_76

    .line 371
    :cond_117
    if-nez v16, :cond_11e

    .line 415
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_97

    goto/16 :goto_76

    .line 374
    :cond_11e
    :try_start_11e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 375
    .local v17, "vendorNameWithCid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v18

    .line 376
    .local v18, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : vpnInterface = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_150} :catch_271
    .catchall {:try_start_11e .. :try_end_150} :catchall_292

    .line 377
    if-nez v18, :cond_157

    .line 415
    :try_start_152
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_97

    goto/16 :goto_76

    .line 381
    :cond_157
    :try_start_157
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->createConnection(Ljava/lang/String;)I

    move-result v15

    .line 383
    .local v15, "success":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : success = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v15, :cond_19b

    .line 385
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 386
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_196} :catch_271
    .catchall {:try_start_157 .. :try_end_196} :catchall_292

    .line 415
    :try_start_196
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_97

    goto/16 :goto_76

    .line 389
    :cond_19b
    const/4 v14, 0x0

    .line 391
    .local v14, "retValue":Z
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 392
    if-nez v14, :cond_1da

    .line 393
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : DB failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 395
    .local v12, "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1d5} :catch_271
    .catchall {:try_start_19c .. :try_end_1d5} :catchall_292

    .line 415
    :try_start_1d5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_97

    goto/16 :goto_76

    .line 399
    .end local v12    # "removeStatus":I
    :cond_1da
    :try_start_1da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 400
    if-nez v14, :cond_23e

    .line 401
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Add to HashMap failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 403
    .restart local v12    # "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "VpnProfileInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "profileName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_238} :catch_271
    .catchall {:try_start_1da .. :try_end_238} :catchall_292

    move-result v11

    .line 415
    .local v11, "removeProfileStatus":Z
    :try_start_239
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_97

    goto/16 :goto_76

    .line 408
    .end local v11    # "removeProfileStatus":Z
    .end local v12    # "removeStatus":I
    :cond_23e
    :try_start_23e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 409
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 410
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setting vpn connection : return value is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_26c} :catch_271
    .catchall {:try_start_23e .. :try_end_26c} :catchall_292

    .line 415
    :try_start_26c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_26f
    .catchall {:try_start_26c .. :try_end_26f} :catchall_97

    goto/16 :goto_76

    .line 411
    .end local v5    # "found":Z
    .end local v6    # "len":I
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "profileExists":Z
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v14    # "retValue":Z
    .end local v15    # "success":I
    .end local v17    # "vendorNameWithCid":Ljava/lang/String;
    .end local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_271
    move-exception v4

    .line 412
    .local v4, "e":Ljava/lang/Exception;
    :try_start_272
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setting vpn connection : Error at\n "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28c
    .catchall {:try_start_272 .. :try_end_28c} :catchall_292

    .line 413
    const/4 v13, 0x0

    .line 415
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_28d
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_76

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_292
    move-exception v19

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    throw v19
    :try_end_297
    .catchall {:try_start_28d .. :try_end_297} :catchall_97
.end method

.method public getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "vendorName"    # Ljava/lang/String;
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
    .line 1990
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1992
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_78

    .line 1994
    :try_start_7
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 1995
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    .line 1996
    .local v7, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 1997
    .local v0, "activateState":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 1999
    .local v5, "persona_id":I
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v8, :cond_11

    .line 2001
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2002
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 2003
    .local v6, "profileName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***** VIGNESH profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5a} :catch_5b

    goto :goto_11

    .line 2009
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v5    # "persona_id":I
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "vendorPkgName":Ljava/lang/String;
    :catch_5b
    move-exception v2

    .line 2010
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_78
    return-object v1
.end method

.method public getAllContainerPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 1644
    const/4 v0, -0x1

    .line 1645
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1648
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1649
    .local v2, "isPersona":Z
    if-nez v2, :cond_20

    .line 1650
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : The container id entered is an invalid id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1652
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1696
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_1f
    return-object v1

    .line 1658
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_20
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v3

    .line 1659
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v3, :cond_4d

    .line 1660
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get all container packages in vpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1662
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1f

    .line 1665
    :cond_4d
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1666
    if-eqz v2, :cond_6d

    .line 1667
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    if-eq v4, p2, :cond_6d

    .line 1668
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : plz check a containerId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1670
    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1f

    .line 1687
    :cond_6d
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1689
    const/4 v4, -0x1

    if-eq v0, v4, :cond_7d

    if-ne v0, p2, :cond_7d

    .line 1690
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1691
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_1f

    .line 1695
    :cond_7d
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1696
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_1f
.end method

.method public getAllPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1704
    const/4 v0, -0x1

    .line 1705
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1706
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1709
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v2, :cond_1e

    .line 1710
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1719
    const/4 v3, -0x1

    if-eq v0, v3, :cond_47

    iget v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-ne v0, v3, :cond_47

    .line 1720
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    .line 1724
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_1d
    return-object v1

    .line 1712
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_1e
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1714
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1d

    .line 1724
    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_1d
.end method

.method public declared-synchronized getAllVpnProfiles(Lcom/sec/enterprise/knox/KnoxVpnContext;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 20
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 726
    .local v1, "adminId":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 727
    .local v12, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 728
    .local v4, "personaId":I
    invoke-static {v12, v4}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, "vendorNameWithCid":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles API called : vendorNameWithCid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v8, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v8}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 731
    .local v8, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 732
    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_fa

    .line 733
    const/4 v11, 0x0

    .line 734
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 737
    .local v9, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    .line 738
    .local v14, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v14, :cond_ee

    .line 739
    invoke-interface {v14}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getAllConnections()Ljava/util/List;

    move-result-object v11

    .line 740
    if-eqz v11, :cond_ee

    .line 742
    if-nez v9, :cond_5a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_5a

    .line 743
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v10

    .line 746
    .end local v10    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 747
    .local v5, "profile":Ljava/lang/String;
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v15, :cond_88

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The Json retrieved is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_88
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, "profileName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles - profileName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v15, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v6

    .line 751
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getAdminId()I

    move-result v15

    if-eq v1, v15, :cond_c4

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5e

    :cond_c4
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v15

    if-ne v4, v15, :cond_5e

    .line 754
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_cd} :catch_ce
    .catchall {:try_start_3e .. :try_end_cd} :catchall_fa

    goto :goto_5e

    .line 761
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_ce
    move-exception v2

    .line 762
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cf
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting all vpn connection : Failure at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_cf .. :try_end_eb} :catchall_fa

    .line 763
    const/4 v8, 0x0

    .line 765
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_ec
    monitor-exit p0

    return-object v8

    .line 759
    .restart local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_ee
    :try_start_ee
    invoke-virtual {v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 760
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f9} :catch_ce
    .catchall {:try_start_ee .. :try_end_f9} :catchall_fa

    goto :goto_ec

    .line 725
    .end local v1    # "adminId":I
    .end local v4    # "personaId":I
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "vendorName":Ljava/lang/String;
    .end local v13    # "vendorNameWithCid":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_fa
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method public getCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 850
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 851
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 852
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 853
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 855
    :try_start_10
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_17

    .line 870
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_16
    return-object v2

    .line 858
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_17
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 859
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_26

    .line 860
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 861
    goto :goto_16

    .line 863
    :cond_26
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getCACertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 864
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_33

    goto :goto_16

    .line 866
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_33
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 868
    goto :goto_16
.end method

.method public getChainingEnabledForProfile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1948
    const/4 v1, 0x0

    .line 1950
    .local v1, "chainingEnabled":I
    if-eqz p2, :cond_e

    .line 1951
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v5

    .line 1952
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getChainingEnabled()I

    move-result v1

    .line 1969
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_d
    :goto_d
    return v1

    .line 1953
    :cond_e
    if-eqz p1, :cond_d

    .line 1955
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 1956
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 1957
    .local v6, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 1959
    .local v0, "activateState":I
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v7, :cond_1a

    .line 1961
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getChainingEnabled()I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3d

    move-result v1

    .line 1962
    goto :goto_d

    .line 1966
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v6    # "vendorPkgName":Ljava/lang/String;
    :catch_3d
    move-exception v2

    .line 1967
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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
    .line 3855
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 964
    .local v0, "adminId":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString API called for profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 967
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :try_start_1f
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v4

    if-eqz v4, :cond_26

    .line 981
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_25
    return-object v2

    .line 970
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_26
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 971
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_53

    .line 972
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "getting vpn error string : Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_33} :catch_34

    goto :goto_25

    .line 977
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_34
    move-exception v1

    .line 978
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting vpn error string : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v2, 0x0

    goto :goto_25

    .line 975
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_53
    :try_start_53
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getErrorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 976
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_34

    goto :goto_25
.end method

.method public getKnoxVpnProfileType(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1974
    const/4 v2, -0x1

    .line 1976
    .local v2, "profileType":I
    if-eqz p1, :cond_f

    .line 1977
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v1

    .line 1978
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v1, :cond_f

    .line 1979
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getRouteType()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v2

    .line 1985
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_f
    :goto_f
    return v2

    .line 1982
    :catch_10
    move-exception v0

    .line 1983
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "domain"    # Ljava/lang/String;
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
    .line 3859
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3860
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3861
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3862
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 3863
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3864
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 3862
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 3870
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_3d
    return-object v4
.end method

.method public getState(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 926
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState API called for profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 928
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 929
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 931
    :try_start_2d
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v6

    if-eqz v6, :cond_34

    .line 958
    :cond_33
    :goto_33
    return-object v3

    .line 934
    :cond_34
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 935
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v2, :cond_33

    .line 938
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getActivateState()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v6, v7, :cond_77

    .line 939
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "Profile in deactivate state : Returning 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 941
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_58} :catch_59

    goto :goto_33

    .line 955
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catch_59
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 945
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_77
    :try_start_77
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 946
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_96

    .line 947
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Interface null for profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 950
    :cond_96
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "getState : Calling getState on vendor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 952
    .local v4, "state":Ljava/lang/Integer;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState : getState returnValue. profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 954
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_cf} :catch_59

    goto/16 :goto_33
.end method

.method public declared-synchronized getUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 800
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 801
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 802
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 803
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_54

    .line 805
    :try_start_12
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_28
    .catchall {:try_start_12 .. :try_end_15} :catchall_54

    move-result v5

    if-eqz v5, :cond_1a

    .line 819
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_18
    monitor-exit p0

    return-object v2

    .line 808
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 809
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_47

    .line 810
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_54

    goto :goto_18

    .line 815
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_28
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_54

    move-object v2, v4

    .line 817
    goto :goto_18

    .line 813
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_47
    :try_start_47
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getUserCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 814
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_28
    .catchall {:try_start_47 .. :try_end_53} :catchall_54

    goto :goto_18

    .line 800
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1859
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1860
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1861
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1862
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_6f

    .line 1864
    :try_start_16
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1865
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_4e

    .line 1866
    invoke-interface {v4, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getVpnModeOfOperation(Ljava/lang/String;)I

    move-result v3

    .line 1867
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1869
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4e} :catch_50
    .catchall {:try_start_16 .. :try_end_4e} :catchall_6f

    .line 1875
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v2

    .line 1871
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_50
    move-exception v1

    .line 1872
    .local v1, "e":Ljava/lang/Exception;
    :try_start_51
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_6f

    .line 1873
    const/4 v2, 0x0

    goto :goto_4e

    .line 1859
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_6f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 422
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 423
    .local v0, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVpnProfile API called : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 425
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 426
    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_8e

    .line 428
    :try_start_2a
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_40
    .catchall {:try_start_2a .. :try_end_2d} :catchall_8e

    move-result v7

    if-eqz v7, :cond_32

    .line 445
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_30
    monitor-exit p0

    return-object v4

    .line 431
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_32
    :try_start_32
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 432
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_5f

    .line 433
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "getting vpn connection : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_40
    .catchall {:try_start_32 .. :try_end_3f} :catchall_8e

    goto :goto_30

    .line 441
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_40
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getting vpn connection : Failure at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_8e

    move-object v4, v6

    .line 443
    goto :goto_30

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_5f
    :try_start_5f
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "jsonProfile":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "profil":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profileName got from json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 440
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8d} :catch_40
    .catchall {:try_start_5f .. :try_end_8d} :catchall_8e

    goto :goto_30

    .line 422
    .end local v0    # "adminId":I
    .end local v2    # "jsonProfile":Ljava/lang/String;
    .end local v3    # "profil":Ljava/lang/String;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_8e
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method handleActionPackageRemoved(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3056
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3058
    .local v10, "uid":I
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3059
    .local v7, "originalPackageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3060
    .local v1, "cid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3062
    .local v8, "packageName":Ljava/lang/String;
    const-string v11, "new_install_or_update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3063
    .local v5, "extraReplacing":Z
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : replacing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_120

    .line 3066
    if-eqz v5, :cond_60

    .line 3067
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package is being reinstalled. Skip remove profile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :cond_5f
    :goto_5f
    return-void

    .line 3070
    :cond_60
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : packageName is Vpn Vendor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :try_start_67
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : Getting profile list for vendor from DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v12, "VpnProfileInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "vendorName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3075
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 3076
    .local v9, "profileName":Ljava/lang/String;
    if-eqz v3, :cond_dc

    .line 3077
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_dc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3078
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3079
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Remvoing profile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_be} :catch_bf

    goto :goto_8f

    .line 3083
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "profileName":Ljava/lang/String;
    :catch_bf
    move-exception v4

    .line 3084
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Failure at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_dc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_120

    .line 3088
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_120

    .line 3089
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    .line 3095
    :cond_120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3096
    .restart local v9    # "profileName":Ljava/lang/String;
    if-eqz v9, :cond_13f

    .line 3098
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13f

    .line 3099
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 3104
    :cond_13f
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_5f

    .line 3105
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 3107
    if-nez v5, :cond_5f

    .line 3108
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 3109
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    goto/16 :goto_5f
.end method

.method protected declared-synchronized initializeVpnDataAndVendors()V
    .registers 6

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "initializeVpnDataAndVendors"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v1

    .line 321
    .local v1, "state":Z
    if-eqz v1, :cond_2f

    .line 322
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVpnDataAndVendors : Have to wait until migration done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilterForMigration()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_41

    .line 329
    :goto_2d
    monitor-exit p0

    return-void

    .line 326
    :cond_2f
    :try_start_2f
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "init vendor : Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v0, "map":Landroid/os/Bundle;
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_41

    goto :goto_2d

    .line 317
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "state":Z
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isProxyOrAnyConnect(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "packageNameEntered"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3026
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_27

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageName value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose container id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    :cond_27
    const/4 v3, 0x0

    .line 3029
    .local v3, "packageInstalled":Z
    :try_start_28
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 3030
    const/4 v3, 0x1

    move v4, v3

    .line 3052
    .end local v3    # "packageInstalled":Z
    .local v4, "packageInstalled":I
    :goto_32
    return v4

    .line 3033
    .end local v4    # "packageInstalled":I
    .restart local v3    # "packageInstalled":Z
    :cond_33
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3034
    .local v1, "i":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3035
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 3036
    .local v6, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_ba

    .line 3037
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 3038
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_8a

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The packageNameEntered having the proxy cisco anyconnect intent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose class name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_8a
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3040
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sput-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_9a} :catch_9d

    .line 3041
    const/4 v3, 0x1

    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9b
    move v4, v3

    .line 3045
    .restart local v4    # "packageInstalled":I
    goto :goto_32

    .line 3048
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInstalled":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_9d
    move-exception v0

    .line 3049
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at isProxyOrAnyConnect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ba
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_d6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageInstalled value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    move v4, v3

    .line 3052
    .restart local v4    # "packageInstalled":I
    goto/16 :goto_32
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 167
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminAdded]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 172
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminRemoved]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onPreAdminRemoval]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 184
    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1787
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1790
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1791
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1792
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_25

    .line 1793
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove all container packages : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1795
    invoke-virtual {v0, v7, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1830
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_24
    return-object v0

    .line 1801
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_25
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1802
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_58

    .line 1803
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove all container packages : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1805
    const/16 v3, 0x9

    invoke-virtual {v0, v7, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_24

    .line 1808
    :cond_58
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1809
    if-eqz v1, :cond_7c

    .line 1810
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_7c

    .line 1811
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove all container packages : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1813
    invoke-virtual {v0, v7, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_24

    .line 1830
    :cond_7c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_24
.end method

.method public declared-synchronized removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 20
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1477
    .local v3, "adminId":I
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removeAllPackagesFromVpn : "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1480
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1481
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-virtual {v9, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_55

    .line 1483
    if-nez p2, :cond_23

    .line 1540
    :cond_21
    :goto_21
    monitor-exit p0

    return-object v9

    .line 1487
    :cond_23
    :try_start_23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_58

    .line 1488
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removePackagesFromVpn : validate failed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_37
    .catchall {:try_start_23 .. :try_end_36} :catchall_55

    goto :goto_21

    .line 1537
    :catch_37
    move-exception v8

    .line 1538
    .local v8, "e":Ljava/lang/Exception;
    :try_start_38
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_55

    goto :goto_21

    .line 1476
    .end local v3    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_55
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1492
    .restart local v3    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v10

    .line 1493
    .local v10, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v10, :cond_6b

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_86

    .line 1494
    :cond_6b
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : not container profile :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1497
    :cond_86
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v6, -0x1

    .line 1500
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1501
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v14, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "profileName"

    aput-object v15, v5, v14

    .line 1505
    .local v5, "columns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    .line 1508
    .local v13, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v15, "VpnProfileInfo"

    invoke-virtual {v14, v15, v5, v13, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v12

    .line 1510
    .local v12, "status":Z
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "containerVpnState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    if-eqz v12, :cond_21

    .line 1515
    if-eqz v10, :cond_115

    .line 1516
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_10b

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : profileInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_10b
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "removeAllPackagesFromVpn : Setting containerVpnState to 0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1521
    :cond_115
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1522
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v11

    .line 1525
    .local v11, "state":I
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : current state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_157} :catch_37
    .catchall {:try_start_58 .. :try_end_157} :catchall_55

    .line 1527
    :try_start_157
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_17d
    .catchall {:try_start_157 .. :try_end_15a} :catchall_55

    .line 1532
    :goto_15a
    :try_start_15a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1535
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1536
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_21

    .line 1528
    :catch_17d
    move-exception v8

    .line 1529
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "removeAllPackagesFromVpn : Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_19a} :catch_37
    .catchall {:try_start_15a .. :try_end_19a} :catchall_55

    goto :goto_15a
.end method

.method public declared-synchronized removeContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1596
    monitor-enter p0

    :try_start_1
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1599
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1600
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1601
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_27

    .line 1602
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1604
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_5c

    .line 1638
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_25
    monitor-exit p0

    return-object v0

    .line 1610
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v2

    .line 1611
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-nez v2, :cond_5f

    .line 1612
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1614
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5b
    .catchall {:try_start_27 .. :try_end_5b} :catchall_5c

    goto :goto_25

    .line 1596
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1617
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1618
    if-eqz v1, :cond_87

    .line 1619
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_87

    .line 1620
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1622
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_25

    .line 1638
    :cond_87
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_8a
    .catchall {:try_start_5f .. :try_end_8a} :catchall_5c

    move-result-object v0

    goto :goto_25
.end method

.method public declared-synchronized removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "regularPackageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1237
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1238
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_96

    .line 1239
    const/4 v2, -0x1

    .line 1243
    .local v2, "retvalue":I
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1245
    .local v5, "transformedPackageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : transformed packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    if-nez v5, :cond_48

    .line 1247
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_45} :catch_78
    .catchall {:try_start_1c .. :try_end_45} :catchall_96

    move v3, v2

    .line 1262
    .end local v2    # "retvalue":I
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    .local v3, "retvalue":I
    :goto_46
    monitor-exit p0

    return v3

    .line 1250
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    .restart local v5    # "transformedPackageName":Ljava/lang/String;
    :cond_48
    :try_start_48
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "profileName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1253
    .local v4, "success":Z
    if-nez v4, :cond_71

    .line 1254
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error deleting from DB"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1255
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_46

    .line 1257
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :cond_71
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 1258
    sget v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_76} :catch_78
    .catchall {:try_start_48 .. :try_end_76} :catchall_96

    .end local v4    # "success":Z
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    :goto_76
    move v3, v2

    .line 1262
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_46

    .line 1259
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :catch_78
    move-exception v1

    .line 1260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_79
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_96

    goto :goto_76

    .line 1237
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "retvalue":I
    :catchall_96
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 30
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1167
    .local v7, "adminId":I
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_27

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "removePackagesFromVpn : personaId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_27
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_REMOVED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_REMOVED":I
    const/4 v5, 0x2

    .line 1169
    .local v5, "NO_PACKAGES_REMOVED":I
    new-instance v16, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v16 .. v16}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1170
    .local v16, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1171
    const/16 v19, 0x1

    const/16 v20, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_c7

    .line 1173
    if-eqz p2, :cond_58

    :try_start_4b
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_9c
    .catchall {:try_start_4b .. :try_end_50} :catchall_c7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5a

    .line 1233
    :cond_58
    :goto_58
    monitor-exit p0

    return-object v16

    .line 1176
    :cond_5a
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    :try_start_5c
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5e
    if-ge v11, v12, :cond_17a

    aget-object v15, v8, v11

    .line 1178
    .local v15, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1179
    .local v18, "transformedPackageName":Ljava/lang/String;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove to package : transformed packageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    if-nez v18, :cond_ca

    .line 1181
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package : Error occured for removing vpn, package map."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_9b} :catch_9c
    .catchall {:try_start_5c .. :try_end_9b} :catchall_c7

    goto :goto_58

    .line 1226
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "regularPackageName":Ljava/lang/String;
    .end local v18    # "transformedPackageName":Ljava/lang/String;
    :catch_9c
    move-exception v10

    .line 1227
    .local v10, "e":Ljava/lang/Exception;
    :try_start_9d
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception in remove packages for vpn : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_c6
    .catchall {:try_start_9d .. :try_end_c6} :catchall_c7

    goto :goto_58

    .line 1165
    .end local v4    # "ALL_PACKAGES_REMOVED":I
    .end local v5    # "NO_PACKAGES_REMOVED":I
    .end local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .end local v7    # "adminId":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_c7
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1185
    .restart local v4    # "ALL_PACKAGES_REMOVED":I
    .restart local v5    # "NO_PACKAGES_REMOVED":I
    .restart local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .restart local v7    # "adminId":I
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v15    # "regularPackageName":Ljava/lang/String;
    .restart local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v18    # "transformedPackageName":Ljava/lang/String;
    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1186
    .local v14, "profileName":Ljava/lang/String;
    if-nez v14, :cond_f4

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_f4

    .line 1176
    :cond_f0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5e

    .line 1191
    :cond_f4
    if-eqz v14, :cond_58

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_58

    if-eqz p3, :cond_58

    .line 1194
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove to package : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v19

    if-eqz v19, :cond_12f

    .line 1196
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "removePackagesFromVpn : validate failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 1201
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "VpnPackageInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "packageName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "profileName"

    aput-object v25, v23, v24

    invoke-virtual/range {v19 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1209
    .local v9, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_171

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f0

    .line 1210
    :cond_171
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "Package doesn\'t exist in DB"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 1214
    .end local v9    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "profileName":Ljava/lang/String;
    .end local v15    # "regularPackageName":Ljava/lang/String;
    .end local v18    # "transformedPackageName":Ljava/lang/String;
    :cond_17a
    move-object/from16 v8, p2

    array-length v12, v8

    const/4 v11, 0x0

    :goto_17e
    if-ge v11, v12, :cond_1ad

    aget-object v13, v8, v11

    .line 1215
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1216
    .local v17, "tempResponseData":I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1aa

    .line 1217
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1218
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package: partial packages removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 1214
    :cond_1aa
    add-int/lit8 v11, v11, 0x1

    goto :goto_17e

    .line 1223
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "tempResponseData":I
    :cond_1ad
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_1c7} :catch_9c
    .catchall {:try_start_ca .. :try_end_1c7} :catchall_c7

    .line 1231
    :try_start_1c7
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "remove to package: all packages removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_1db
    .catchall {:try_start_1c7 .. :try_end_1db} :catchall_c7

    goto/16 :goto_58
.end method

.method public declared-synchronized removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 22
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 451
    .local v3, "adminId":I
    const/4 v9, -0x1

    .line 452
    .local v9, "removeStatus":I
    const/4 v12, -0x1

    .line 453
    .local v12, "sVpnTransition":I
    const/4 v11, -0x1

    .line 454
    .local v11, "routeType":I
    const/4 v4, 0x0

    .line 455
    .local v4, "checkForPerApp":Z
    const/4 v5, 0x0

    .line 457
    .local v5, "checkForSystem":Z
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_3a

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : profileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : personaId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_3a
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 459
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 460
    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_26d

    .line 462
    :try_start_55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_b9
    .catchall {:try_start_55 .. :try_end_5e} :catchall_26d

    move-result v16

    if-eqz v16, :cond_63

    .line 563
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_61
    :goto_61
    monitor-exit p0

    return-object v10

    .line 468
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_63
    :try_start_63
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v11

    .line 469
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_97

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile getRoutType : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_97
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_d8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v16

    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d8

    .line 471
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_61

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile Per App VPN is stil activated "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_b8} :catch_b9
    .catchall {:try_start_63 .. :try_end_b8} :catchall_26d

    goto :goto_61

    .line 559
    :catch_b9
    move-exception v6

    .line 560
    .local v6, "e":Ljava/lang/Exception;
    :try_start_ba
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : Failure at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_26d

    .line 561
    const/4 v10, 0x0

    goto :goto_61

    .line 476
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d8
    :try_start_d8
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_f8

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Check STOP profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_f8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 479
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_270

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_118

    const/16 v16, 0x67

    move/from16 v0, v16

    if-eq v12, v0, :cond_118

    const/16 v16, 0x68

    move/from16 v0, v16

    if-ne v12, v0, :cond_270

    :cond_118
    const/4 v4, 0x1

    .line 482
    :goto_119
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_273

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_131

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v12, v0, :cond_131

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v12, v0, :cond_273

    :cond_131
    const/4 v5, 0x1

    .line 486
    :goto_132
    if-nez v4, :cond_136

    if-eqz v5, :cond_1d3

    .line 489
    :cond_136
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_156

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_156
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v7

    .line 492
    .local v7, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 494
    .local v13, "stopStatus":I
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_182

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP status  =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_182
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 499
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_196

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_1a2

    :cond_196
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_1a2

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_276

    :cond_1a2
    const/4 v4, 0x1

    .line 502
    :goto_1a3
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_1af

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_1bb

    :cond_1af
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_1bb

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_279

    :cond_1bb
    const/4 v5, 0x1

    .line 505
    :goto_1bc
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v16

    if-ne v13, v0, :cond_1c6

    if-eqz v4, :cond_61

    if-eqz v5, :cond_61

    .line 509
    :cond_1c6
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-eq v11, v0, :cond_1d3

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 514
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_1d3
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_1f3

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Delete a profile "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1f3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 517
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_207

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_219

    :cond_207
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_219

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_219

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_27c

    :cond_219
    const/4 v4, 0x1

    .line 520
    :goto_21a
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_226

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_238

    :cond_226
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_238

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_238

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_27e

    :cond_238
    const/4 v5, 0x1

    .line 524
    :goto_239
    if-nez v4, :cond_23d

    if-eqz v5, :cond_61

    .line 527
    :cond_23d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v15

    .line 528
    .local v15, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v8

    .line 529
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, "vendorName":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_262

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : check a service "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_262
    if-nez v15, :cond_280

    .line 533
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "remove vpn profile : VPN Service is not started"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_26b} :catch_b9
    .catchall {:try_start_d8 .. :try_end_26b} :catchall_26d

    goto/16 :goto_61

    .line 450
    .end local v3    # "adminId":I
    .end local v4    # "checkForPerApp":Z
    .end local v5    # "checkForSystem":Z
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v9    # "removeStatus":I
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v11    # "routeType":I
    .end local v12    # "sVpnTransition":I
    .end local v14    # "vendorName":Ljava/lang/String;
    .end local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_26d
    move-exception v16

    monitor-exit p0

    throw v16

    .line 479
    .restart local v3    # "adminId":I
    .restart local v4    # "checkForPerApp":Z
    .restart local v5    # "checkForSystem":Z
    .restart local v9    # "removeStatus":I
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "routeType":I
    .restart local v12    # "sVpnTransition":I
    :cond_270
    const/4 v4, 0x0

    goto/16 :goto_119

    .line 482
    :cond_273
    const/4 v5, 0x0

    goto/16 :goto_132

    .line 499
    .restart local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v13    # "stopStatus":I
    :cond_276
    const/4 v4, 0x0

    goto/16 :goto_1a3

    .line 502
    :cond_279
    const/4 v5, 0x0

    goto/16 :goto_1bc

    .line 517
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_27c
    const/4 v4, 0x0

    goto :goto_21a

    .line 520
    :cond_27e
    const/4 v5, 0x0

    goto :goto_239

    .line 536
    .restart local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .restart local v14    # "vendorName":Ljava/lang/String;
    .restart local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_280
    :try_start_280
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v9

    .line 537
    if-nez v9, :cond_2c4

    .line 538
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_293

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : removeConnection success"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_293
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z

    .line 545
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-eq v11, v0, :cond_2ae

    .line 552
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;)V

    .line 555
    :cond_2ae
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 556
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_61

    .line 547
    :cond_2c4
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : removeConnection failed for profile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_2e0} :catch_b9
    .catchall {:try_start_280 .. :try_end_2e0} :catchall_26d

    goto/16 :goto_61
.end method

.method public setAutoRetryOnConnectionError(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1912
    const/4 v0, -0x1

    .line 1913
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1914
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1915
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1916
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1918
    if-nez p1, :cond_22

    .line 1919
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "setAutoRetryOnConnectionError : vpnContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_21
    :goto_21
    return-object v2

    .line 1923
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_22
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1924
    if-eqz p2, :cond_21

    .line 1926
    :try_start_26
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-nez v5, :cond_21

    .line 1929
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1930
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_59

    .line 1931
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "setAutoRetryOnConnectionError : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_3a

    goto :goto_21

    .line 1938
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_3a
    move-exception v1

    .line 1939
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAutoRetryOnConnectionError : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v2, 0x0

    goto :goto_21

    .line 1934
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_59
    :try_start_59
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z

    move-result v3

    .line 1935
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAutoRetryOnConnectionError : success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1937
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_81} :catch_3a

    goto :goto_21
.end method

.method public setCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 824
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 825
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 826
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 827
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 828
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 830
    :try_start_15
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1c

    .line 845
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_1b
    return-object v2

    .line 833
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 834
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_49

    .line 835
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "setting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_2a

    goto :goto_1b

    .line 841
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2a
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x0

    goto :goto_1b

    .line 838
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_49
    :try_start_49
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setCACertificate(Ljava/lang/String;[B)Z

    move-result v3

    .line 839
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 840
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_59} :catch_2a

    goto :goto_1b
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enableValidation"    # Z
    .param p4, "condition"    # Ljava/util/List;
    .param p5, "frequency"    # I

    .prologue
    const/4 v5, 0x0

    .line 1881
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1882
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1883
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1884
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1885
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1886
    if-eqz p2, :cond_1d

    .line 1888
    :try_start_17
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1e

    .line 1905
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1d
    :goto_1d
    return-object v2

    .line 1891
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1892
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_4b

    .line 1893
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "setting server cert validation : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1900
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2c
    move-exception v1

    .line 1901
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting server cert validation : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v2, 0x0

    goto :goto_1d

    .line 1896
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4b
    :try_start_4b
    invoke-interface {v4, p2, p3, p4, p5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z

    move-result v3

    .line 1898
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1899
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_2c

    goto :goto_1d
.end method

.method public declared-synchronized setUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 772
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 773
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 774
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 775
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_5e

    .line 776
    if-eqz p2, :cond_1e

    .line 778
    :try_start_18
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2e
    .catchall {:try_start_18 .. :try_end_1b} :catchall_5e

    move-result v5

    if-eqz v5, :cond_20

    .line 795
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v2

    .line 781
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_20
    :try_start_20
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 782
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_4d

    .line 783
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "setting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2d} :catch_2e
    .catchall {:try_start_20 .. :try_end_2d} :catchall_5e

    goto :goto_1e

    .line 790
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2e
    move-exception v1

    .line 791
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_5e

    .line 792
    const/4 v2, 0x0

    goto :goto_1e

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4d
    :try_start_4d
    invoke-interface {v4, p2, p3, p4}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    .line 788
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 789
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5d} :catch_2e
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5e

    goto :goto_1e

    .line 771
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .end local v3    # "success":Z
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_5e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .registers 3
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 3617
    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1835
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1836
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1837
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1838
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_75

    .line 1839
    if-ltz p3, :cond_1b

    if-le p3, v7, :cond_1d

    .line 1854
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 1843
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1d
    :try_start_1d
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1844
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_1b

    .line 1845
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setVpnModeOfOperation(Ljava/lang/String;I)I

    move-result v3

    .line 1846
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1848
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_55} :catch_56
    .catchall {:try_start_1d .. :try_end_55} :catchall_75

    goto :goto_1b

    .line 1850
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_56
    move-exception v1

    .line 1851
    .local v1, "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_75

    .line 1852
    const/4 v2, 0x0

    goto :goto_1b

    .line 1835
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_75
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 875
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 876
    .local v0, "adminId":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startConnection API called for profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 878
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 879
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_79

    .line 881
    :try_start_30
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_59
    .catchall {:try_start_30 .. :try_end_33} :catchall_79

    move-result v5

    if-eqz v5, :cond_38

    .line 895
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_36
    monitor-exit p0

    return-object v2

    .line 884
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_38
    :try_start_38
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 885
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_48

    .line 886
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "starting vpn connection : Mocana Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 887
    goto :goto_36

    .line 889
    :cond_48
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 890
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_59
    .catchall {:try_start_38 .. :try_end_58} :catchall_79

    goto :goto_36

    .line 891
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_59
    move-exception v1

    .line 892
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5a
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "starting vpn connection : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_79

    move-object v2, v4

    .line 893
    goto :goto_36

    .line 875
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_79
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 900
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 901
    .local v0, "adminId":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopConnection API called for profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 903
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 904
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_79

    .line 906
    :try_start_30
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_59
    .catchall {:try_start_30 .. :try_end_33} :catchall_79

    move-result v5

    if-eqz v5, :cond_38

    .line 920
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_36
    monitor-exit p0

    return-object v2

    .line 909
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_38
    :try_start_38
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 910
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_48

    .line 911
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "stopping vpn connection : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 912
    goto :goto_36

    .line 914
    :cond_48
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 915
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_59
    .catchall {:try_start_38 .. :try_end_58} :catchall_79

    goto :goto_36

    .line 916
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_59
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5a
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopping vpn connection : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_79

    move-object v2, v4

    .line 918
    goto :goto_36

    .line 900
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_79
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method
