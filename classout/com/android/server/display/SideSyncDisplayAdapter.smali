.class final Lcom/android/server/display/SideSyncDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "SideSyncDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SideSyncDisplayAdapter"


# instance fields
.field private mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

.field private mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

.field private final mSupportsProtectedBuffers:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/DisplayManagerService$SideSyncListener;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "sListener"    # Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    .prologue
    .line 56
    const-string v5, "SideSyncDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/server/display/SideSyncDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$1;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSupportsProtectedBuffers:Z

    .line 59
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iput-object p5, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/SideSyncDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/SideSyncDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/SideSyncDisplayAdapter;Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;
    .param p1, "x1"    # Lcom/android/server/display/SideSyncDisplayController;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/SideSyncDisplayAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    return-object v0
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 17
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->removeDisplayDeviceLocked()V

    .line 119
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_33

    const/4 v10, 0x1

    .line 120
    .local v10, "secure":Z
    :goto_8
    const/4 v7, 0x0

    .line 121
    .local v7, "deviceFlags":I
    if-eqz v10, :cond_13

    .line 122
    or-int/lit8 v7, v7, 0x4

    .line 123
    iget-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSupportsProtectedBuffers:Z

    if-eqz v0, :cond_13

    .line 124
    or-int/lit8 v7, v7, 0x8

    .line 128
    :cond_13
    const/high16 v6, 0x42700000

    .line 130
    .local v6, "refreshRate":F
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "address":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 133
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    .line 135
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/SideSyncDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 137
    return-void

    .line 119
    .end local v2    # "displayToken":Landroid/os/IBinder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "refreshRate":F
    .end local v7    # "deviceFlags":I
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "secure":Z
    :cond_33
    const/4 v10, 0x0

    goto :goto_8
.end method

.method private handleUpdateNotification()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 152
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mPendingNotificationUpdate:Z

    if-nez v1, :cond_c

    .line 153
    monitor-exit v2

    .line 162
    :goto_b
    return-void

    .line 156
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mPendingNotificationUpdate:Z

    .line 157
    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 158
    .local v0, "isConnected":Z
    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2e

    .line 160
    const-string v1, "SideSyncDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleUpdateNotification << isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 158
    .end local v0    # "isConnected":Z
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private removeDisplayDeviceLocked()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_12

    .line 141
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->clearSurfaceLocked()V

    .line 142
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/SideSyncDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    .line 146
    :cond_12
    return-void
.end method


# virtual methods
.method public getSideSyncStatus()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->requestGetSideSyncStatus()I

    move-result v0

    .line 229
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSupported(I)Z
    .registers 3
    .param p1, "feature"    # I

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public pauseSideSyncLocked()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->pauseSideSync()V

    .line 260
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$2;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public requestDisableSideSyncLocked()V
    .registers 3

    .prologue
    .line 248
    const-string v0, "SideSyncDisplayAdapter"

    const-string v1, "disableSideSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$4;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public requestEnableSideSyncLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "resolution"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->isEnableSideSyncAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 235
    const/4 v0, 0x0

    .line 244
    :goto_9
    return v0

    .line 238
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/SideSyncDisplayAdapter$3;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public resumeSideSyncLocked()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->resumeSideSync()V

    .line 264
    return-void
.end method
