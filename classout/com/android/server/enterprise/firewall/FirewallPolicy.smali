.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String;

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private isMarketChainCreated:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mCon:Landroid/net/IConnectivityManager;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/firewall/FirewallPolicyCache;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .line 151
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 122
    const-string v2, "android.intent.action.USER_ADDED"

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    .line 3719
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 3755
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 172
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    .line 173
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 175
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    .line 176
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->start()V

    .line 178
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 179
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v1, "filterConn":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Ljava/lang/Process;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/app/enterprise/ContextInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .registers 6
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1405
    packed-switch p3, :pswitch_data_40

    .line 1427
    :goto_3
    return-void

    .line 1408
    :pswitch_4
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1410
    :try_start_e
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    monitor-exit v1

    goto :goto_3

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0

    .line 1414
    :pswitch_18
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1416
    :try_start_22
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1417
    monitor-exit v1

    goto :goto_3

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 1420
    :pswitch_2c
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1422
    :try_start_36
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    monitor-exit v1

    goto :goto_3

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v0

    .line 1405
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4
        :pswitch_18
    .end packed-switch
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v5, 0x0

    .line 1482
    const-string v4, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRulesToDb enter containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1485
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 1486
    .local v1, "index":I
    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 1487
    add-int/lit8 v1, v1, 0x1

    .line 1488
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1489
    .local v3, "rule":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1492
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "cv":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1493
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    if-eqz p5, :cond_92

    .line 1497
    const-string v4, "enabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :goto_76
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_3d

    move v4, v5

    .line 1507
    .end local v3    # "rule":Ljava/lang/String;
    :goto_91
    return v4

    .line 1499
    .restart local v3    # "rule":Ljava/lang/String;
    :cond_92
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 1507
    .end local v3    # "rule":Ljava/lang/String;
    :cond_9a
    const/4 v4, 0x1

    goto :goto_91
.end method

.method private applyBasicRules(IILjava/util/List;II)Z
    .registers 23
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .param p5, "jumpAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 741
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v5, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBasicRules() containerId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " jumpAction:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 747
    .local v16, "rule":Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 748
    .local v15, "parameters":[Ljava/lang/String;
    array-length v3, v15

    const/4 v4, 0x2

    if-eq v3, v4, :cond_70

    array-length v3, v15

    const/4 v4, 0x3

    if-eq v3, v4, :cond_70

    array-length v3, v15

    const/4 v4, 0x4

    if-eq v3, v4, :cond_70

    .line 749
    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() parameters not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v3, 0x0

    .line 828
    .end local v15    # "parameters":[Ljava/lang/String;
    .end local v16    # "rule":Ljava/lang/String;
    :goto_6f
    return v3

    .line 752
    .restart local v15    # "parameters":[Ljava/lang/String;
    .restart local v16    # "rule":Ljava/lang/String;
    :cond_70
    const/4 v3, 0x0

    aget-object v3, v15, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 753
    .local v11, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v9, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v10, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "host"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v3, "port"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v3, "portLocation"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const/4 v3, 0x1

    aget-object v3, v15, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    array-length v3, v15

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bd

    .line 762
    const-string/jumbo v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    const-string v3, "default"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v14

    .line 780
    .local v14, "jsonRule":Lorg/json/JSONObject;
    :goto_b9
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 765
    .end local v14    # "jsonRule":Lorg/json/JSONObject;
    :cond_bd
    array-length v3, v15

    const/4 v4, 0x3

    if-ne v3, v4, :cond_de

    .line 766
    const-string v3, "networkInterface"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    const-string/jumbo v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const/4 v3, 0x2

    aget-object v3, v15, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v3, "app"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v14

    .restart local v14    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_b9

    .line 772
    .end local v14    # "jsonRule":Lorg/json/JSONObject;
    :cond_de
    const-string v3, "packageName"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v3, "networkInterface"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    const-string/jumbo v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    const/4 v3, 0x2

    aget-object v3, v15, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    const/4 v3, 0x3

    aget-object v3, v15, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v3, "app"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v14

    .restart local v14    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_b9

    .line 782
    .end local v9    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "args":[Ljava/lang/String;
    .end local v14    # "jsonRule":Lorg/json/JSONObject;
    .end local v15    # "parameters":[Ljava/lang/String;
    .end local v16    # "rule":Ljava/lang/String;
    :cond_10c
    const-string v7, ""

    .line 784
    .local v7, "jumpActionStr":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_13f

    .line 785
    const-string v7, "allow"

    .line 794
    :goto_115
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v12

    .line 796
    .local v12, "enabledUid":I
    move/from16 v0, p2

    if-ne v12, v0, :cond_151

    .line 797
    const/4 v8, 0x1

    .line 803
    .local v8, "enabled":Z
    :goto_126
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_156

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    .line 806
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 807
    if-eqz v8, :cond_153

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_6f

    .line 786
    .end local v8    # "enabled":Z
    .end local v12    # "enabledUid":I
    :cond_13f
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_147

    .line 787
    const-string v7, "deny"

    goto :goto_115

    .line 790
    :cond_147
    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() jumpAction not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v3, 0x0

    goto/16 :goto_6f

    .line 799
    .restart local v12    # "enabledUid":I
    :cond_151
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto :goto_126

    .line 812
    :cond_153
    const/4 v3, 0x1

    goto/16 :goto_6f

    .line 816
    :cond_156
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_172

    .line 818
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 819
    if-eqz v8, :cond_16f

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_6f

    .line 824
    :cond_16f
    const/4 v3, 0x1

    goto/16 :goto_6f

    .line 828
    :cond_172
    const/4 v3, 0x0

    goto/16 :goto_6f
.end method

.method private applyBasicRulesToIptables(ILjava/util/List;III)Z
    .registers 35
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "jumpAction"    # I
    .param p5, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyBasicRulesToIptables... adminUid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " jumpAction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const/16 v16, 0x0

    .line 984
    .local v16, "appUids":[I
    const-string v12, ""

    .line 985
    .local v12, "networkInterface":Ljava/lang/String;
    const-string v26, ""

    .line 986
    .local v26, "packageName":Ljava/lang/String;
    const-string v8, ""

    .line 987
    .local v8, "hostname":Ljava/lang/String;
    const-string v9, ""

    .line 988
    .local v9, "port":Ljava/lang/String;
    const-string v11, ""

    .line 990
    .local v11, "portLocation":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_5d

    const/4 v5, 0x2

    move/from16 v0, p3

    if-eq v0, v5, :cond_5d

    .line 991
    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... type not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const/4 v5, 0x0

    .line 1101
    :goto_5c
    return v5

    .line 996
    :cond_5d
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_64

    .line 997
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1000
    :cond_64
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v19, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v24, "ipCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v20, "hostCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 1005
    .local v25, "isHost":Z
    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_88

    const/4 v5, 0x2

    move/from16 v0, p4

    if-eq v0, v5, :cond_88

    .line 1006
    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... jumpAction not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v5, 0x0

    goto :goto_5c

    .line 1011
    :cond_88
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1013
    .local v28, "rule":Ljava/lang/String;
    if-eqz v19, :cond_9d

    .line 1014
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1018
    :cond_9d
    const-string v5, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1020
    .local v27, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b9

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b9

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b9

    .line 1021
    const/4 v5, 0x0

    goto :goto_5c

    .line 1024
    :cond_b9
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1025
    .local v17, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v8, v17, v5

    .line 1026
    const/4 v5, 0x1

    aget-object v9, v17, v5

    .line 1027
    const/4 v5, 0x1

    aget-object v11, v27, v5

    .line 1028
    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 1029
    const/16 v25, 0x1

    .line 1034
    :goto_d8
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_178

    .line 1035
    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_174

    .line 1036
    const/4 v5, 0x2

    aget-object v12, v27, v5

    .line 1053
    :cond_ec
    :goto_ec
    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 1054
    const-string v8, ""

    .line 1056
    :cond_f6
    const-string v5, "*"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 1057
    const-string v9, ""

    .line 1060
    :cond_100
    const-string v5, "-"

    const-string v6, ":"

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1062
    const-string v5, "*"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1063
    const-string v11, "both"

    .line 1066
    :cond_112
    if-eqz v26, :cond_120

    .line 1067
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    .line 1070
    :cond_120
    if-eqz v16, :cond_8c

    .line 1071
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_124
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_8c

    .line 1072
    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1073
    .local v15, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1074
    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "filter"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "both"

    const-string v10, ""

    aget v14, v16, v21

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1077
    .local v4, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    .line 1079
    if-eqz v19, :cond_1c1

    .line 1080
    if-eqz v25, :cond_1a9

    .line 1081
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_15c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1082
    .local v18, "command":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    .line 1031
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v18    # "command":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_170
    const/16 v25, 0x0

    goto/16 :goto_d8

    .line 1038
    :cond_174
    const-string v12, ""

    goto/16 :goto_ec

    .line 1040
    :cond_178
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_ec

    .line 1042
    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a2

    .line 1043
    const/4 v5, 0x2

    aget-object v5, v27, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1047
    :goto_192
    const/4 v5, 0x3

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a5

    .line 1048
    const/4 v5, 0x3

    aget-object v12, v27, v5

    goto/16 :goto_ec

    .line 1045
    :cond_1a2
    const-string v26, ""

    goto :goto_192

    .line 1050
    :cond_1a5
    const-string v12, ""

    goto/16 :goto_ec

    .line 1085
    .restart local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .restart local v21    # "i":I
    :cond_1a9
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_1ad
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1086
    .restart local v18    # "command":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ad

    .line 1071
    .end local v18    # "command":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_1c1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_124

    .line 1093
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v17    # "args":[Ljava/lang/String;
    .end local v21    # "i":I
    .end local v27    # "parameters":[Ljava/lang/String;
    .end local v28    # "rule":Ljava/lang/String;
    :cond_1c5
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d4

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1096
    :cond_1d4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1e6

    .line 1098
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    .line 1101
    :cond_1e6
    const/4 v5, 0x1

    goto/16 :goto_5c
.end method

.method private declared-synchronized applyDnsPerAppRule(II)V
    .registers 20
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3404
    monitor-enter p0

    :try_start_1
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Begin"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c0

    move-result-object v13

    if-eqz v13, :cond_be

    .line 3407
    :try_start_e
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllPackagesFromDB(II)Ljava/util/List;

    move-result-object v9

    .line 3408
    .local v9, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_be

    .line 3409
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3411
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 3412
    .local v12, "uid":I
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_be

    .line 3413
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3414
    .local v8, "packName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 3415
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v12

    .line 3416
    const-string v13, "FirewallPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyDnsPerAppRule - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " userId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3418
    .local v10, "token":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3419
    .local v3, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_69
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_87

    .line 3420
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 3421
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3419
    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 3424
    :cond_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v13, v0}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v12, v12}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3426
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3427
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Rule Applied"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_b4} :catch_b6
    .catchall {:try_start_e .. :try_end_b4} :catchall_c0

    goto/16 :goto_1d

    .line 3430
    .end local v3    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "packName":Ljava/lang/String;
    .end local v9    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "token":J
    .end local v12    # "uid":I
    :catch_b6
    move-exception v4

    .line 3431
    .local v4, "e":Ljava/lang/Exception;
    :try_start_b7
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_c0

    .line 3434
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_be
    monitor-exit p0

    return-void

    .line 3404
    :catchall_c0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;I)V
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 2690
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMarketIptablesRules , packageName->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adminUid->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v14

    .line 2692
    .local v14, "appUids":[I
    if-eqz v14, :cond_68

    .line 2693
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2e
    array-length v3, v14

    move/from16 v0, v16

    if-ge v0, v3, :cond_68

    .line 2694
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2695
    .local v13, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2696
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "filter"

    const-string v4, "samsung_market_policy"

    const-string v5, "out"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "data"

    const/4 v11, 0x1

    aget v12, v14, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2700
    .local v2, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v15

    .line 2701
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_65

    .line 2702
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2693
    :cond_65
    add-int/lit8 v16, v16, 0x1

    goto :goto_2e

    .line 2705
    .end local v2    # "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "i":I
    :cond_68
    return-void
.end method

.method private applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    .line 2652
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2653
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2655
    .local v1, "callingUid":I
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v6

    if-ne v6, v7, :cond_1c

    .line 2656
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    .line 2657
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_33

    aget-object v5, v0, v3

    .line 2658
    .local v5, "marketPackage":Ljava/lang/String;
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;I)V

    .line 2657
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2660
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "marketPackage":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v6

    if-nez v6, :cond_33

    .line 2661
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_26
    if-ge v3, v4, :cond_30

    aget-object v5, v0, v3

    .line 2662
    .restart local v5    # "marketPackage":Ljava/lang/String;
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeMarketIptablesRules(ILjava/lang/String;I)V

    .line 2661
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2664
    .end local v5    # "marketPackage":Ljava/lang/String;
    :cond_30
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeChainForMarket(I)V

    .line 2666
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_33
    return-void
.end method

.method private applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 919
    const-string v2, "FirewallPolicy"

    const-string v6, "applyProxyRules..."

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 921
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 922
    .local v5, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 923
    .local v3, "containerId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v16

    .line 924
    .local v16, "enabledUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v4, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    move/from16 v0, v16

    if-ne v0, v5, :cond_35

    .line 928
    const/4 v7, 0x1

    .line 932
    .local v7, "enabled":Z
    :goto_23
    if-eqz p2, :cond_33

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_33

    if-eqz p3, :cond_33

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_37

    .line 933
    :cond_33
    const/4 v2, 0x0

    .line 972
    :goto_34
    return v2

    .line 930
    .end local v7    # "enabled":Z
    :cond_35
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto :goto_23

    .line 936
    :cond_37
    :try_start_37
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 937
    .local v17, "jsonRule":Lorg/json/JSONObject;
    const-string v2, "host"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    const-string v2, "port"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_53} :catch_75

    .line 944
    .end local v17    # "jsonRule":Lorg/json/JSONObject;
    :goto_53
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_82

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 945
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 947
    if-eqz v7, :cond_7e

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 949
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_34

    .line 940
    :catch_75
    move-exception v15

    .line 941
    .local v15, "e":Lorg/json/JSONException;
    const-string v2, "FirewallPolicy"

    const-string v6, "JSONException"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 952
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_7e
    const/4 v2, 0x1

    goto :goto_34

    .line 955
    :cond_80
    const/4 v2, 0x0

    goto :goto_34

    .line 958
    :cond_82
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_a8

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 961
    if-eqz v7, :cond_a4

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 963
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_34

    .line 966
    :cond_a4
    const/4 v2, 0x1

    goto :goto_34

    .line 969
    :cond_a6
    const/4 v2, 0x0

    goto :goto_34

    .line 972
    :cond_a8
    const/4 v2, 0x0

    goto :goto_34
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 24
    .param p1, "containerId"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "proxyType"    # Ljava/lang/String;
    .param p6, "adminUid"    # I

    .prologue
    .line 1207
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1210
    .local v15, "appUids":[I
    sget-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_d

    .line 1211
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1214
    :cond_d
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz p3, :cond_1d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    .line 1215
    :cond_1d
    const/4 v4, 0x0

    .line 1239
    :goto_1e
    return v4

    .line 1218
    :cond_1f
    const-string v8, ""

    .line 1219
    .local v8, "protocolPort":Ljava/lang/String;
    const-string v4, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1220
    const-string v8, "80"

    .line 1223
    :cond_2d
    const-string v4, "*"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v15

    .line 1225
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1226
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1227
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1228
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1229
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v4, "nat"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "out"

    const-string v7, ""

    const-string/jumbo v9, "tcp"

    const-string v10, "remote"

    const-string v11, ""

    const/4 v12, 0x0

    aget v13, v15, v12

    move/from16 v12, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1233
    .local v3, "proxyRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1235
    if-eqz v16, :cond_8a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8a

    .line 1236
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1239
    :cond_8a
    const/4 v4, 0x1

    goto :goto_1e
.end method

.method private applyRedirectExceptionRules(IILjava/util/List;I)Z
    .registers 18
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2769
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "FirewallPolicy"

    const-string v2, "applyRedirectExceptionRules..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2772
    .local v3, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2773
    .local v12, "rule":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2774
    .local v11, "parameters":[Ljava/lang/String;
    array-length v1, v11

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    .line 2775
    const/4 v1, 0x0

    .line 2812
    .end local v11    # "parameters":[Ljava/lang/String;
    .end local v12    # "rule":Ljava/lang/String;
    :goto_27
    return v1

    .line 2777
    .restart local v11    # "parameters":[Ljava/lang/String;
    .restart local v12    # "rule":Ljava/lang/String;
    :cond_28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2778
    .local v7, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2779
    .local v8, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "host"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2780
    const-string v1, "port"

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2781
    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2782
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2783
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 2786
    .end local v7    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "parameters":[Ljava/lang/String;
    .end local v12    # "rule":Ljava/lang/String;
    :cond_50
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v9

    .line 2788
    .local v9, "enabledUid":I
    if-ne v9, p2, :cond_72

    .line 2789
    const/4 v6, 0x1

    .line 2794
    .local v6, "enabled":Z
    :goto_5b
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_76

    .line 2796
    const-string v5, "redirect_exception"

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2797
    if-eqz v6, :cond_74

    .line 2798
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_27

    .line 2791
    .end local v6    # "enabled":Z
    :cond_72
    const/4 v6, 0x0

    .restart local v6    # "enabled":Z
    goto :goto_5b

    .line 2800
    :cond_74
    const/4 v1, 0x1

    goto :goto_27

    .line 2803
    :cond_76
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_8c

    .line 2804
    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, v3, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2805
    if-eqz v6, :cond_8a

    .line 2806
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_27

    .line 2808
    :cond_8a
    const/4 v1, 0x1

    goto :goto_27

    .line 2812
    :cond_8c
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z
    .registers 26
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 2817
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "FirewallPolicy"

    const-string v4, "applyRedirectExceptionRulesToIptables..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    sget-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v3, :cond_e

    .line 2819
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 2821
    :cond_e
    const-string v8, "both"

    .line 2822
    .local v8, "protocol":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2823
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2824
    .local v19, "rule":Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2825
    .local v18, "parameters":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2826
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v18, v3

    .line 2828
    :cond_3d
    const/4 v3, 0x1

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 2829
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v18, v3

    .line 2830
    const-string v8, ""

    .line 2832
    :cond_4f
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2833
    .local v13, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2834
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "nat"

    const-string v4, "samsung_exceptions"

    const-string v5, "out"

    const/4 v6, 0x0

    aget-object v6, v18, v6

    const/4 v7, 0x1

    aget-object v7, v18, v7

    const-string v9, "remote"

    const-string v10, ""

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v11, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2838
    .local v2, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v20

    .line 2839
    .local v20, "tempCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_19

    .line 2840
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_81
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2842
    .local v14, "command":Ljava/lang/String;
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 2847
    .end local v2    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v14    # "command":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "rule":Ljava/lang/String;
    .end local v20    # "tempCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b6

    .line 2848
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2850
    :cond_b6
    const/4 v3, 0x1

    return v3
.end method

.method private applyRerouteRules(IILjava/util/List;I)Z
    .registers 23
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 834
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v5, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 837
    .local v17, "rule":Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 839
    .local v11, "args":[Ljava/lang/String;
    array-length v3, v11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    array-length v3, v11

    const/4 v4, 0x4

    if-eq v3, v4, :cond_27

    .line 840
    const/4 v3, 0x0

    .line 911
    .end local v11    # "args":[Ljava/lang/String;
    .end local v17    # "rule":Ljava/lang/String;
    :goto_26
    return v3

    .line 843
    .restart local v11    # "args":[Ljava/lang/String;
    .restart local v17    # "rule":Ljava/lang/String;
    :cond_27
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 844
    .local v16, "originArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v11, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 846
    .local v12, "destArgs":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v9, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v10, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "originHost"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    const-string v3, "originPort"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    const-string v3, "destHost"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    const-string v3, "destPort"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    array-length v3, v11

    const/4 v4, 0x2

    if-ne v3, v4, :cond_88

    .line 858
    const-string/jumbo v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    const-string v3, "default"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .line 870
    .local v15, "jsonRule":Lorg/json/JSONObject;
    :goto_84
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 862
    .end local v15    # "jsonRule":Lorg/json/JSONObject;
    :cond_88
    const-string v3, "packageName"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v3, "networkInterface"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    const-string/jumbo v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const/4 v3, 0x2

    aget-object v3, v11, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    const/4 v3, 0x3

    aget-object v3, v11, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    const-string v3, "app"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_84

    .line 874
    .end local v9    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "args":[Ljava/lang/String;
    .end local v12    # "destArgs":[Ljava/lang/String;
    .end local v15    # "jsonRule":Lorg/json/JSONObject;
    .end local v16    # "originArgs":[Ljava/lang/String;
    .end local v17    # "rule":Ljava/lang/String;
    :cond_b6
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v13

    .line 876
    .local v13, "enabledUid":I
    move/from16 v0, p2

    if-ne v13, v0, :cond_e7

    .line 877
    const/4 v8, 0x1

    .line 882
    .local v8, "enabled":Z
    :goto_c7
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_d1

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_ef

    .line 883
    :cond_d1
    const-string v7, "reroute"

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 884
    if-eqz v8, :cond_e9

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_26

    .line 879
    .end local v8    # "enabled":Z
    :cond_e7
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto :goto_c7

    .line 888
    :cond_e9
    const/4 v3, 0x1

    goto/16 :goto_26

    .line 891
    :cond_ec
    const/4 v3, 0x0

    goto/16 :goto_26

    .line 894
    :cond_ef
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_110

    .line 895
    const-string v3, "reroute"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 897
    if-eqz v8, :cond_10a

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_26

    .line 903
    :cond_10a
    const/4 v3, 0x1

    goto/16 :goto_26

    .line 907
    :cond_10d
    const/4 v3, 0x0

    goto/16 :goto_26

    .line 911
    :cond_110
    const/4 v3, 0x0

    goto/16 :goto_26
.end method

.method private applyRerouteRulesToIptables(ILjava/util/List;II)Z
    .registers 35
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1108
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 1110
    .local v26, "isHost":Z
    const-string v28, ""

    .line 1111
    .local v28, "packageName":Ljava/lang/String;
    const-string v12, ""

    .line 1112
    .local v12, "networkInterface":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1113
    .local v16, "appUids":[I
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyRerouteRulesToIptables... adminUid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rulesList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_4f

    .line 1117
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1120
    :cond_4f
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v19, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v25, "ipCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v21, "hostCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_62
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_194

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1125
    .local v29, "rule":Ljava/lang/String;
    if-eqz v19, :cond_73

    .line 1126
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1127
    :cond_73
    const-string v5, ";"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1128
    .local v17, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1129
    .local v27, "originArgs":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1131
    .local v20, "destArgs":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b5

    .line 1132
    const/4 v5, 0x2

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    .line 1133
    const/4 v5, 0x2

    aget-object v5, v17, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1135
    :cond_a7
    const/4 v5, 0x3

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 1136
    const/4 v5, 0x3

    aget-object v12, v17, v5

    .line 1140
    :cond_b5
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 1141
    const/16 v26, 0x1

    .line 1145
    :goto_c2
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 1146
    const/16 v26, 0x0

    .line 1147
    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v27, v5

    .line 1149
    :cond_d4
    const/4 v5, 0x1

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    .line 1150
    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v27, v5

    .line 1154
    :goto_e4
    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 1155
    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v20, v5

    .line 1158
    :cond_f4
    if-eqz v28, :cond_102

    .line 1159
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    .line 1162
    :cond_102
    if-eqz v16, :cond_62

    .line 1163
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_106
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v22

    if-ge v0, v5, :cond_62

    .line 1165
    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1166
    .local v15, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1167
    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1168
    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1169
    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "nat"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "out"

    const/4 v8, 0x0

    aget-object v8, v27, v8

    const/4 v9, 0x1

    aget-object v9, v27, v9

    const-string v10, "both"

    const-string v11, "remote"

    aget v14, v16, v22

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1174
    .local v4, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    .line 1177
    if-eqz v19, :cond_190

    .line 1178
    if-eqz v26, :cond_178

    .line 1179
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_150
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_190

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1180
    .local v18, "command":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 1143
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v18    # "command":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_164
    const/16 v26, 0x0

    goto/16 :goto_c2

    .line 1152
    :cond_168
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v27, v6

    const-string v7, "-"

    const-string v8, ":"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    goto/16 :goto_e4

    .line 1183
    .restart local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .restart local v22    # "i":I
    :cond_178
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_17c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_190

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1184
    .restart local v18    # "command":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17c

    .line 1163
    .end local v18    # "command":Ljava/lang/String;
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_190
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_106

    .line 1192
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v17    # "args":[Ljava/lang/String;
    .end local v20    # "destArgs":[Ljava/lang/String;
    .end local v22    # "i":I
    .end local v27    # "originArgs":[Ljava/lang/String;
    .end local v29    # "rule":Ljava/lang/String;
    :cond_194
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1a3

    .line 1193
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1195
    :cond_1a3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1b4

    .line 1197
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    .line 1201
    :cond_1b4
    const/4 v5, 0x1

    return v5
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1828
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1829
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "rules =? "

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const-string v4, "rules"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "returnValue":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1832
    const/4 v2, 0x1

    .line 1834
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1395
    if-nez p1, :cond_4

    .line 1401
    :cond_3
    :goto_3
    return v0

    .line 1398
    :cond_4
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1399
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkOnline()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1838
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 1840
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1841
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1842
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 1843
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v3

    .line 1845
    .local v3, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_41

    .line 1846
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_24
    const/4 v5, 0x2

    if-ge v0, v5, :cond_3b

    .line 1847
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V

    .line 1846
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1845
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1851
    .end local v0    # "containerId":I
    .end local v3    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "x":I
    :cond_3e
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_41} :catch_42

    .line 1860
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_41
    :goto_41
    return-void

    .line 1853
    :catch_42
    move-exception v1

    .line 1854
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FirewallPolicy"

    const-string v6, "checkOnline exception"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_41

    .line 1858
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_41
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1291
    if-nez p2, :cond_3

    .line 1299
    :goto_2
    return-void

    .line 1294
    :cond_3
    if-nez p3, :cond_1c

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1297
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1618
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    .line 1623
    const/4 v1, 0x1

    return v1
.end method

.method private clearDnsPerApp(II)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 3387
    const/4 v4, 0x0

    .line 3390
    .local v4, "ret":Z
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackagesFromDB(II)Ljava/util/List;

    move-result-object v3

    .line 3391
    .local v3, "packagesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3393
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3395
    .local v2, "packName":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b

    move-result v5

    or-int/2addr v4, v5

    .line 3396
    goto :goto_9

    .line 3397
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "packName":Ljava/lang/String;
    .end local v3    # "packagesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1b
    move-exception v0

    .line 3398
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "FirewallPolicy"

    const-string v6, "Exception clearDnsPerApp"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    return v4
.end method

.method private clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V
    .registers 4
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .prologue
    .line 1469
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1470
    :try_start_3
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1471
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 1472
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1473
    :try_start_c
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1474
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 1475
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1476
    :try_start_15
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1477
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 1478
    return-void

    .line 1471
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 1474
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 1477
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private createChainForMarket(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 2669
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    if-nez v1, :cond_1a

    .line 2670
    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    .line 2676
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    return-void
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3188
    const/4 v0, 0x0

    .line 3189
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3191
    .local v2, "token":J
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_14
    .catchall {:try_start_5 .. :try_end_f} :catchall_1f

    move-result-object v0

    .line 3197
    :goto_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3199
    return-object v0

    .line 3193
    :catch_14
    move-exception v1

    .line 3194
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    const-string v4, "FirewallPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3195
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 3197
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private createIptablesChains(I)V
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1313
    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    const-string v1, "/system/bin/iptables -t nat -A OUTPUT -j samsung_exceptions-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1329
    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    .line 1330
    return-void
.end method

.method private createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2017
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_d

    move-object v2, v5

    .line 2037
    :cond_c
    :goto_c
    return-object v2

    .line 2021
    :cond_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2024
    .local v2, "jsonRule":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    :try_start_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 2025
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2026
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2027
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2f

    .line 2028
    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2024
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2030
    :cond_2f
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_32} :catch_33

    goto :goto_2c

    .line 2033
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_33
    move-exception v0

    .line 2034
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 2035
    goto :goto_c
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1333
    if-nez p3, :cond_30

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    :goto_2f
    return-object v0

    .line 1337
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1263
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1264
    .local v9, "enabledUid":I
    const-string v0, "FirewallPolicy"

    const-string v2, "disableProxyOnIptables"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1266
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1267
    .local v6, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1268
    .local v1, "containerId":I
    if-ne v9, v6, :cond_52

    .line 1270
    const-string v0, "proxy"

    invoke-direct {p0, v1, v9, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1272
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 1273
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1274
    .local v11, "ruleUid":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 1275
    .local v12, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1276
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_52

    .line 1277
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 1278
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1280
    .local v8, "args":[Ljava/lang/String;
    aget-object v2, v8, v3

    aget-object v3, v8, v13

    const/4 v4, 0x2

    const-string v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 1287
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleUid":I
    .end local v12    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_52
    return v13
.end method

.method private disableRulesOnIptables(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabledUid"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1243
    const-string v2, "FirewallPolicy"

    const-string v3, "disableRulesOnIptables"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1245
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1246
    .local v1, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1247
    .local v0, "containerId":I
    if-ne p2, v1, :cond_97

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1253
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1257
    const-string v2, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1259
    :cond_97
    return v5
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1918
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1920
    return-object p1
.end method

.method private enforceFirewallPermissionForContentProvider(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1924
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.MDM_CONTENT_PROVIDER"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1926
    return-object p1
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V
    .registers 12
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "containerId"    # I

    .prologue
    .line 1432
    monitor-enter p0

    :try_start_1
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    .line 1433
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1434
    .local v7, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1435
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_2d

    .line 1438
    :try_start_11
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1439
    .local v2, "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_15

    .line 1432
    .end local v2    # "command":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1435
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0

    .line 1444
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_2a

    .line 1445
    :try_start_33
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_59

    .line 1446
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3a
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1447
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_8d

    .line 1450
    :try_start_40
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1451
    .restart local v2    # "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_2a

    goto :goto_44

    .line 1447
    .end local v2    # "command":Ljava/lang/String;
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_59
    move-exception v0

    :goto_5a
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v0

    .line 1456
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5c
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_2a

    .line 1457
    :try_start_5f
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_85

    .line 1458
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_66
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1459
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_8b

    .line 1462
    :try_start_6c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_70
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1463
    .restart local v2    # "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_2a

    goto :goto_70

    .line 1459
    .end local v2    # "command":Ljava/lang/String;
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_85
    move-exception v0

    move-object v7, v8

    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_87
    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_8b

    :try_start_88
    throw v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_2a

    .line 1466
    :cond_89
    monitor-exit p0

    return-void

    .line 1459
    :catchall_8b
    move-exception v0

    goto :goto_87

    .line 1447
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_8d
    move-exception v0

    move-object v7, v8

    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5a
.end method

.method private getAllAdminsNetworkForMarketEnabled(II)I
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2741
    const-string v0, "FirewallPolicy"

    const-string v1, "getAllAdminsNetworkForMarketEnabled ..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2743
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, -0x1

    .line 2744
    .local v11, "uidList":I
    new-array v3, v2, [Ljava/lang/String;

    .line 2745
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 2747
    const-string v0, "MarketNetworkType=?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 2755
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_53

    .line 2756
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2757
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2758
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 2759
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2760
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2761
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2764
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_53
    return v11
.end method

.method private getAllPackagesFromDB(II)Ljava/util/List;
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3481
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 3482
    .local v4, "returnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    .line 3484
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-virtual {v5, p1, v6, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 3487
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_14

    .line 3488
    const/4 v3, 0x0

    .line 3500
    :cond_13
    return-object v3

    .line 3491
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3492
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3494
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3495
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3497
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method private getAllRules(II)Ljava/util/List;
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1788
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v3, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1791
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "allow"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1792
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1793
    .local v2, "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1795
    .end local v2    # "rule":Ljava/lang/String;
    :cond_3b
    const-string v4, "deny"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1796
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1797
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";deny"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1799
    .end local v2    # "rule":Ljava/lang/String;
    :cond_6c
    const-string v4, "reroute"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1800
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1801
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";reroute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 1803
    .end local v2    # "rule":Ljava/lang/String;
    :cond_9d
    const-string v4, "redirect_exception"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1804
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1805
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";redirect_exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 1808
    .end local v2    # "rule":Ljava/lang/String;
    :cond_ce
    return-object v1
.end method

.method private getAllUsers()Ljava/util/ArrayList;
    .registers 9
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
    .line 1863
    const/4 v3, 0x0

    .line 1864
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1865
    .local v1, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1866
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    .local v5, "userListList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1868
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1869
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1871
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1872
    return-object v5
.end method

.method private getAppUid(Ljava/lang/String;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2041
    const/4 v1, -0x1

    .line 2042
    .local v1, "appUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2044
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2045
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_10

    move v4, v1

    .line 2050
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_f
    return v4

    .line 2046
    :catch_10
    move-exception v2

    .line 2047
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    const/4 v4, -0x1

    goto :goto_f
.end method

.method private getAppUidForUser(Ljava/lang/String;I)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2054
    const/4 v1, -0x1

    .line 2055
    .local v1, "appUid":I
    const/4 v2, 0x0

    .line 2057
    .local v2, "ctx":Landroid/content/Context;
    const-string v5, "android"

    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 2058
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2060
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_e
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2061
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_15

    .line 2065
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_14
    return v1

    .line 2062
    :catch_15
    move-exception v3

    .line 2063
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private getAppUids(I)[I
    .registers 11
    .param p1, "containerId"    # I

    .prologue
    .line 2069
    const/4 v2, 0x0

    .line 2071
    .local v2, "appUids":[I
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackages(I)[Ljava/lang/String;

    move-result-object v6

    .line 2072
    .local v6, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2073
    .local v4, "j":I
    if-eqz v6, :cond_3e

    array-length v7, v6

    if-lez v7, :cond_3e

    .line 2074
    array-length v7, v6

    new-array v2, v7, [I

    .line 2075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2076
    .local v0, "Uids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    array-length v7, v6

    if-ge v3, v7, :cond_3e

    .line 2077
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v1

    .line 2078
    .local v1, "appUid":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3b

    .line 2079
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3b

    .line 2080
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aput v1, v2, v4

    .line 2081
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 2076
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2086
    .end local v0    # "Uids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1    # "appUid":I
    .end local v3    # "i":I
    :cond_3e
    if-nez v4, :cond_41

    const/4 v2, 0x0

    .end local v2    # "appUids":[I
    :cond_41
    return-object v2
.end method

.method private getAppUids(ILjava/lang/String;I)[I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2090
    const/4 v1, 0x0

    .line 2091
    .local v1, "appUids":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2092
    .local v2, "token":J
    if-lez p1, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 2093
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    .line 2108
    :cond_13
    :goto_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2109
    return-object v1

    .line 2095
    :cond_17
    const-string v4, "*"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2096
    :cond_2f
    new-array v1, v6, [I

    .line 2097
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_13

    .line 2100
    :cond_38
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    .line 2101
    .local v0, "appUid":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_45

    const/4 v4, -0x1

    if-eq v0, v4, :cond_13

    .line 2103
    :cond_45
    new-array v1, v6, [I

    .line 2104
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_13
.end method

.method private getAppUidsForAllUsers(ILjava/lang/String;)[I
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2113
    const/4 v1, 0x0

    .line 2114
    .local v1, "appUids":[I
    if-lez p1, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_e

    .line 2115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    .line 2131
    :cond_d
    return-object v1

    .line 2117
    :cond_e
    const/4 v0, 0x0

    .line 2118
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2119
    .local v5, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2120
    .local v8, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2121
    .local v2, "appUidsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2122
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-direct {p0, p2, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v0

    .line 2123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2125
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_42
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2126
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [I

    .line 2127
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_d

    .line 2128
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v3

    .line 2127
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c
.end method

.method private getChain(I)Ljava/lang/String;
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 2139
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 2141
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2143
    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    goto :goto_f
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 10
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1877
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1879
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_70
    .catchall {:try_start_6 .. :try_end_14} :catchall_4b

    .line 1881
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 1882
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_31
    .catchall {:try_start_14 .. :try_end_30} :catchall_6d

    goto :goto_14

    .line 1884
    .end local v3    # "line":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object v1, v2

    .line 1885
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_33
    :try_start_33
    const-string v5, "FirewallPolicy"

    const-string v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4b

    .line 1888
    if-eqz v1, :cond_3f

    .line 1889
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5b

    .line 1895
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1888
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_44
    if-eqz v2, :cond_49

    .line 1889
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_64

    :cond_49
    :goto_49
    move-object v1, v2

    .line 1894
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 1887
    .end local v3    # "line":Ljava/lang/String;
    :catchall_4b
    move-exception v5

    .line 1888
    :goto_4c
    if-eqz v1, :cond_51

    .line 1889
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 1887
    :cond_51
    :goto_51
    throw v5

    .line 1891
    :catch_52
    move-exception v0

    .line 1892
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "FirewallPolicy"

    const-string v7, "IOException on getCommandResult"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 1891
    :catch_5b
    move-exception v0

    .line 1892
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 1891
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_64
    move-exception v0

    .line 1892
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_6d
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4c

    .line 1884
    :catch_70
    move-exception v0

    goto :goto_33
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 3

    .prologue
    .line 3709
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3710
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 3711
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_12

    .line 3712
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    .line 3715
    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3136
    if-gtz p0, :cond_3

    .line 3140
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3505
    const-string v0, "FirewallPolicy"

    const-string v1, "getDnsFromPackage - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3508
    .local v3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3509
    const-string v0, "packageName=?"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 3512
    .local v2, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "packageName"

    aput-object v1, v2, v0

    .line 3513
    const/4 v0, 0x1

    const-string v1, "dns1"

    aput-object v1, v2, v0

    .line 3514
    const/4 v0, 0x2

    const-string v1, "dns2"

    aput-object v1, v2, v0

    .line 3516
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DNSPerApp"

    const/4 v4, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    .line 3519
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3521
    .local v9, "resultSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_74

    if-eqz p2, :cond_74

    .line 3522
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3524
    :try_start_3d
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 3525
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3526
    const/4 v8, 0x0

    .line 3527
    .local v8, "index":I
    const-string v0, "dns1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3528
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3530
    const-string v0, "dns2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3531
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_74} :catch_78

    .line 3539
    .end local v8    # "index":I
    :cond_74
    :goto_74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3540
    return-object v9

    .line 3535
    :catch_78
    move-exception v7

    .line 3536
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "package dns empty"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1907
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1910
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v5, 0x2

    .line 3203
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 3205
    new-array v0, v5, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3206
    .local v0, "fpCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v5, :cond_1c

    .line 3207
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;-><init>(I)V

    aput-object v3, v0, v1

    .line 3206
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3209
    :cond_1c
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    .end local v0    # "fpCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .end local v1    # "i":I
    :cond_25
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3213
    .local v2, "tCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    aget-object v3, v2, p2

    return-object v3
.end method

.method private getLastUidForProxy(I)I
    .registers 12
    .param p1, "containerId"    # I

    .prologue
    .line 1739
    const-string v0, "FirewallPolicy"

    const-string v1, "getLastUidForProxy"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1741
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1742
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1744
    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1751
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1752
    const-string v0, "adminUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1753
    .local v7, "index":I
    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v8, "lUid":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1758
    .end local v7    # "index":I
    .end local v8    # "lUid":Ljava/lang/Long;
    .local v9, "uid":Ljava/lang/Integer;
    :goto_4f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1759
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1756
    .end local v9    # "uid":Ljava/lang/Integer;
    :cond_6f
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .restart local v9    # "uid":Ljava/lang/Integer;
    goto :goto_4f
.end method

.method private getLastUidForProxy(II)I
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1764
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1765
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1766
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1768
    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1775
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1776
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1777
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1778
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1782
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1783
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1780
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_69
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_49
.end method

.method private getLastUidForRules(II)I
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1713
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1715
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1716
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1718
    const-string/jumbo v0, "type !=? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1727
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1728
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1729
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1730
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1734
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1735
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1732
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_51
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_49
.end method

.method private getNetworkAppsList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
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
    .line 3094
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3097
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3098
    .local v5, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    .line 3099
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3102
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v7, "android.permission.INTERNET"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1d

    .line 3103
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 3106
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_39
    return-object v4
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .prologue
    .line 3698
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3699
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 3700
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_12

    .line 3701
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    .line 3704
    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3144
    if-gtz p0, :cond_3

    .line 3149
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private getPackagesFromDB(II)Ljava/util/List;
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3454
    const-string v5, "FirewallPolicy"

    const-string v6, "getPackagesFromDB - Begin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 3457
    .local v4, "returnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    .line 3459
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 3462
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_1f

    .line 3463
    const/4 v3, 0x0

    .line 3475
    :cond_1e
    return-object v3

    .line 3466
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3467
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3469
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3470
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3472
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRulesFromDb.. containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1543
    .local v6, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1544
    .local v8, "userId":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 1546
    .local v5, "returnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "rules"

    aput-object v3, v5, v2

    .line 1547
    const/4 v2, 0x1

    const-string v3, "adminUid"

    aput-object v3, v5, v2

    .line 1548
    const-string/jumbo v2, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string v2, "adminUid =? "

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1551
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1553
    .local v9, "adminUid":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v14, "resultset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2de

    .line 1555
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1556
    :goto_79
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2db

    .line 1557
    const-string v2, "rules"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1559
    .local v13, "jsonString":Ljava/lang/String;
    const-string v2, "adminUid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1562
    const-string v15, ""

    .line 1564
    .local v15, "ruleStr":Ljava/lang/String;
    :try_start_95
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v12, "json":Lorg/json/JSONObject;
    const-string v2, "reroute"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1566
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1567
    .local v16, "ruleType":Ljava/lang/String;
    if-eqz v16, :cond_119

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 1568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_f9} :catch_2d1

    move-result-object v15

    .line 1607
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_fa
    :goto_fa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_79

    .line 1571
    .restart local v12    # "json":Lorg/json/JSONObject;
    .restart local v16    # "ruleType":Ljava/lang/String;
    :cond_119
    if-eqz v16, :cond_fa

    :try_start_11b
    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_fa

    .line 1579
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_190
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a4

    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ac

    .line 1580
    :cond_1a4
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1581
    .restart local v16    # "ruleType":Ljava/lang/String;
    if-eqz v16, :cond_1ec

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 1582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_fa

    .line 1584
    :cond_1ec
    if-eqz v16, :cond_fa

    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1585
    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_fa

    .line 1594
    :cond_25d
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_fa

    .line 1601
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_2ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2ce
    .catch Lorg/json/JSONException; {:try_start_11b .. :try_end_2ce} :catch_2d1

    move-result-object v15

    goto/16 :goto_fa

    .line 1603
    .end local v12    # "json":Lorg/json/JSONObject;
    :catch_2d1
    move-exception v11

    .line 1604
    .local v11, "e":Lorg/json/JSONException;
    const-string v2, "FirewallPolicy"

    const-string v3, "JSONException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fa

    .line 1611
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v15    # "ruleStr":Ljava/lang/String;
    :cond_2db
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1613
    :cond_2de
    return-object v14
.end method

.method private getURLFilterEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2316
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2317
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2318
    .local v2, "userId":I
    if-eqz p2, :cond_b

    .line 2319
    const/4 v3, -0x1

    iput v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2321
    :cond_b
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2322
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_21

    .line 2323
    const-string v3, "filtering"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    .line 2325
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 2326
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2328
    :cond_21
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    return v3
.end method

.method private getURLFilterListInternal(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2368
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2370
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 2371
    .local v2, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2372
    .local v3, "userId":I
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getURLFilterList => userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callerUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allAdmins "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2374
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    if-ne p2, v7, :cond_75

    .line 2380
    iget-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    if-nez v4, :cond_72

    .line 2381
    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 2382
    if-eqz v2, :cond_6e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 2383
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v5

    .line 2384
    :try_start_59
    const-string v4, "FirewallPolicy"

    const-string v6, "getUrlBlackList - synchronized"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2386
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2387
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2388
    monitor-exit v5

    .line 2396
    :cond_6e
    :goto_6e
    return-object v2

    .line 2388
    :catchall_6f
    move-exception v4

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_6f

    throw v4

    .line 2391
    :cond_72
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    goto :goto_6e

    .line 2394
    :cond_75
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_6e
.end method

.method private getURLFilterReportEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2577
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getURLFilterReportEnabledInternal("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2579
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2581
    .local v2, "userId":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2582
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    if-nez v3, :cond_54

    .line 2583
    const-string v3, "logging"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    .line 2585
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 2586
    const-string v3, "FirewallCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caache.mUrlFilterReportState=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2589
    :cond_54
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    return v3
.end method

.method private getUidFromRule(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1824
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2168
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2169
    .local v7, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2171
    .local v1, "containerId":I
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 2172
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    .line 2173
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    .local v8, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    if-nez p2, :cond_67

    .line 2176
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2179
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_3f

    .line 2180
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const/4 v8, 0x0

    .line 2220
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    return-object v8

    .line 2184
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_59

    .line 2187
    :cond_45
    :try_start_45
    const-string/jumbo v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_56} :catch_5d

    move-result v10

    if-nez v10, :cond_45

    .line 2195
    :cond_59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 2190
    :catch_5d
    move-exception v5

    .line 2191
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const/4 v8, 0x0

    goto :goto_3e

    .line 2197
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_67
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2198
    .local v9, "userId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2201
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_88
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8f} :catch_a1

    move-result-object v4

    .line 2208
    if-eqz v4, :cond_98

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 2209
    :cond_98
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const/4 v8, 0x0

    goto :goto_3e

    .line 2203
    :catch_a1
    move-exception v5

    .line 2204
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "FirewallPolicy"

    const-string v11, "Policy Disable"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const/4 v8, 0x0

    goto :goto_3e

    .line 2213
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_ab
    const/4 v3, 0x0

    .line 2214
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2215
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_b0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 2216
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 2217
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0
.end method

.method private getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 2224
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 2225
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object p2, v0, v10

    .line 2226
    const/4 v6, 0x0

    .line 2228
    .local v6, "ret":Z
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2229
    .local v8, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2231
    .local v1, "containerId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containerId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " column:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    if-lez v8, :cond_87

    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_87

    .line 2233
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v8, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2235
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_7f

    .line 2236
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_63

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 2237
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 2238
    const/4 v6, 0x1

    .line 2241
    :cond_63
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2265
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_66
    :goto_66
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - ret: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    return v6

    .line 2243
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_7f
    const-string v10, "FirewallPolicy"

    const-string v11, "Cursor is NULL"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 2247
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_87
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2248
    .local v9, "userId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v12, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 2251
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_66

    .line 2252
    const/4 v3, 0x0

    .line 2253
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2255
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_66

    .line 2256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 2257
    .restart local v3    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2258
    .local v7, "string":Ljava/lang/String;
    if-eqz v7, :cond_b4

    const-string/jumbo v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 2259
    const/4 v6, 0x1

    .line 2260
    goto :goto_66
.end method

.method private handleConnectivityAction()V
    .registers 1

    .prologue
    .line 1902
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkOnline()V

    .line 1903
    return-void
.end method

.method private isDomain(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2992
    const/4 v5, 0x1

    .line 2993
    .local v5, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateDomain(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 2994
    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2995
    .local v2, "hosts":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-gt v6, v7, :cond_24

    .line 2996
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_13
    if-ge v3, v4, :cond_24

    aget-object v1, v0, v3

    .line 2997
    .local v1, "hostPiece":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_22

    const/4 v6, 0x1

    :goto_1e
    and-int/2addr v5, v6

    .line 2996
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2997
    :cond_22
    const/4 v6, 0x0

    goto :goto_1e

    .line 3000
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "hostPiece":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_24
    return v5
.end method

.method private refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z
    .registers 8
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3217
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v2, :cond_6

    .line 3228
    :cond_5
    :goto_5
    return v1

    .line 3220
    :cond_6
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3221
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3222
    .local v0, "tCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3223
    aput-object p1, v0, p3

    .line 3224
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3228
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private refreshProxyRules()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 619
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    .line 621
    .local v2, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string v6, "nat"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_11
    const/4 v4, 0x2

    if-ge v0, v4, :cond_35

    .line 623
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 624
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    .line 626
    .local v1, "enabledUid":I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_2f

    .line 628
    invoke-virtual {p0, v0, v7, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxyWithUid(IZI)Z

    .line 623
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 622
    .end local v1    # "enabledUid":I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 632
    .end local v3    # "x":I
    :cond_35
    return v7
.end method

.method private refreshRules()Z
    .registers 15

    .prologue
    .line 555
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x0

    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "FirewallPolicy"

    const-string v2, "--- Refresh Rules ----"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v12

    .line 564
    .local v12, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "containerId":I
    :goto_93
    const/4 v0, 0x2

    if-ge v1, v0, :cond_19f

    .line 565
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_97
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_19b

    .line 566
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v8

    .line 567
    .local v8, "enabledUid":I
    const/4 v0, -0x1

    if-eq v0, v8, :cond_18a

    .line 569
    const-string v0, "allow"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 570
    .local v6, "allowRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 571
    .local v11, "ruleLUid":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 572
    .local v5, "ruleUid":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_dc

    .line 573
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 574
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 576
    :cond_dc
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    .line 579
    const-string v0, "deny"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 580
    .local v7, "denyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 581
    const/4 v5, 0x0

    .line 582
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_114

    .line 583
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 584
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 586
    :cond_114
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    .line 589
    const-string v0, "reroute"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 591
    .local v10, "rerouteRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 592
    const/4 v5, 0x0

    .line 593
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14c

    .line 594
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 595
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 597
    :cond_14c
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;II)Z

    .line 599
    const-string v0, "redirect_exception"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 601
    .local v9, "redirectExceptionRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 602
    const/4 v5, 0x0

    .line 603
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_182

    .line 604
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 605
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 607
    :cond_182
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z

    .line 611
    .end local v5    # "ruleUid":I
    .end local v6    # "allowRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "denyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "redirectExceptionRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rerouteRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleLUid":Ljava/lang/Long;
    :cond_18a
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyDnsPerAppRule(II)V

    .line 565
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_97

    .line 564
    .end local v8    # "enabledUid":I
    :cond_19b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_93

    .line 615
    .end local v13    # "x":I
    :cond_19f
    const/4 v0, 0x1

    return v0
.end method

.method private removeChainForMarket(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 2679
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    .line 2680
    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 2681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2682
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -D OUTPUT -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2684
    const-string v1, "/system/bin/iptables -X samsung_market_policy-output"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 2685
    return-void
.end method

.method private removeDNSForApp(ILjava/lang/String;I)Z
    .registers 16
    .param p1, "mContainerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    const/4 v9, 0x0

    .line 3343
    const-string v10, "FirewallPolicy"

    const-string v11, "removeDNSForApp - Begin"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    const/4 v4, 0x0

    .line 3346
    .local v4, "ret":Z
    const/4 v1, 0x0

    .line 3347
    .local v1, "containerziedUid":I
    const/4 v0, 0x0

    .line 3349
    .local v0, "appUids":[I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v0

    .line 3350
    aget v1, v0, v9

    .line 3352
    if-gez v1, :cond_1b

    .line 3353
    const-string v10, "FirewallPolicy"

    const-string v11, "Package name not found in the container"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    :goto_1a
    return v9

    .line 3357
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v9

    if-eqz v9, :cond_42

    .line 3359
    move v8, v1

    .line 3360
    .local v8, "uid":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_42

    .line 3361
    :try_start_25
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 3362
    .local v3, "ifaceName":Ljava/lang/String;
    const-string v5, "packageName"

    .line 3364
    .local v5, "returnColumns":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DNSPerApp"

    invoke-virtual {v9, v10, p3, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 3365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3366
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v8, v8}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3367
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_44

    .line 3368
    const/4 v4, 0x1

    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v5    # "returnColumns":Ljava/lang/String;
    .end local v6    # "token":J
    .end local v8    # "uid":I
    :cond_42
    :goto_42
    move v9, v4

    .line 3376
    goto :goto_1a

    .line 3371
    .restart local v8    # "uid":I
    :catch_44
    move-exception v2

    .line 3372
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "FirewallPolicy"

    const-string v10, "removeDNSForApp exception"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    const/4 v4, 0x0

    goto :goto_42
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1511
    .local p1, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "duplicates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1512
    .local v0, "delta":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1513
    .local v2, "index":I
    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1514
    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1518
    .end local v2    # "index":I
    :cond_25
    return-void
.end method

.method private removeMarketIptablesRules(ILjava/lang/String;I)V
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 2710
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMarketIptablesRules , packageName->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adminUid->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v14

    .line 2712
    .local v14, "appUids":[I
    if-eqz v14, :cond_68

    .line 2713
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2e
    array-length v3, v14

    move/from16 v0, v16

    if-ge v0, v3, :cond_68

    .line 2714
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2715
    .local v13, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2716
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "filter"

    const-string v4, "samsung_market_policy"

    const-string v5, "out"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "data"

    const/4 v11, 0x2

    aget v12, v14, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2720
    .local v2, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v15

    .line 2721
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_65

    .line 2722
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2713
    :cond_65
    add-int/lit8 v16, v16, 0x1

    goto :goto_2e

    .line 2725
    .end local v2    # "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "i":I
    :cond_68
    return-void
.end method

.method private removeRuleUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1820
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeRuleUid(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1814
    .local v2, "rule":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1816
    .end local v2    # "rule":Ljava/lang/String;
    :cond_1d
    return-object v1
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .registers 13
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v4, 0x1

    .line 1522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1523
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1524
    .local v2, "ret":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1525
    .local v3, "rule":Lorg/json/JSONObject;
    const-string v5, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const-string v5, "rules"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, p1, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v2

    .line 1531
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_b

    .line 1533
    .end local v3    # "rule":Lorg/json/JSONObject;
    :cond_43
    if-ne v2, v4, :cond_46

    .line 1536
    :goto_45
    return v4

    :cond_46
    const/4 v4, 0x0

    goto :goto_45
.end method

.method private rollbackEnabled(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 724
    .local v1, "oldUid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 725
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 726
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 728
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_14
    return-void
.end method

.method private rollbackProxyEnabled(I)V
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 731
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    .line 732
    .local v1, "oldUid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 733
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 734
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 736
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_14
    return-void
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .registers 9
    .param p1, "containerId"    # I
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1f

    .line 1350
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1351
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1354
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1f
    return-object v2
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 1358
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I

    .prologue
    .line 1363
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    .registers 19
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .param p5, "pending"    # Z

    .prologue
    .line 1369
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v5, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, " "

    invoke-virtual {p2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1371
    .local v4, "commandArray":[Ljava/lang/String;
    const-string v9, ""

    .line 1372
    .local v9, "result":Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_10
    if-ge v6, v7, :cond_1a

    aget-object v3, v1, v6

    .line 1373
    .local v3, "commandArg":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1375
    .end local v3    # "commandArg":Ljava/lang/String;
    :cond_1a
    if-eqz p3, :cond_20

    iget-boolean v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v12, :cond_47

    .line 1376
    :cond_20
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1377
    .local v8, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1378
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "command"

    invoke-virtual {v2, v12, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string/jumbo v12, "type"

    move/from16 v0, p4

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1380
    const-string v12, "containerid"

    invoke-virtual {v2, v12, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1381
    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1382
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v12, v12, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1391
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_46
    return-object v9

    .line 1384
    :cond_47
    if-nez p5, :cond_46

    .line 1385
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v10

    .line 1386
    .local v10, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_4e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_46

    .line 1387
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v12

    move/from16 v0, p4

    invoke-direct {p0, v12, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    .line 1386
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e
.end method

.method private runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1994
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    .local v3, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1996
    .local v2, "commandArray":[Ljava/lang/String;
    const-string v8, ""

    .line 1998
    .local v8, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_11
    if-ge v5, v6, :cond_1b

    aget-object v1, v0, v5

    .line 1999
    .local v1, "commandArg":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1998
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2002
    .end local v1    # "commandArg":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 2004
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 2005
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_36} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_36} :catch_42

    move-result-object v8

    move-object v9, v8

    .line 2013
    .end local v7    # "process":Ljava/lang/Process;
    :goto_38
    return-object v9

    .line 2006
    :catch_39
    move-exception v4

    .line 2007
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 2009
    .end local v4    # "e":Ljava/io/IOException;
    :catch_42
    move-exception v4

    .line 2010
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2147
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2148
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2150
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    .line 2151
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2152
    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string/jumbo v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 2158
    const/4 v2, 0x0

    .line 2162
    :goto_52
    return v2

    .line 2160
    :cond_53
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_10

    .line 2162
    :cond_57
    const/4 v2, 0x1

    goto :goto_52
.end method

.method private setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 255
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 256
    .local v0, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 257
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 259
    .local v1, "enabledUid":I
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " enabledUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 263
    if-ne v1, v2, :cond_44

    .line 264
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 269
    :cond_44
    :goto_44
    return v3

    :cond_45
    const/4 v3, 0x0

    goto :goto_44
.end method

.method private setBasicRulesEnableOnDb(IZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "ret":Z
    const-string v1, "allow"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1630
    const-string v1, "deny"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1631
    const-string v1, "reroute"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1632
    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1633
    return v0
.end method

.method private setEnableOnDb(IZLjava/lang/String;I)Z
    .registers 27
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1644
    const-string v3, "FirewallPolicy"

    const-string v4, "setEnableOnDb..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1646
    .local v11, "cv":Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1647
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adminUid =? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const-string/jumbo v3, "type =? "

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    if-eqz p2, :cond_c0

    .line 1655
    const-string v3, "enabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    .line 1657
    .local v19, "timestamp":J
    const-string/jumbo v3, "timestamp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v21

    .line 1659
    .local v21, "updated":I
    if-lez v21, :cond_be

    .line 1661
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1662
    .local v13, "helpCv":Landroid/content/ContentValues;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1663
    .local v14, "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "enabled"

    const-string v4, "false"

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adminUid IN (SELECT adminUid  from admin where containerId=? AND userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    const-string v3, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    const-string v3, "enabled =? "

    const-string/jumbo v4, "true"

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    const-string/jumbo v3, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1709
    .end local v13    # "helpCv":Landroid/content/ContentValues;
    .end local v14    # "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "timestamp":J
    .end local v21    # "updated":I
    :goto_bc
    const/4 v3, 0x1

    :goto_bd
    return v3

    .line 1676
    .restart local v19    # "timestamp":J
    .restart local v21    # "updated":I
    :cond_be
    const/4 v3, 0x0

    goto :goto_bd

    .line 1679
    .end local v19    # "timestamp":J
    .end local v21    # "updated":I
    :cond_c0
    const-string v3, "enabled"

    const-string v4, "false"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string/jumbo v3, "timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v3

    if-lez v3, :cond_15b

    .line 1684
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adminUid"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "timestamp"

    aput-object v4, v6, v3

    .line 1687
    .local v6, "returnColumns":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1688
    .local v7, "myMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    const-string/jumbo v8, "timestamp"

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1694
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_117
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_148

    .line 1695
    const-string v3, "adminUid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1696
    .local v15, "index":I
    new-instance v17, Ljava/lang/Long;

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v17, "myLUid":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 1698
    .local v18, "myUid":Ljava/lang/Integer;
    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_148} :catch_14d
    .catchall {:try_start_117 .. :try_end_148} :catchall_156

    .line 1703
    .end local v15    # "index":I
    .end local v17    # "myLUid":Ljava/lang/Long;
    .end local v18    # "myUid":Ljava/lang/Integer;
    :cond_148
    :goto_148
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_bc

    .line 1700
    :catch_14d
    move-exception v12

    .line 1701
    .local v12, "e":Ljava/lang/NumberFormatException;
    :try_start_14e
    const-string v3, "FirewallPolicy"

    const-string v4, "NumberFormatException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catchall {:try_start_14e .. :try_end_155} :catchall_156

    goto :goto_148

    .line 1703
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catchall_156
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1706
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "myMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_15b
    const/4 v3, 0x0

    goto/16 :goto_bd
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1637
    const/4 v0, 0x1

    .line 1638
    .local v0, "ret":Z
    const-string v1, "proxy"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1639
    return v0
.end method

.method private validateDomain(Ljava/lang/String;)Z
    .registers 15
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2d

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2939
    if-nez p1, :cond_7

    .line 2985
    :cond_6
    :goto_6
    return v8

    .line 2944
    :cond_7
    const-string v10, "*"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move v8, v9

    .line 2945
    goto :goto_6

    .line 2950
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xff

    if-gt v10, v11, :cond_6

    .line 2955
    const-string v10, "\\."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2956
    .local v4, "labels":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2957
    .local v6, "numDots":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_34

    .line 2958
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_31

    .line 2959
    add-int/lit8 v6, v6, 0x1

    .line 2957
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2963
    :cond_34
    array-length v10, v4

    if-ge v6, v10, :cond_6

    .line 2967
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3a
    if-ge v2, v5, :cond_49

    aget-object v3, v0, v2

    .line 2968
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3f

    if-gt v10, v11, :cond_6

    .line 2967
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2977
    .end local v3    # "label":Ljava/lang/String;
    :cond_49
    const-string v7, "^[A-Za-z0-9-]+$"

    .line 2978
    .local v7, "regex":Ljava/lang/String;
    move-object v0, v4

    array-length v5, v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v5, :cond_6d

    aget-object v3, v0, v2

    .line 2979
    .restart local v3    # "label":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_6

    .line 2978
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .end local v3    # "label":Ljava/lang/String;
    :cond_6d
    move v8, v9

    .line 2985
    goto :goto_6
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .registers 25
    .param p1, "type"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 3004
    const-string v16, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 3005
    .local v16, "regexPort":Ljava/lang/String;
    const-string v17, "^(remote|local|\\*)$"

    .line 3007
    .local v17, "regexPortLocation":Ljava/lang/String;
    packed-switch p1, :pswitch_data_266

    .line 3019
    :goto_7
    const/4 v6, 0x0

    .local v6, "hosts":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 3020
    .local v15, "ports":[Ljava/lang/String;
    const/16 v19, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 3021
    .local v9, "index":I
    const/4 v10, 0x0

    .line 3023
    .local v10, "isHostname":Z
    if-lez v9, :cond_155

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_155

    .line 3024
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3025
    .local v2, "allHosts":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isDomain(Ljava/lang/String;I)Z

    move-result v10

    .line 3029
    if-nez v10, :cond_d4

    .line 3030
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3031
    const/4 v13, 0x0

    .line 3032
    .local v13, "numHyphen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_8b

    .line 3033
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    .line 3034
    add-int/lit8 v13, v13, 0x1

    .line 3032
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 3010
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v6    # "hosts":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "index":I
    .end local v10    # "isHostname":Z
    .end local v13    # "numHyphen":I
    .end local v15    # "ports":[Ljava/lang/String;
    :pswitch_55
    const-string v16, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 3011
    goto :goto_7

    .line 3013
    :pswitch_58
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    .line 3014
    .local v18, "ruleMatches":Z
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LOCATION: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    .end local v18    # "ruleMatches":Z
    :goto_8a
    return v18

    .line 3037
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v6    # "hosts":[Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "index":I
    .restart local v10    # "isHostname":Z
    .restart local v13    # "numHyphen":I
    .restart local v15    # "ports":[Ljava/lang/String;
    :cond_8b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v13, v0, :cond_af

    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_af

    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_de

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_de

    .line 3038
    :cond_af
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const/16 v18, 0x0

    goto :goto_8a

    .line 3042
    .end local v7    # "i":I
    .end local v13    # "numHyphen":I
    :cond_d4
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    .line 3043
    const/16 v19, 0x0

    aput-object v2, v6, v19

    .line 3046
    :cond_de
    add-int/lit8 v19, v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3047
    .local v3, "allPorts":Ljava/lang/String;
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 3048
    const/4 v13, 0x0

    .line 3049
    .restart local v13    # "numHyphen":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_f2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_10b

    .line 3050
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_108

    .line 3051
    add-int/lit8 v13, v13, 0x1

    .line 3049
    :cond_108
    add-int/lit8 v7, v7, 0x1

    goto :goto_f2

    .line 3054
    :cond_10b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v13, v0, :cond_12f

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12f

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17b

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_17b

    .line 3055
    :cond_12f
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3059
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v3    # "allPorts":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v13    # "numHyphen":I
    :cond_155
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3063
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v3    # "allPorts":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v13    # "numHyphen":I
    :cond_17b
    if-eqz v6, :cond_1b9

    .line 3064
    if-nez v10, :cond_1df

    .line 3065
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_182
    if-ge v8, v12, :cond_1df

    aget-object v5, v4, v8

    .line 3066
    .local v5, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;I)Z

    move-result v11

    .line 3067
    .local v11, "isValid":Z
    if-nez v11, :cond_1b6

    .line 3068
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3065
    :cond_1b6
    add-int/lit8 v8, v8, 0x1

    goto :goto_182

    .line 3074
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "isValid":Z
    .end local v12    # "len$":I
    :cond_1b9
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3077
    :cond_1df
    if-eqz v15, :cond_219

    .line 3078
    move-object v4, v15

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v12, v4

    .restart local v12    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_1e4
    if-ge v8, v12, :cond_23f

    aget-object v14, v4, v8

    .line 3079
    .local v14, "port":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_216

    .line 3080
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3078
    :cond_216
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e4

    .line 3085
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "port":Ljava/lang/String;
    :cond_219
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    const/16 v18, 0x0

    goto/16 :goto_8a

    .line 3088
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    :cond_23f
    const-string v19, "TAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const/16 v18, 0x1

    goto/16 :goto_8a

    .line 3007
    nop

    :pswitch_data_266
    .packed-switch 0x3
        :pswitch_55
        :pswitch_58
    .end packed-switch
.end method

.method private validateIp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3545
    if-eqz p1, :cond_d

    .line 3546
    sget-object v1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3547
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 3549
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private validateIp(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2924
    if-nez p1, :cond_4

    .line 2925
    const/4 v0, 0x0

    .line 2935
    :cond_3
    :goto_3
    return v0

    .line 2928
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v0

    .line 2931
    .local v0, "ret":Z
    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 2932
    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .registers 7
    .param p1, "interfaceType"    # Ljava/lang/String;

    .prologue
    .line 3125
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    .line 3126
    .local v2, "interType":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3127
    const/4 v4, 0x1

    .line 3130
    .end local v2    # "interType":Ljava/lang/String;
    :goto_f
    return v4

    .line 3125
    .restart local v2    # "interType":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3130
    .end local v2    # "interType":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private validatePackageName(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3110
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList(I)Ljava/util/List;

    move-result-object v2

    .line 3113
    .local v2, "netAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3115
    .local v1, "netApp":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3116
    const/4 v3, 0x1

    .line 3119
    .end local v1    # "netApp":Ljava/lang/String;
    :goto_20
    return v3

    :cond_21
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private validateParameters(ILjava/util/List;I)Z
    .registers 16
    .param p1, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2854
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_d
    move v2, v6

    .line 2920
    :cond_e
    :goto_e
    return v2

    .line 2857
    :cond_f
    const/4 v2, 0x1

    .line 2859
    .local v2, "finalResult":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2860
    .local v5, "rule":Ljava/lang/String;
    if-nez v5, :cond_24

    move v2, v6

    .line 2861
    goto :goto_e

    .line 2863
    :cond_24
    packed-switch p1, :pswitch_data_e6

    :pswitch_27
    move v2, v6

    .line 2917
    goto :goto_e

    .line 2865
    :pswitch_29
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2866
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2867
    .local v4, "rerouteArgs":[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v9, :cond_49

    .line 2868
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2869
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    .line 2871
    :cond_49
    array-length v7, v4

    if-ne v7, v10, :cond_69

    .line 2872
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2873
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2875
    aget-object v7, v4, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2876
    aget-object v7, v4, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    :cond_69
    move v2, v6

    .line 2878
    goto :goto_e

    .end local v4    # "rerouteArgs":[Ljava/lang/String;
    :cond_6b
    move v2, v6

    .line 2881
    goto :goto_e

    .line 2885
    :pswitch_6d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2886
    .local v0, "allowArgs":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_85

    .line 2887
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2888
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    .line 2889
    :cond_85
    array-length v7, v0

    if-ne v7, v11, :cond_9f

    .line 2890
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2891
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2892
    aget-object v7, v0, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_9f
    move v2, v6

    .line 2894
    goto/16 :goto_e

    .line 2899
    .end local v0    # "allowArgs":[Ljava/lang/String;
    :pswitch_a2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2900
    .local v1, "denyArgs":[Ljava/lang/String;
    array-length v7, v1

    if-ne v7, v9, :cond_bb

    .line 2901
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2902
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    .line 2903
    :cond_bb
    array-length v7, v1

    if-ne v7, v10, :cond_dc

    .line 2904
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2905
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2906
    aget-object v7, v1, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2907
    aget-object v7, v1, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_dc
    move v2, v6

    .line 2909
    goto/16 :goto_e

    .line 2914
    .end local v1    # "denyArgs":[Ljava/lang/String;
    :pswitch_df
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2915
    goto/16 :goto_14

    .line 2863
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_6d
        :pswitch_a2
        :pswitch_df
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_df
    .end packed-switch
.end method


# virtual methods
.method public addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules ruleAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 196
    if-nez p1, :cond_20

    .line 197
    const/4 v0, 0x0

    .line 233
    :goto_1f
    return v0

    .line 198
    :cond_20
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 199
    .local v1, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 200
    .local v2, "uid":I
    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules - cxtInfo.mContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cxtInfo.mCallerUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, "containerziedUid":I
    const/4 v6, 0x0

    .line 204
    .local v6, "appUids":[I
    const-string v10, ""

    .line 205
    .local v10, "packageName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 206
    .local v11, "rule":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "args":[Ljava/lang/String;
    array-length v0, v7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_52

    .line 208
    const/4 v0, 0x2

    aget-object v0, v7, v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 209
    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v10, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v6

    .line 211
    if-nez v6, :cond_84

    const/4 v0, 0x0

    goto :goto_1f

    .line 212
    :cond_84
    const/4 v0, 0x0

    aget v8, v6, v0

    goto :goto_52

    .line 216
    .end local v7    # "args":[Ljava/lang/String;
    .end local v11    # "rule":Ljava/lang/String;
    :cond_88
    if-gez v8, :cond_93

    .line 217
    const-string v0, "FirewallPolicy"

    const-string v3, "package name not found in the container"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    goto :goto_1f

    .line 220
    :cond_93
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 221
    const-string v0, "FirewallPolicy"

    const-string/jumbo v3, "validateParameters failed"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 224
    :cond_a8
    packed-switch p3, :pswitch_data_c6

    .line 233
    :pswitch_ab
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 227
    :pswitch_ae
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto/16 :goto_1f

    .line 229
    :pswitch_b8
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_1f

    .line 231
    :pswitch_bf
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_1f

    .line 224
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_ae
        :pswitch_ae
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_bf
    .end packed-switch
.end method

.method public declared-synchronized applyRules()Z
    .registers 5

    .prologue
    .line 544
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v1

    .line 546
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 547
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_d
    const/4 v3, 0x2

    if-ge v0, v3, :cond_24

    .line 548
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 546
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 551
    .end local v0    # "containerId":I
    :cond_27
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    move-result v3

    monitor-exit p0

    return v3

    .line 544
    .end local v1    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "x":I
    :catchall_2d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 447
    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x1

    .line 450
    .local v0, "ret":Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 451
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 453
    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 455
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    .line 456
    return v0
.end method

.method public cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # I

    .prologue
    .line 326
    const-string v10, "FirewallPolicy"

    const-string v11, "cleanBasicRules..."

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 328
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 329
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 330
    .local v9, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 331
    .local v3, "containerId":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_1a

    .line 332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 335
    :cond_1a
    const-string v7, ""

    .line 336
    .local v7, "type":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v2, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 339
    .local v6, "table":Ljava/lang/String;
    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v4

    .line 341
    .local v4, "enabledUid":I
    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 343
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    packed-switch p2, :pswitch_data_106

    .line 383
    :goto_2d
    :pswitch_2d
    invoke-direct {p0, v3, v8, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    .line 385
    if-ne v4, v8, :cond_104

    .line 386
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_101

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    .local v1, "chain":Ljava/lang/String;
    invoke-direct {p0, v3, v1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 345
    .end local v1    # "chain":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_46
    if-ne v4, v8, :cond_51

    .line 346
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v11

    .line 347
    :try_start_4b
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 348
    monitor-exit v11
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_88

    .line 350
    :cond_51
    const-string v7, "allow"

    .line 351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 348
    :catchall_88
    move-exception v10

    :try_start_89
    monitor-exit v11
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v10

    .line 355
    :pswitch_8b
    if-ne v4, v8, :cond_96

    .line 356
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v11

    .line 357
    :try_start_90
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 358
    monitor-exit v11
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_d8

    .line 360
    :cond_96
    const-string v7, "deny"

    .line 361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v10, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 364
    const-string v10, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2d

    .line 358
    :catchall_d8
    move-exception v10

    :try_start_d9
    monitor-exit v11
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v10

    .line 367
    :pswitch_db
    if-ne v4, v8, :cond_e6

    .line 368
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v11

    .line 369
    :try_start_e0
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 370
    monitor-exit v11
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_f3

    .line 372
    :cond_e6
    const-string v7, "reroute"

    .line 373
    sget-object v10, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v10, v10, p2

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v6, "nat"

    .line 375
    goto/16 :goto_2d

    .line 370
    :catchall_f3
    move-exception v10

    :try_start_f4
    monitor-exit v11
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v10

    .line 377
    :pswitch_f6
    const-string v7, "redirect_exception"

    .line 378
    const-string v10, "samsung_exceptions-output"

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v6, "nat"

    goto/16 :goto_2d

    .line 389
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_101
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    .line 391
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_104
    const/4 v10, 0x1

    return v10

    .line 343
    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_db
        :pswitch_46
        :pswitch_8b
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_f6
    .end packed-switch
.end method

.method public cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 487
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 488
    .local v4, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 489
    .local v1, "containerId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 493
    :cond_f
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v2

    .line 495
    .local v2, "enabledUid":I
    const-string v3, ""

    .line 496
    .local v3, "typeStr":Ljava/lang/String;
    const-string v0, ""

    .line 497
    .local v0, "chain":Ljava/lang/String;
    packed-switch p2, :pswitch_data_32

    .line 503
    const/4 v5, 0x0

    .line 510
    :goto_1f
    return v5

    .line 499
    :pswitch_20
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 500
    const-string v3, "proxy"

    .line 506
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    .line 507
    if-ne v2, v4, :cond_2f

    .line 508
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    .line 510
    :cond_2f
    const/4 v5, 0x1

    goto :goto_1f

    .line 497
    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_20
    .end packed-switch
.end method

.method public cleanRules(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ruleAction"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 313
    packed-switch p2, :pswitch_data_14

    .line 322
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 318
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_8

    .line 320
    :pswitch_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_8

    .line 313
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public clearDnsPerApp(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3381
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3382
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3664
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3667
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1e

    move-result v0

    if-eqz v0, :cond_28

    move v0, v10

    .line 3692
    :goto_1d
    return v0

    .line 3671
    :catch_1e
    move-exception v6

    .line 3672
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "clearGlobalProxyEnable.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 3673
    goto :goto_1d

    .line 3676
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_28
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 3679
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    .line 3682
    new-instance v7, Landroid/net/ProxyProperties;

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v7, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3683
    .local v7, "emptyProxy":Landroid/net/ProxyProperties;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3684
    .local v8, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v7}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3685
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_54

    move v0, v11

    .line 3687
    goto :goto_1d

    .line 3688
    .end local v7    # "emptyProxy":Landroid/net/ProxyProperties;
    .end local v8    # "token":J
    :catch_54
    move-exception v6

    .line 3689
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "Clear Global Proxy - Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5c
    move v0, v10

    .line 3692
    goto :goto_1d
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 649
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 650
    .local v12, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 651
    .local v1, "containerId":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 653
    .local v13, "userId":I
    if-eqz p2, :cond_64

    .line 656
    invoke-direct {p0, v1, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    if-ne v12, v0, :cond_16

    if-eqz p3, :cond_62

    .line 658
    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 660
    const-string v0, "proxy"

    invoke-direct {p0, v1, v12, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 663
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 664
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 666
    .local v6, "ruleUid":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 668
    .local v11, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 669
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_5e

    .line 670
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5e

    .line 671
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 673
    .local v8, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v2, v8, v0

    const/4 v0, 0x1

    aget-object v3, v8, v0

    const/4 v4, 0x1

    const-string v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 703
    .end local v6    # "ruleUid":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    :goto_5f
    return v0

    .line 680
    :cond_60
    const/4 v0, 0x0

    goto :goto_5f

    .line 683
    :cond_62
    const/4 v0, 0x1

    goto :goto_5f

    .line 687
    :cond_64
    const-string v0, "FirewallPolicy"

    const-string v2, " Disabling proxy"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-direct {p0, v1, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v9

    .line 689
    .local v9, "enabledUid":I
    const-string v0, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Disabling proxy enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 692
    const-string v0, "FirewallPolicy"

    const-string v2, " setProxyRulesEnableOnDb true "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-ne v9, v12, :cond_5e

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z

    .line 697
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    goto :goto_5e

    .line 700
    :cond_a8
    const/4 v0, 0x0

    goto :goto_5f
.end method

.method public enableProxyWithUid(IZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 640
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxyWithUid(ZI)Z
    .registers 5
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 644
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    const/4 v3, 0x0

    .line 527
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 528
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 529
    .local v0, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 530
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 531
    .local v1, "enabledUid":I
    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(IZI)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_2a

    move-result v4

    if-nez v4, :cond_1a

    .line 540
    :cond_18
    :goto_18
    monitor-exit p0

    return v3

    .line 535
    :cond_1a
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1f

    if-nez p2, :cond_25

    :cond_1f
    if-ne v1, v2, :cond_23

    if-eqz p2, :cond_25

    :cond_23
    if-eqz p3, :cond_18

    .line 536
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2a

    .line 537
    const/4 v3, 0x1

    goto :goto_18

    .line 527
    .end local v0    # "containerId":I
    .end local v1    # "enabledUid":I
    .end local v2    # "uid":I
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public enableRulesWithUid(IZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 519
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRulesWithUid(ZI)Z
    .registers 5
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 523
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(II)Ljava/util/List;

    move-result-object v0

    .line 425
    return-object v0
.end method

.method public getDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3437
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3438
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3439
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3441
    .local v0, "adminUid":I
    if-nez p2, :cond_d

    move-object v2, v3

    .line 3449
    :cond_c
    :goto_c
    return-object v2

    .line 3445
    :cond_d
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 3446
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v2, v3

    .line 3447
    goto :goto_c
.end method

.method public getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3629
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3631
    .local v7, "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v13

    if-eqz v13, :cond_7a

    .line 3633
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3634
    .local v11, "token":J
    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v9

    .line 3635
    .local v9, "proxy":Landroid/net/ProxyProperties;
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3637
    if-nez v9, :cond_1c

    .line 3638
    const/4 v7, 0x0

    .line 3660
    .end local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "proxy":Landroid/net/ProxyProperties;
    .end local v11    # "token":J
    :cond_1b
    :goto_1b
    return-object v7

    .line 3640
    .restart local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "proxy":Landroid/net/ProxyProperties;
    .restart local v11    # "token":J
    :cond_1c
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getPort()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 3641
    .local v10, "stringPort":Ljava/lang/Integer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3643
    .local v4, "host":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3646
    .local v2, "exclusion":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3648
    .local v8, "parts":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_64
    if-ge v5, v6, :cond_6e

    aget-object v3, v0, v5

    .line 3649
    .local v3, "exclusionParts":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6b} :catch_72

    .line 3648
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 3651
    .end local v3    # "exclusionParts":Ljava/lang/String;
    :cond_6e
    if-nez v4, :cond_1b

    .line 3654
    const/4 v7, 0x0

    goto :goto_1b

    .line 3656
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "exclusion":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "proxy":Landroid/net/ProxyProperties;
    .end local v10    # "stringPort":Ljava/lang/Integer;
    .end local v11    # "token":J
    :catch_72
    move-exception v1

    .line 3657
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "FirewallPolicy"

    const-string v14, "getGlobalProxy.Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7a
    const/4 v7, 0x0

    goto :goto_1b
.end method

.method public getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2728
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2729
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2730
    .local v0, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "MarketNetworkType"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2733
    .local v1, "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2737
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 293
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 294
    .local v0, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 296
    .local v1, "uid":I
    packed-switch p2, :pswitch_data_48

    .line 308
    :pswitch_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    return-object v2

    .line 298
    :pswitch_11
    const-string v2, "allow"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 300
    :pswitch_1c
    const-string v2, "deny"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 302
    :pswitch_27
    const-string v2, "reroute"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 304
    :pswitch_32
    const-string v2, "proxy"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 306
    :pswitch_3d
    const-string v2, "redirect_exception"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 296
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_27
        :pswitch_11
        :pswitch_1c
        :pswitch_32
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_3d
    .end packed-switch
.end method

.method public getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2311
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2312
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermissionForContentProvider(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2307
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2364
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterListInternal(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2358
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermissionForContentProvider(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2359
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterListInternal(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2593
    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2595
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2596
    .local v1, "containerId":I
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    .line 2597
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    .line 2598
    const/4 v10, 0x1

    const-string/jumbo v11, "time"

    aput-object v11, v0, v10

    .line 2599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2600
    .local v6, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2602
    .local v7, "userId":I
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerID"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "userID"

    aput-object v11, v8, v10

    .line 2606
    .local v8, "where":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2610
    .local v9, "whereArgs":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterLogTable"

    invoke-virtual {v10, v11, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2612
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v3, :cond_57

    .line 2613
    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport - cvList is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    const/4 v6, 0x0

    .line 2628
    .end local v6    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_56
    return-object v6

    .line 2616
    .restart local v6    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_57
    const/4 v2, 0x0

    .line 2617
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2619
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 2620
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 2621
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "time"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2622
    .local v5, "report":Ljava/lang/String;
    if-eqz v5, :cond_5c

    .line 2623
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2624
    const-string/jumbo v10, "url"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2625
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c
.end method

.method public getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2572
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2573
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2567
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermissionForContentProvider(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2568
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabledInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 413
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    .line 414
    .local v0, "enabledUid":I
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isEnabledProxy cxtInfo.mCallerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_3a

    .line 416
    const/4 v1, 0x1

    .line 418
    :goto_39
    return v1

    :cond_3a
    const/4 v1, 0x0

    goto :goto_39
.end method

.method public isEnabledRules(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 401
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v0

    .line 402
    .local v0, "enabledUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_16

    .line 403
    const/4 v1, 0x1

    .line 405
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isGlobalProxyAllowed()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3618
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3621
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3624
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2408
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2409
    .local v5, "containerId":I
    const/4 v9, 0x0

    .line 2410
    .local v9, "isBlocked":Z
    const/4 v10, 0x0

    .line 2412
    .local v10, "lCallerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2414
    .local v16, "token":J
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2415
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2417
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    .line 2419
    .local v7, "filterEnabled":Z
    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2421
    if-nez v7, :cond_32

    .line 2422
    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Policy disabled"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const/16 v20, 0x0

    .line 2485
    :goto_31
    return v20

    .line 2426
    :cond_32
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2427
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2428
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v18

    .line 2429
    .local v18, "urlBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2430
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2432
    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "urlBlacklist: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    if-eqz v18, :cond_142

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_142

    .line 2435
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2436
    .local v4, "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_142

    .line 2437
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2438
    .local v3, "adminRule":Ljava/lang/String;
    const-string v20, "*"

    const-string v21, ".*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 2439
    .local v15, "regex":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2440
    .local v13, "newUrl":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 2441
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b4

    .line 2442
    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2444
    :cond_b4
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_ce

    .line 2445
    const/16 v20, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2447
    :cond_ce
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_160

    .line 2448
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2452
    :cond_e0
    :goto_e0
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_174

    .line 2453
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2460
    :cond_f2
    :goto_f2
    :try_start_f2
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 2461
    .local v14, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 2462
    .local v12, "matchUrl":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 2463
    if-nez v9, :cond_124

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_124

    .line 2464
    const/16 v20, 0x0

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2465
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 2466
    .local v11, "matchHost":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_123} :catch_188

    move-result v9

    .line 2472
    .end local v8    # "host":Ljava/lang/String;
    .end local v11    # "matchHost":Ljava/util/regex/Matcher;
    .end local v12    # "matchUrl":Ljava/util/regex/Matcher;
    .end local v14    # "pattern":Ljava/util/regex/Pattern;
    :cond_124
    :goto_124
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_7a

    .line 2474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2475
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v19

    .line 2476
    .local v19, "urlFilterEnabled":Z
    if-eqz v19, :cond_13f

    .line 2477
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 2479
    :cond_13f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2484
    .end local v3    # "adminRule":Ljava/lang/String;
    .end local v4    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v15    # "regex":Ljava/lang/String;
    .end local v19    # "urlFilterEnabled":Z
    :cond_142
    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isUrlBlocked: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v9

    .line 2485
    goto/16 :goto_31

    .line 2449
    .restart local v3    # "adminRule":Ljava/lang/String;
    .restart local v4    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "newUrl":Ljava/lang/String;
    .restart local v15    # "regex":Ljava/lang/String;
    :cond_160
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e0

    .line 2450
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_e0

    .line 2455
    :cond_174
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f2

    .line 2456
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_f2

    .line 2468
    :catch_188
    move-exception v6

    .line 2469
    .local v6, "e":Ljava/lang/Exception;
    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2401
    .local v2, "uid":I
    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2402
    .local v0, "containerId":I
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isUrlBlocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 2404
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public listIptablesRules(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "************ FILTER TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v1, "/system/bin/iptables -t filter -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    const-string v1, "************ NAT TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    const-string v1, "/system/bin/iptables -t nat -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    const-string v1, "************ MANGLE TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v1, "/system/bin/iptables -t mangle -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    const-string v1, "************ RAW TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v1, "/system/bin/iptables -t raw -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    return-object v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1984
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1988
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 1989
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 1990
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3169
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3183
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 3185
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 3161
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3162
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    .line 3163
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    .line 3164
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3165
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3174
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3176
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    .line 3177
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3178
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    .line 3179
    return-void
.end method

.method public removeAdmin(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 429
    const-string v4, "FirewallPolicy"

    const-string v5, "removeAdmin..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x1

    .line 431
    .local v2, "ret":Z
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 432
    .local v3, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 433
    .local v1, "containerId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 435
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    and-int/2addr v2, v4

    .line 437
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 438
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 439
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 440
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 441
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 443
    return v2
.end method

.method public removeDNSForApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3333
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3335
    if-nez p2, :cond_f

    .line 3336
    const/4 v0, 0x0

    .line 3339
    :goto_e
    return v0

    .line 3338
    :cond_f
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z

    move-result v0

    goto :goto_e
.end method

.method public removeRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 274
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 275
    .local v2, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 276
    .local v1, "containerId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, p3, p2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 288
    :goto_14
    return v0

    .line 279
    :cond_15
    packed-switch p3, :pswitch_data_2c

    :pswitch_18
    goto :goto_14

    .line 284
    :pswitch_19
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_14

    :pswitch_1e
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto :goto_14

    .line 286
    :pswitch_26
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_14

    .line 279
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1e
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_26
    .end packed-switch
.end method

.method public saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2489
    const-string v6, "FirewallPolicy"

    const-string v7, "saveURLBlockedReport"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2493
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v2, v6, :cond_1d

    .line 2494
    const-string v6, "FirewallPolicy"

    const-string/jumbo v7, "will enforce MDM content provider permission"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermissionForContentProvider(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2498
    :cond_1d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2499
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2500
    .local v5, "userId":I
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveURLBlockedReport > userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 2502
    .local v3, "time":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2503
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string/jumbo v6, "time"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const-string v6, "containerID"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2506
    const-string/jumbo v6, "userID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2507
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterLogTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 2509
    const-string v6, "FirewallPolicy"

    const-string v7, "isUrlBlocked - Failed on inserting log"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_7c
    return-void
.end method

.method public setDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dns1"    # Ljava/lang/String;
    .param p4, "dns2"    # Ljava/lang/String;

    .prologue
    .line 3233
    const-string v19, "FirewallPolicy"

    const-string v20, "setDNSPerApp - Begin"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3236
    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3237
    .local v13, "mContainerId":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3239
    .local v3, "adminUid":I
    const/4 v14, 0x0

    .line 3240
    .local v14, "ret":Z
    if-eqz p2, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_23

    .line 3241
    :cond_20
    const/16 v19, 0x0

    .line 3328
    :goto_22
    return v19

    .line 3244
    :cond_23
    const/4 v6, 0x0

    .line 3245
    .local v6, "containerziedUid":I
    const/4 v5, 0x0

    .line 3247
    .local v5, "appUids":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v5

    .line 3248
    const/16 v19, 0x0

    aget v6, v5, v19

    .line 3250
    if-gez v6, :cond_45

    .line 3251
    const-string v19, "FirewallPolicy"

    const-string v20, "Package name not found in the container"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    const/16 v19, 0x0

    goto :goto_22

    .line 3255
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v19

    if-eqz v19, :cond_168

    .line 3257
    const/16 v17, 0x0

    .line 3258
    .local v17, "uid":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3260
    .local v7, "cv":Landroid/content/ContentValues;
    move/from16 v17, v6

    .line 3261
    :try_start_54
    const-string v19, "FirewallPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setDNSPerApp - packageName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_165

    .line 3264
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 3266
    .local v11, "ifaceName":Ljava/lang/String;
    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3267
    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    const-string v19, "dns1"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    const-string v19, "dns2"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 3274
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3276
    .local v4, "alreadyAtDB":Z
    if-eqz v12, :cond_d5

    .line 3277
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d5

    .line 3278
    const/4 v4, 0x1

    .line 3282
    :cond_d5
    if-eqz v4, :cond_16c

    .line 3283
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3284
    .local v8, "cv2":Landroid/content/ContentValues;
    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v18

    .line 3290
    .local v18, "updated":I
    if-lez v18, :cond_165

    .line 3291
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3292
    .local v9, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3293
    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3298
    .local v15, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3301
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_164} :catch_1c6
    .catchall {:try_start_54 .. :try_end_164} :catchall_1d0

    .line 3302
    const/4 v14, 0x1

    .line 3325
    .end local v4    # "alreadyAtDB":Z
    .end local v8    # "cv2":Landroid/content/ContentValues;
    .end local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "token":J
    .end local v18    # "updated":I
    :cond_165
    :goto_165
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v17    # "uid":I
    :cond_168
    move/from16 v19, v14

    .line 3328
    goto/16 :goto_22

    .line 3306
    .restart local v4    # "alreadyAtDB":Z
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "ifaceName":Ljava/lang/String;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "uid":I
    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v19

    if-eqz v19, :cond_165

    .line 3307
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3308
    .restart local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3313
    .restart local v15    # "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3315
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_1c4} :catch_1c6
    .catchall {:try_start_16c .. :try_end_1c4} :catchall_1d0

    .line 3316
    const/4 v14, 0x1

    goto :goto_165

    .line 3321
    .end local v4    # "alreadyAtDB":Z
    .end local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "token":J
    :catch_1c6
    move-exception v10

    .line 3322
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1c7
    const-string v19, "FirewallPolicy"

    const-string v20, "Exception "

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ce
    .catchall {:try_start_1c7 .. :try_end_1ce} :catchall_1d0

    .line 3323
    const/4 v14, 0x0

    goto :goto_165

    .line 3325
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1d0
    move-exception v19

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    throw v19
.end method

.method public declared-synchronized setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3555
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_da

    move-result-object p1

    .line 3558
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_24
    .catchall {:try_start_5 .. :try_end_1e} :catchall_da

    move-result v2

    if-eqz v2, :cond_2e

    .line 3560
    const/4 v2, 0x0

    .line 3614
    :goto_22
    monitor-exit p0

    return v2

    .line 3562
    :catch_24
    move-exception v11

    .line 3563
    .local v11, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    const/4 v2, 0x0

    goto :goto_22

    .line 3569
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, ""

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_3c

    .line 3571
    :cond_3a
    const/4 v2, 0x0

    goto :goto_22

    .line 3574
    :cond_3c
    if-gez p3, :cond_40

    .line 3575
    const/16 p3, 0x0

    .line 3577
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_da

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 3580
    if-eqz p4, :cond_56

    :try_start_48
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_56

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 3581
    :cond_56
    const-string v12, ""

    .line 3595
    .local v12, "exclusionString":Ljava/lang/String;
    :goto_58
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3596
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    new-instance v14, Landroid/net/ProxyProperties;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3600
    .local v14, "proxy":Landroid/net/ProxyProperties;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3604
    .local v15, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v14}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3605
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_22

    .line 3583
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v14    # "proxy":Landroid/net/ProxyProperties;
    .end local v15    # "token":J
    :cond_a1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3584
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 3585
    .local v9, "domain":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_ab
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3586
    .local v10, "domainAddress":Ljava/lang/String;
    if-nez v9, :cond_c8

    .line 3587
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3591
    :goto_bf
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_ab

    .line 3589
    :cond_c8
    const/4 v9, 0x0

    goto :goto_bf

    .line 3593
    .end local v10    # "domainAddress":Ljava/lang/String;
    :cond_ca
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_cd} :catch_cf
    .catchall {:try_start_48 .. :try_end_cd} :catchall_da

    move-result-object v12

    .restart local v12    # "exclusionString":Ljava/lang/String;
    goto :goto_58

    .line 3610
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "domain":Z
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_cf
    move-exception v11

    .line 3611
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_d0
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_da

    .line 3614
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_d7
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 3555
    :catchall_da
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNetworkForMarket(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "networkType"    # I

    .prologue
    .line 2637
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2638
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2639
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2640
    .local v1, "admin":I
    const/4 v6, 0x0

    .line 2641
    .local v6, "result":Z
    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    if-nez p2, :cond_1c

    .line 2642
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 2645
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 2647
    :cond_1c
    int-to-long v3, v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    return v6
.end method

.method public setProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 460
    const-string v0, "FirewallPolicy"

    const-string v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 462
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 463
    .local v9, "uid":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 464
    .local v6, "containerId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v8, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_3d

    move v4, v10

    .line 481
    :cond_3c
    :goto_3c
    return v4

    .line 469
    :cond_3d
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v7

    .line 472
    .local v7, "enabledUid":I
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 473
    const-string v5, "proxy"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 475
    if-ne v7, v9, :cond_3c

    .line 476
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    goto :goto_3c

    :cond_5d
    move v4, v10

    .line 481
    goto :goto_3c
.end method

.method public setRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 238
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p3, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 250
    :goto_11
    return v0

    .line 242
    :cond_12
    packed-switch p3, :pswitch_data_1c

    :pswitch_15
    goto :goto_11

    .line 247
    :pswitch_16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    goto :goto_11

    .line 242
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2270
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setURLFilterEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2272
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2273
    .local v1, "containerId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2274
    .local v4, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2276
    .local v5, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2277
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v4, v1, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 2281
    .local v3, "ret":Z
    const/4 v6, 0x1

    if-ne v3, v6, :cond_69

    .line 2283
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2284
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v7, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v7

    .line 2285
    :try_start_4a
    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2286
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 2287
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2288
    invoke-direct {p0, v0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2289
    if-nez p2, :cond_61

    .line 2290
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WebFilterTable"

    invoke-virtual {v6, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    .line 2292
    :cond_61
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_6a

    .line 2295
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v7, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2299
    .end local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :cond_69
    return v3

    .line 2292
    .restart local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :catchall_6a
    move-exception v6

    :try_start_6b
    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v6
.end method

.method public setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2332
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2333
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2334
    .local v1, "containerId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2335
    .local v3, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2337
    .local v4, "userId":I
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v2

    .line 2338
    .local v2, "ret":Z
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2d

    .line 2340
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2341
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v6

    .line 2342
    :try_start_1a
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2343
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2344
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2345
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2e

    .line 2348
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v6, "FirewallPolicy/getURLFilterList"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2351
    .end local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :cond_2d
    return v2

    .line 2345
    .restart local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :catchall_2e
    move-exception v5

    :try_start_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v5
.end method

.method public setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2515
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2516
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2517
    .local v1, "containerId":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2518
    .local v8, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 2520
    .local v10, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2521
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v11, v8, v1, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 2525
    .local v3, "ret":Z
    const/4 v11, 0x1

    if-ne v3, v11, :cond_51

    .line 2526
    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2528
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 2529
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2530
    invoke-direct {p0, v0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2533
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v12, "FirewallPolicy/getURLFilterReportEnabled"

    invoke-static {v11, v12, v10}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2540
    .end local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2541
    .local v6, "token":J
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    .line 2542
    .local v9, "urlFilterReportEnabled":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2543
    if-eqz p2, :cond_61

    if-nez v9, :cond_8e

    .line 2544
    :cond_61
    const-string v11, "FirewallPolicy"

    const-string v12, "setURLFilterReportEnabled - Clean url report"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "containerID"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "userID"

    aput-object v12, v4, v11

    .line 2551
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    .line 2555
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterLogTable"

    invoke-virtual {v11, v12, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2559
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :cond_8e
    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setURLFilterReportEnabled - return = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    return v3
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 3157
    return-void
.end method
