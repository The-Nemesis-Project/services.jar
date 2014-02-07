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
.field private static final LOGD:Z = true

.field private static final MVP_FILE_NAME:Ljava/lang/String; = "/data/misc/vpn/MVPClients"

.field private static final PHYSICAL_IFACE:Ljava/lang/String; = "PHYSICAL_IFACE"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_CONNECTED_INTENT_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Vpn.VPN_CONNECTED"

.field private static final VPN_DISCONNECTED_INTENT_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Vpn.VPN_DISCONNECTED"

.field private static final VPN_DNS:Ljava/lang/String; = "VPN_DNS"

.field private static final VPN_IFACE:Ljava/lang/String; = "VPN_IFACE"

.field private static final VPN_SEARCH_DOMAIN:Ljava/lang/String; = "VPN_DOMAIN"


# instance fields
.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mMvpOn:Z

.field private mNamespace:Lcom/android/server/connectivity/VpnNamespace;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v3, 0x1

    .line 157
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 131
    const-string v2, "[Legacy VPN]"

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 136
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    .line 871
    new-instance v2, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 158
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 160
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 163
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_41

    .line 168
    :goto_23
    new-instance v2, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.connectivity.Vpn.VPN_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "com.android.server.connectivity.Vpn.VPN_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void

    .line 164
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_41
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeMvpClientFromList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addMvpClientToList(Ljava/lang/String;)V
    .registers 9
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/vpn/MVPClients"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v3, "mvpFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 403
    :cond_13
    :try_start_13
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 404
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x100

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_61

    .line 406
    .local v0, "bWriter":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 407
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 408
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 410
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set as MVP client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_5c

    .line 414
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 420
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_5b
    :goto_5b
    return-void

    .line 414
    .restart local v0    # "bWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_5c
    move-exception v4

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_61

    .line 416
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_61
    move-exception v2

    .line 417
    .local v2, "ioe":Ljava/io/IOException;
    const-string v4, "Vpn"

    const-string v5, "Not able to create or write into MVP File"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private clearMvpList(Ljava/io/File;)V
    .registers 11
    .param p1, "mvpFile"    # Ljava/io/File;

    .prologue
    .line 474
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 476
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    .local v1, "client":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_63

    move-result-object v0

    .line 479
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_42

    .line 481
    :try_start_20
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killing client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v6}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_42} :catch_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_42} :catch_86
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_42} :catch_63

    .line 490
    :cond_42
    :goto_42
    :try_start_42
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing data for client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v6, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_62} :catch_63

    goto :goto_e

    .line 499
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_63
    move-exception v4

    .line 500
    .local v4, "ioe":Ljava/io/IOException;
    const-string v6, "Vpn"

    const-string v7, "Not able to get MVP list to clear it"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_6b
    return-void

    .line 483
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "client":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catch_6c
    move-exception v2

    .line 484
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6d
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to kill client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 485
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_86
    move-exception v2

    .line 486
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to find client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_9f} :catch_63

    goto :goto_42
.end method

.method private enforceControlPermission()V
    .registers 5

    .prologue
    .line 932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_9

    .line 941
    :cond_8
    return-void

    .line 938
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 939
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.android.vpndialogs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 940
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_26

    if-eq v2, v3, :cond_8

    .line 947
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_1e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 943
    :catch_26
    move-exception v2

    goto :goto_1e
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1013
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

    .line 1015
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    .line 1016
    return-object v1

    .line 1020
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "mvpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v1, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 359
    .local v0, "bReader":Ljava/io/BufferedReader;
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "mvpPackage":Ljava/lang/String;
    :goto_1b
    if-eqz v2, :cond_2a

    .line 361
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    move-result-object v2

    goto :goto_1b

    .line 365
    .end local v2    # "mvpPackage":Ljava/lang/String;
    :catchall_25
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v2    # "mvpPackage":Ljava/lang/String;
    :cond_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    return-object v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 5

    .prologue
    .line 1655
    const-string v1, "Vpn"

    const-string v2, "getNetworkManagementService is reached inintally"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1657
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "Vpn"

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

    .line 1658
    if-eqz v0, :cond_4b

    .line 1659
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_4b

    .line 1660
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 1661
    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_4b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private hideNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 992
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v1, :cond_6

    .line 1001
    :cond_5
    :goto_5
    return-void

    .line 993
    :cond_6
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 995
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 998
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_5

    .line 999
    const v1, 0x108104a

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_5
.end method

.method private isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z
    .registers 7
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "mvpFile"    # Ljava/io/File;

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    .local v0, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    .line 387
    .end local v0    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8
    return v2

    .line 384
    :catch_9
    move-exception v1

    .line 385
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Vpn"

    const-string v3, "Not able to get MVP list"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x1

    goto :goto_8
.end method

.method private isClientAllowedForHost(Ljava/lang/String;)Z
    .registers 7
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 548
    :cond_b
    :goto_b
    return v1

    .line 536
    :cond_c
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/vpn/MVPClients"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "mvpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 542
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 543
    const-string v3, "Vpn"

    const-string v4, "Clearing client list for MVP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->clearMvpList(Ljava/io/File;)V

    .line 548
    :cond_29
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_b
.end method

.method private isMvpCleanUpNeeded()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 512
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 515
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    const-string v4, "com.vmware.mvp.enabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1b

    if-gt v4, v2, :cond_19

    .line 519
    :goto_18
    return v2

    :cond_19
    move v2, v3

    .line 515
    goto :goto_18

    .line 516
    :catch_1b
    move-exception v0

    .line 517
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Vpn"

    const-string v4, "Cannot find com.vmware.mvp.enabled package, we are probably rooted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private isRevokeNeeded()Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 7
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 1638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1639
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1641
    const/4 v0, 0x1

    .line 1642
    .local v0, "result":Z
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1d

    .line 1643
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 1645
    :cond_1d
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v3, :cond_27

    .line 1646
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v3, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 1648
    :cond_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
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

.method private mvpInterfaceRemoved()V
    .registers 6

    .prologue
    .line 915
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_21

    .line 916
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->mkIntent()Landroid/content/Intent;

    move-result-object v0

    .line 917
    .local v0, "disconnect":Landroid/content/Intent;
    if-eqz v0, :cond_21

    .line 918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 920
    .local v1, "token":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "com.vmware.mvp.permission.VPN_CONFIG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_22

    .line 922
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    const-string v3, "Vpn"

    const-string v4, "disconnect event has been sent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v0    # "disconnect":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_21
    return-void

    .line 922
    .restart local v0    # "disconnect":Landroid/content/Intent;
    .restart local v1    # "token":J
    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private declared-synchronized removeMvpClientFromList(Ljava/lang/String;)V
    .registers 12
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/vpn/MVPClients"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_60

    .line 433
    .local v6, "mvpFile":Ljava/io/File;
    :try_start_8
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 434
    .local v2, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 437
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_57
    .catchall {:try_start_8 .. :try_end_1b} :catchall_60

    .line 462
    .end local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1b
    monitor-exit p0

    return-void

    .line 439
    .restart local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 440
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x100

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2f} :catch_57
    .catchall {:try_start_1d .. :try_end_2f} :catchall_60

    .line 443
    .local v0, "bWriter":Ljava/io/BufferedWriter;
    :try_start_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 444
    .local v1, "client":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 445
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4a} :catch_4b
    .catchall {:try_start_2f .. :try_end_4a} :catchall_71

    goto :goto_33

    .line 450
    .end local v1    # "client":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_4b
    move-exception v5

    .line 451
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_4c
    const-string v7, "Vpn"

    const-string v8, "Not able to re-write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_71

    .line 453
    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_60

    goto :goto_1b

    .line 459
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_57
    move-exception v5

    .line 460
    .restart local v5    # "ioe":Ljava/io/IOException;
    :try_start_58
    const-string v7, "Vpn"

    const-string v8, "Not able to re-create or write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_60

    goto :goto_1b

    .line 430
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "mvpFile":Ljava/io/File;
    :catchall_60
    move-exception v7

    monitor-exit p0

    throw v7

    .line 447
    .restart local v0    # "bWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "mvpFile":Ljava/io/File;
    :cond_63
    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 449
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_4b
    .catchall {:try_start_63 .. :try_end_6d} :catchall_71

    .line 453
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1b

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_71
    move-exception v7

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v7

    .line 457
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_76
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Called to remove client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that is no more in the list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_94} :catch_57
    .catchall {:try_start_6d .. :try_end_94} :catchall_60

    goto :goto_1b
.end method

.method private showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 15
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const v10, 0x108104a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 965
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_a

    .line 989
    :cond_9
    :goto_9
    return-void

    .line 966
    :cond_a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 968
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 971
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_9

    .line 972
    if-nez p2, :cond_6c

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x1040719

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "title":Ljava/lang/String;
    :goto_29
    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_7a

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x104071b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "text":Ljava/lang/String;
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 978
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 987
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_9

    .line 972
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_6c
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x104071a

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 974
    .restart local v3    # "title":Ljava/lang/String;
    :cond_7a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x104071c

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_36
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "charon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 1180
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1181
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1184
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1185
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1186
    monitor-exit p0

    return-void

    .line 1177
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 340
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

    .line 341
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 343
    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 26
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 716
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_77

    move-result-object v15

    .line 717
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 719
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_2e
    .catchall {:try_start_c .. :try_end_1b} :catchall_77

    move-result-object v3

    .line 723
    :try_start_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_77

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_32

    .line 724
    const/16 v19, 0x0

    .line 849
    :goto_2c
    monitor-exit p0

    return-object v19

    .line 720
    :catch_2e
    move-exception v7

    .line 721
    .local v7, "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_2c

    .line 728
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_32
    :try_start_32
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.net.VpnService"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 731
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_7a

    .line 732
    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot find "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_77
    .catchall {:try_start_32 .. :try_end_77} :catchall_77

    .line 716
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :catchall_77
    move-exception v21

    monitor-exit p0

    throw v21

    .line 734
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_7a
    :try_start_7a
    const-string v21, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b1

    .line 735
    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " does not require "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 739
    :cond_b1
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 742
    .local v14, "label":Ljava/lang/String;
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 743
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 744
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    if-lez v21, :cond_13c

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    if-lez v21, :cond_13c

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 747
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 749
    .local v8, "height":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 750
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 751
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    .local v5, "c":Landroid/graphics/Canvas;
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0
    :try_end_118
    .catchall {:try_start_7a .. :try_end_118} :catchall_77

    if-eqz v21, :cond_13c

    .line 759
    :try_start_11a
    const-string v21, "com.vmware.mvp.enabled"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 760
    div-int/lit8 v21, v20, 0x2

    div-int/lit8 v22, v8, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 761
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 762
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_13c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11a .. :try_end_13c} :catch_1fa
    .catchall {:try_start_11a .. :try_end_13c} :catchall_77

    .line 772
    .end local v5    # "c":Landroid/graphics/Canvas;
    .end local v8    # "height":I
    .end local v20    # "width":I
    :cond_13c
    :goto_13c
    :try_start_13c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_14d
    .catchall {:try_start_13c .. :try_end_14d} :catchall_77

    move-result-object v19

    .line 774
    .local v19, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_14e
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 777
    .local v12, "interfaze":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22d

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    if-nez v21, :cond_182

    .line 779
    new-instance v21, Lcom/android/server/connectivity/VpnNamespace;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/connectivity/VpnNamespace;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 782
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/connectivity/VpnNamespace;->establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)Landroid/content/Intent;

    move-result-object v16

    .line 783
    .local v16, "rest":Landroid/content/Intent;
    if-eqz v16, :cond_1ac

    .line 787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_197
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_197} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_197} :catch_209
    .catchall {:try_start_14e .. :try_end_197} :catchall_77

    move-result-wide v17

    .line 789
    .local v17, "token":J
    :try_start_198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.vmware.mvp.permission.VPN_CONFIG"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_204

    .line 791
    :try_start_1a9
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    .end local v16    # "rest":Landroid/content/Intent;
    .end local v17    # "token":J
    :cond_1ac
    :goto_1ac
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 804
    .local v6, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v11, v6, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v21

    if-nez v21, :cond_262

    .line 805
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot bind "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_1a9 .. :try_end_1e8} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1e8} :catch_209
    .catchall {:try_start_1a9 .. :try_end_1e8} :catchall_77

    .line 815
    .end local v6    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v12    # "interfaze":Ljava/lang/String;
    :catch_1e8
    move-exception v7

    .line 816
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_1e9
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 817
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 818
    throw v7

    .line 764
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "height":I
    .restart local v20    # "width":I
    :catch_1fa
    move-exception v7

    .line 765
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "Vpn"

    const-string v22, "Not able to find com.vmware.mvp.enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catchall {:try_start_1e9 .. :try_end_202} :catchall_77

    goto/16 :goto_13c

    .line 791
    .end local v5    # "c":Landroid/graphics/Canvas;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "height":I
    .end local v20    # "width":I
    .restart local v12    # "interfaze":Ljava/lang/String;
    .restart local v16    # "rest":Landroid/content/Intent;
    .restart local v17    # "token":J
    .restart local v19    # "tun":Landroid/os/ParcelFileDescriptor;
    :catchall_204
    move-exception v21

    :try_start_205
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_209
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_209} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_209} :catch_209
    .catchall {:try_start_205 .. :try_end_209} :catchall_77

    .line 820
    .end local v12    # "interfaze":Ljava/lang/String;
    .end local v16    # "rest":Landroid/content/Intent;
    .end local v17    # "token":J
    :catch_209
    move-exception v13

    .line 821
    .local v13, "ioe":Ljava/io/IOException;
    :try_start_20a
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 822
    const-string v21, "Vpn"

    const-string v22, "MVP VPN is unable to start"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 825
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_22d
    .catchall {:try_start_20a .. :try_end_22d} :catchall_77

    .line 795
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v12    # "interfaze":Ljava/lang/String;
    :cond_22d
    :try_start_22d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_24b

    .line 796
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "At least one address must be specified"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 798
    :cond_24b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1ac

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ac

    .line 807
    .restart local v6    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_279

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 810
    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_29c

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 813
    :cond_29c
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 814
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    :try_end_2a4
    .catch Ljava/lang/RuntimeException; {:try_start_22d .. :try_end_2a4} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_2a4} :catch_209
    .catchall {:try_start_22d .. :try_end_2a4} :catchall_77

    .line 828
    :try_start_2a4
    const-string v21, "Vpn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Established by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " on "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2ed
    .catchall {:try_start_2a4 .. :try_end_2ed} :catchall_77

    move-result-wide v17

    .line 839
    .restart local v17    # "token":J
    :try_start_2ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_30b

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    .line 843
    :cond_30b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_312
    .catchall {:try_start_2ee .. :try_end_312} :catchall_324

    .line 845
    :try_start_312
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 845
    :catchall_324
    move-exception v21

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_329
    .catchall {:try_start_312 .. :try_end_329} :catchall_77
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_b

    .line 1219
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 1221
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .prologue
    .line 1205
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1206
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 1214
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 1208
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1209
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1210
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1211
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1212
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2f

    goto :goto_9

    .line 1205
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 868
    :goto_5
    return-void

    .line 865
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
    .line 855
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 859
    :goto_6
    monitor-exit p0

    return-void

    .line 855
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 856
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 582
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "mvpOn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 589
    monitor-enter p0

    if-nez p3, :cond_c8

    .line 591
    if-eqz p1, :cond_11

    :try_start_7
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d7

    move-result v5

    if-nez v5, :cond_11

    .line 687
    :cond_f
    :goto_f
    monitor-exit p0

    return v3

    .line 596
    :cond_11
    if-nez p2, :cond_19

    :try_start_13
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_f

    .line 601
    :cond_19
    if-eqz p2, :cond_31

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v5, "[Legacy VPN]"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_33

    :cond_31
    move v3, v4

    .line 603
    goto :goto_f

    .line 608
    :cond_33
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isClientAllowedForHost(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 624
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 627
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v3, :cond_5f

    .line 629
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_da

    .line 630
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 644
    :cond_49
    :goto_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_d7

    move-result-wide v1

    .line 646
    .local v1, "token":J
    :try_start_4d
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_56

    .line 647
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 649
    :cond_56
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_106

    .line 651
    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 659
    .end local v1    # "token":J
    :cond_5f
    iput-boolean p3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    .line 660
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_78

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_78

    .line 663
    const-string v3, "Vpn"

    const-string v5, "namespace proxy no longer needed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->close()V

    .line 665
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    .line 670
    :cond_78
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_d7

    if-eqz v3, :cond_10b

    .line 672
    :try_start_7c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$Connection;->access$300(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v3

    const v5, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8e} :catch_118
    .catchall {:try_start_7c .. :try_end_8e} :catchall_d7

    .line 677
    :goto_8e
    :try_start_8e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 678
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 684
    :cond_98
    :goto_98
    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 686
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "prepare"

    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v3, v4

    .line 687
    goto/16 :goto_f

    .line 612
    :cond_c8
    if-eqz p2, :cond_f

    .line 617
    const-string v3, "[Legacy VPN]"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 618
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->addMvpClientToList(Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_8e .. :try_end_d5} :catchall_d7

    goto/16 :goto_39

    .line 589
    :catchall_d7
    move-exception v3

    monitor-exit p0

    throw v3

    .line 632
    :cond_da
    :try_start_da
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;
    :try_end_dc
    .catchall {:try_start_da .. :try_end_dc} :catchall_d7

    if-eqz v3, :cond_49

    .line 634
    :try_start_de
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->removeInterface()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e3} :catch_e8
    .catchall {:try_start_de .. :try_end_e3} :catchall_d7

    .line 640
    :goto_e3
    :try_start_e3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    goto/16 :goto_49

    .line 635
    :catch_e8
    move-exception v0

    .line 638
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t remove interface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 651
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "token":J
    :catchall_106
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 679
    .end local v1    # "token":J
    :cond_10b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v3, :cond_98

    .line 680
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 681
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_117
    .catchall {:try_start_e3 .. :try_end_117} :catchall_d7

    goto :goto_98

    .line 674
    :catch_118
    move-exception v3

    goto/16 :goto_8e
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 699
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 700
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_1d

    .line 701
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    :cond_1d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 704
    return-void
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reconnectDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public setEnableNotifications(Z)V
    .registers 2
    .param p1, "enableNotif"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 283
    return-void
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 292
    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 324
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 26
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1030
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "KeyStore isn\'t unlocked"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v13

    .line 1034
    .local v13, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 1035
    .local v11, "gateway":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v12

    .line 1038
    .local v12, "iface":Ljava/lang/String;
    const-string v15, ""

    .line 1039
    .local v15, "privateKey":Ljava/lang/String;
    const-string v18, ""

    .line 1040
    .local v18, "userCert":Ljava/lang/String;
    const-string v8, ""

    .line 1041
    .local v8, "caCert":Ljava/lang/String;
    const-string v17, ""

    .line 1042
    .local v17, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1043
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

    move-result-object v15

    .line 1044
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

    move-result-object v19

    .line 1045
    .local v19, "value":[B
    if-nez v19, :cond_d0

    const/16 v18, 0x0

    .line 1047
    .end local v19    # "value":[B
    :cond_6b
    :goto_6b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    .line 1048
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

    move-result-object v19

    .line 1049
    .restart local v19    # "value":[B
    if-nez v19, :cond_dc

    const/4 v8, 0x0

    .line 1051
    .end local v19    # "value":[B
    :cond_95
    :goto_95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1052
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

    move-result-object v19

    .line 1053
    .restart local v19    # "value":[B
    if-nez v19, :cond_e6

    const/16 v17, 0x0

    .line 1055
    .end local v19    # "value":[B
    :cond_c0
    :goto_c0
    if-eqz v15, :cond_c8

    if-eqz v18, :cond_c8

    if-eqz v8, :cond_c8

    if-nez v17, :cond_f2

    .line 1056
    :cond_c8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load credentials"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    .restart local v19    # "value":[B
    :cond_d0
    new-instance v18, Ljava/lang/String;

    .end local v18    # "userCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_6b

    .line 1049
    .restart local v18    # "userCert":Ljava/lang/String;
    :cond_dc
    new-instance v8, Ljava/lang/String;

    .end local v8    # "caCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_95

    .line 1053
    .restart local v8    # "caCert":Ljava/lang/String;
    :cond_e6
    new-instance v17, Ljava/lang/String;

    .end local v17    # "serverCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_c0

    .line 1060
    .end local v19    # "value":[B
    .restart local v17    # "serverCert":Ljava/lang/String;
    :cond_f2
    const/16 v16, 0x0

    .line 1061
    .local v16, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3a6

    .line 1082
    :goto_fb
    :pswitch_fb
    const/4 v9, 0x0

    .line 1086
    .local v9, "charon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3b4

    .line 1124
    :goto_103
    if-eqz v9, :cond_241

    move-object/from16 v20, v9

    .line 1125
    .local v20, "vpnParameters":[Ljava/lang/String;
    :goto_107
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_245

    .line 1127
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

    const-string v21, "Connecting to VPN network "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, " failed - unsecure"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1174
    :goto_148
    return-void

    .line 1063
    .end local v9    # "charon":[Ljava/lang/String;
    .end local v20    # "vpnParameters":[Ljava/lang/String;
    :pswitch_149
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "udppsk"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "1701"

    aput-object v3, v16, v2

    .line 1067
    .restart local v16    # "racoon":[Ljava/lang/String;
    goto :goto_fb

    .line 1069
    :pswitch_171
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "udprsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v15, v16, v2

    const/4 v2, 0x4

    aput-object v18, v16, v2

    const/4 v2, 0x5

    aput-object v8, v16, v2

    const/4 v2, 0x6

    aput-object v17, v16, v2

    const/4 v2, 0x7

    const-string v3, "1701"

    aput-object v3, v16, v2

    .line 1073
    .restart local v16    # "racoon":[Ljava/lang/String;
    goto/16 :goto_fb

    .line 1075
    :pswitch_199
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "hybridrsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v8, v16, v2

    const/4 v2, 0x4

    aput-object v17, v16, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v16, v2

    const/16 v2, 0x8

    aput-object v11, v16, v2

    .restart local v16    # "racoon":[Ljava/lang/String;
    goto/16 :goto_fb

    .line 1088
    .restart local v9    # "charon":[Ljava/lang/String;
    :pswitch_1cd
    const/16 v2, 0x9

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "xauthpsk"

    aput-object v3, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v9, v2

    const/16 v2, 0x8

    aput-object v11, v9, v2

    .line 1092
    .restart local v9    # "charon":[Ljava/lang/String;
    goto/16 :goto_103

    .line 1094
    :pswitch_207
    const/16 v2, 0xb

    new-array v9, v2, [Ljava/lang/String;

    .end local v9    # "charon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "xauthrsa"

    aput-object v3, v9, v2

    const/4 v2, 0x3

    aput-object v15, v9, v2

    const/4 v2, 0x4

    aput-object v18, v9, v2

    const/4 v2, 0x5

    aput-object v8, v9, v2

    const/4 v2, 0x6

    aput-object v17, v9, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v9, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v9, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v9, v2

    const/16 v2, 0xa

    aput-object v11, v9, v2

    .restart local v9    # "charon":[Ljava/lang/String;
    goto/16 :goto_103

    :cond_241
    move-object/from16 v20, v16

    .line 1124
    goto/16 :goto_107

    .line 1137
    .restart local v20    # "vpnParameters":[Ljava/lang/String;
    :cond_245
    const/4 v14, 0x0

    .line 1138
    .local v14, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3bc

    .line 1159
    :goto_24d
    new-instance v10, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v10}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1162
    .local v10, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1163
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1164
    iput-object v12, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1166
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 1167
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_283

    .line 1168
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1170
    :cond_283
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29d

    .line 1171
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1173
    :cond_29d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1, v9, v14}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_148

    .line 1140
    .end local v10    # "config":Lcom/android/internal/net/VpnConfig;
    :pswitch_2a6
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    .end local v14    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v14, v2

    const/4 v2, 0x1

    const-string v3, "pptp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1723"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x6

    const-string v3, "password"

    aput-object v3, v14, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x8

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v2, :cond_326

    const-string v2, "+mppe"

    :goto_322
    aput-object v2, v14, v3

    .line 1147
    .restart local v14    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_24d

    .line 1140
    .end local v14    # "mtpd":[Ljava/lang/String;
    :cond_326
    const-string v2, "nomppe"

    goto :goto_322

    .line 1150
    .restart local v14    # "mtpd":[Ljava/lang/String;
    :pswitch_329
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    .end local v14    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v12, v14, v2

    const/4 v2, 0x1

    const-string v3, "l2tp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1701"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x7

    const-string v3, "password"

    aput-object v3, v14, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x13

    const-string v3, "1400"

    aput-object v3, v14, v2

    .restart local v14    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_24d

    .line 1061
    nop

    :pswitch_data_3a6
    .packed-switch 0x1
        :pswitch_149
        :pswitch_171
        :pswitch_fb
        :pswitch_fb
        :pswitch_199
    .end packed-switch

    .line 1086
    :pswitch_data_3b4
    .packed-switch 0x3
        :pswitch_1cd
        :pswitch_207
    .end packed-switch

    .line 1138
    :pswitch_data_3bc
    .packed-switch 0x0
        :pswitch_2a6
        :pswitch_329
        :pswitch_329
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .registers 3

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_11

    .line 1190
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1193
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 1196
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    .line 1198
    :cond_11
    monitor-exit p0

    return-void

    .line 1196
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

    .line 1189
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .registers 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public teardownDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method
