.class public Lcom/android/server/location/GeoFencerProxy;
.super Lcom/android/server/location/GeoFencerBase;
.source "GeoFencerProxy.java"


# static fields
.field private static final LOGV_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "GeoFencerProxy"

.field private static mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFencer:Landroid/location/IGeoFencer;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/location/IGeoFenceListener$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerBase;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/location/GeoFencerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeoFencerProxy$1;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/android/server/location/GeoFencerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeoFencerProxy$2;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    .line 83
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeoFencerProxy;)Landroid/location/IGeoFencer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeoFencerProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeoFencerProxy;
    .param p1, "x1"    # Landroid/location/IGeoFencer;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/location/GeoFencerProxy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeoFencerProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/location/GeoFencerProxy;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private ensureGeoFencer()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v2, :cond_33

    .line 105
    :try_start_5
    iget-object v3, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_2a

    .line 106
    :try_start_8
    const-string v2, "waiting..."

    invoke-direct {p0, v2}, Lcom/android/server/location/GeoFencerProxy;->logv(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 108
    const-string v2, "woke up!!!"

    invoke-direct {p0, v2}, Lcom/android/server/location/GeoFencerProxy;->logv(Ljava/lang/String;)V

    .line 109
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_27

    .line 115
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v2, :cond_33

    .line 116
    const-string v2, "GeoFencerProxy"

    const-string v3, "Timed out. No GeoFencer connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_26
    return v1

    .line 109
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 110
    :catch_2a
    move-exception v0

    .line 111
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v2, "GeoFencerProxy"

    const-string v3, "Interrupted while waiting for GeoFencer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 121
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_33
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public static getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GeoFencerProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    .line 79
    :cond_b
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    return-object v0
.end method

.method private logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "GeoFencerProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method public removeCaller(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/server/location/GeoFencerBase;->removeCaller(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-eqz v0, :cond_d

    .line 94
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    invoke-interface {v0, p1}, Landroid/location/IGeoFencer;->clearGeoFenceUser(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_15

    .line 100
    :goto_c
    return-void

    .line 99
    :cond_d
    const-string v0, "GeoFencerProxy"

    const-string v1, "removeCaller - mGeoFencer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 95
    :catch_15
    move-exception v0

    goto :goto_c
.end method

.method protected start(Landroid/location/GeoFenceParams;)Z
    .registers 4
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 127
    :try_start_6
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v0, v1, p1}, Landroid/location/IGeoFencer;->setGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    move-result v0

    .line 131
    :goto_e
    return v0

    .line 128
    :catch_f
    move-exception v0

    .line 131
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    :try_start_6
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v0, v1, p1}, Landroid/location/IGeoFencer;->clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 138
    const/4 v0, 0x1

    .line 142
    :goto_e
    return v0

    .line 139
    :catch_f
    move-exception v0

    .line 142
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method
