.class public final Lcom/android/server/display/DisplayManagerService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPLAY_BLANK_STATE_BLANKED:I = 0x1

.field private static final DISPLAY_BLANK_STATE_UNBLANKED:I = 0x2

.field private static final DISPLAY_BLANK_STATE_UNKNOWN:I = 0x0

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTER:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final SYSTEM_HEADLESS:Ljava/lang/String; = "ro.config.headless"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field private mAllDisplayBlankStateFromPowerManager:I

.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/display/DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mHeadless:Z

.field private mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mRemovedDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mSafeMode:Z

.field private mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

.field private final mSingleDisplayDemoMode:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

.field private wifiDevice:Lcom/android/server/display/DisplayDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p3, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    .line 132
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 165
    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 172
    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 183
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 184
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 187
    new-instance v0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 198
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 199
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 204
    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 206
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 207
    const-string v0, "ro.config.headless"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    .line 209
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 210
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 212
    const-string v0, "persist.demo.singledisplay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 214
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 11
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 865
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 866
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4f

    move v3, v5

    .line 868
    .local v3, "isDefault":Z
    :goto_d
    if-eqz v3, :cond_30

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 869
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring attempt to add a second default display: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v3, 0x0

    .line 873
    :cond_30
    if-nez v3, :cond_51

    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v6, :cond_51

    .line 874
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_4e
    return-void

    .end local v3    # "isDefault":Z
    :cond_4f
    move v3, v6

    .line 866
    goto :goto_d

    .line 879
    .restart local v3    # "isDefault":Z
    :cond_51
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v2

    .line 880
    .local v2, "displayId":I
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v4

    .line 882
    .local v4, "layerStack":I
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 883
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 884
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v6

    if-nez v6, :cond_82

    .line 886
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 891
    :cond_82
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 894
    if-eqz v3, :cond_8e

    .line 895
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 898
    :cond_8e
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    goto :goto_4e
.end method

.method private assignDisplayIdLocked(Z)I
    .registers 4
    .param p1, "isDefault"    # Z

    .prologue
    .line 902
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    goto :goto_3
.end method

.method private assignLayerStackLocked(I)I
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 908
    return p1
.end method

.method private canCallerConfigureWifiDisplay()Z
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private clearViewportsLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 987
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 988
    return-void
.end method

.method private configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 992
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 993
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v4

    if-nez v4, :cond_f

    .line 994
    const/4 v0, 0x0

    .line 996
    :cond_f
    if-nez v0, :cond_19

    .line 997
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 1001
    .restart local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_19
    if-nez v0, :cond_38

    .line 1003
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing logical display to use for physical display device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_37
    :goto_37
    return-void

    .line 1007
    :cond_38
    iget v4, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-ne v4, v2, :cond_76

    .line 1009
    .local v2, "isBlanked":Z
    :goto_3c
    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_4d

    .line 1013
    const/4 v2, 0x0

    .line 1015
    :cond_4d
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1020
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v3, v3, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v3, :cond_65

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_65

    .line 1022
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1024
    :cond_65
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v3, v3, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v3, :cond_37

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_37

    .line 1026
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_37

    .end local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "isBlanked":Z
    :cond_76
    move v2, v3

    .line 1007
    goto :goto_3c
.end method

.method private deliverDisplayEvent(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 1074
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 1075
    :try_start_3
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1076
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1077
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 1078
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1080
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_31

    .line 1083
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_34

    .line 1084
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1080
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 1086
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1087
    return-void
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1038
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1039
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1b

    .line 1040
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1041
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1045
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :goto_17
    return-object v1

    .line 1039
    .restart local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1045
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 10
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 754
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 755
    :try_start_6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 756
    const-string v3, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to add already added display device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    monitor-exit v4

    .line 822
    :goto_2b
    return-void

    .line 761
    :cond_2c
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 763
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v3, v5, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSideSyncStatus()I

    move-result v3

    if-ne v3, v6, :cond_6d

    .line 764
    const-string v3, "DisplayManagerService"

    const-string v5, "Currently Connting through WIFI is not implemented, device will not be added."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-ne v0, v6, :cond_f8

    .line 766
    const-string v3, "DisplayManagerService"

    const-string v5, "Display device: Replace HDMI DeviceInfo with WifiDisplay\'s, skip adding wifi device"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 768
    .local v1, "registeredDevice":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->saveWifiDisplayInfo(Lcom/android/server/display/DisplayDevice;)V

    .line 769
    move-object p1, v1

    .line 770
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    .line 771
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    invoke-direct {p0, p1, v3}, Lcom/android/server/display/DisplayManagerService;->updateDisplayDeviceInfo(Lcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 772
    const-string v3, "DisplayManagerService"

    const-string v5, "save the name and address and add replaced device"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v1    # "registeredDevice":Lcom/android/server/display/DisplayDevice;
    :cond_6d
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v3, v6, :cond_c5

    if-ne v0, v7, :cond_c5

    .line 783
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v5, "wfd"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdManager;

    .line 784
    .local v2, "wfdManager":Lcom/samsung/wfd/WfdManager;
    if-eqz v2, :cond_c5

    .line 785
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 786
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_105

    .line 787
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    const/4 v5, 0x3

    iput v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 789
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 794
    :cond_a7
    :goto_a7
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceSecure()I

    move-result v3

    if-ne v3, v7, :cond_116

    .line 795
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    const/16 v5, 0xc

    iput v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 798
    :cond_b5
    :goto_b5
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 799
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 805
    .end local v2    # "wfdManager":Lcom/samsung/wfd/WfdManager;
    :cond_c5
    const-string v3, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display device added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 809
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 813
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    packed-switch v3, :pswitch_data_12c

    .line 821
    :goto_f2
    monitor-exit v4

    goto/16 :goto_2b

    .end local v0    # "count":I
    :catchall_f5
    move-exception v3

    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_6 .. :try_end_f7} :catchall_f5

    throw v3

    .line 774
    .restart local v0    # "count":I
    :cond_f8
    :try_start_f8
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->saveWifiDisplayInfo(Lcom/android/server/display/DisplayDevice;)V

    .line 775
    const-string v3, "DisplayManagerService"

    const-string v5, "just save the name and address"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    monitor-exit v4

    goto/16 :goto_2b

    .line 790
    .restart local v2    # "wfdManager":Lcom/samsung/wfd/WfdManager;
    :cond_105
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSideSyncStatus()I

    move-result v3

    if-ne v3, v6, :cond_a7

    .line 791
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v3, :cond_a7

    .line 792
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    invoke-direct {p0, p1, v3}, Lcom/android/server/display/DisplayManagerService;->updateDisplayDeviceInfo(Lcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    goto :goto_a7

    .line 796
    :cond_116
    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceSecure()I

    move-result v3

    if-nez v3, :cond_b5

    .line 797
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_b5

    .line 815
    .end local v2    # "wfdManager":Lcom/samsung/wfd/WfdManager;
    :pswitch_124
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    goto :goto_f2

    .line 818
    :pswitch_128
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V
    :try_end_12b
    .catchall {:try_start_f8 .. :try_end_12b} :catchall_f5

    goto :goto_f2

    .line 813
    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_124
        :pswitch_128
    .end packed-switch
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 826
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 827
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to change non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    monitor-exit v1

    .line 839
    :goto_28
    return-void

    .line 832
    :cond_29
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 835
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 838
    :cond_52
    monitor-exit v1

    goto :goto_28

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v0
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 843
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 844
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    monitor-exit v1

    .line 860
    :goto_28
    return-void

    .line 849
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    const-string v2, "sidesync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 850
    const-string v0, "DisplayManagerService"

    const-string v2, "saved sidesync information remove"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 854
    :cond_49
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 858
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 859
    monitor-exit v1

    goto :goto_28

    :catchall_73
    move-exception v0

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v0
.end method

.method private isWfdConnected()Z
    .registers 4

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 727
    .local v0, "wfdManager":Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_13

    .line 728
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 736
    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 732
    :pswitch_15
    const-string v1, "DisplayManagerService"

    const-string v2, "isWfdConnected >> true"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v1, 0x1

    goto :goto_14

    .line 728
    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private onCallbackDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 469
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 470
    monitor-exit v1

    .line 471
    return-void

    .line 470
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private performTraversalInTransactionLocked()V
    .registers 7

    .prologue
    .line 936
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 937
    .local v3, "removedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v3, :cond_17

    .line 938
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 939
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 941
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_17
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 945
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 948
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 949
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_26
    if-ge v2, v0, :cond_39

    .line 950
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 951
    .restart local v1    # "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 952
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 949
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 956
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_39
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    if-eqz v4, :cond_43

    .line 957
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 959
    :cond_43
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 668
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 669
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 670
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 671
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerSideSyncAdapterLocked()V

    .line 673
    :cond_12
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private registerDefaultDisplayAdapter()V
    .registers 7

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 656
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    if-eqz v0, :cond_19

    .line 657
    new-instance v0, Lcom/android/server/display/HeadlessDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/HeadlessDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 663
    :goto_17
    monitor-exit v1

    .line 664
    return-void

    .line 660
    :cond_19
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    goto :goto_17

    .line 663
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 723
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 7

    .prologue
    .line 677
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 679
    return-void
.end method

.method private registerSideSyncAdapterLocked()V
    .registers 7

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 700
    :cond_19
    new-instance v0, Lcom/android/server/display/SideSyncDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/DisplayManagerService$SideSyncListener;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    .line 706
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 708
    :cond_32
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 7

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 685
    :cond_19
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 688
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 690
    :cond_2f
    return-void
.end method

.method private saveWifiDisplayInfo(Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->wifiDevice:Lcom/android/server/display/DisplayDevice;

    .line 751
    return-void
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 4
    .param p1, "inTraversal"    # Z

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    if-eqz v0, :cond_13

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1058
    if-nez p1, :cond_13

    .line 1059
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1062
    :cond_13
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1050
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    return-void
.end method

.method private static setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p0, "viewport"    # Lcom/android/server/display/DisplayViewport;
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 1033
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 1034
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Lcom/android/server/display/DisplayViewport;)V

    .line 1035
    return-void
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private updateDisplayDeviceInfo(Lcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .registers 5
    .param p1, "toDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "fromDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 740
    const-string v0, "DisplayManagerService"

    const-string v1, "Replacing deviceInfo details, sideSync"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 743
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 744
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 746
    return-object p1
.end method

.method private updateLogicalDisplaysLocked()Z
    .registers 8

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_8
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_4c

    .line 917
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 918
    .local v2, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 920
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 921
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 922
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 923
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 924
    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 925
    const/4 v0, 0x1

    :cond_38
    :goto_38
    move v4, v3

    .line 930
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_8

    .line 926
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_3a
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 927
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 928
    const/4 v0, 0x1

    goto :goto_38

    .line 931
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "displayId":I
    :cond_4c
    return v0
.end method


# virtual methods
.method public blankAllDisplaysFromPowerManager()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 374
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 375
    :try_start_4
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_26

    .line 376
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 378
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_22

    .line 380
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 381
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 384
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_22
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 386
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_26
    monitor-exit v4

    .line 387
    return-void

    .line 386
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 503
    if-nez p1, :cond_a

    .line 504
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "address must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 507
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    .line 508
    .local v2, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_26

    .line 511
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v3, :cond_1e

    .line 512
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;Z)V

    .line 514
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 518
    return-void

    .line 514
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 516
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .registers 8
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p2, :cond_a

    .line 523
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "address must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 526
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    .line 527
    .local v2, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 529
    .local v0, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_26

    .line 530
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v3, :cond_1e

    .line 531
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;Z)V

    .line 533
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return-void

    .line 533
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 535
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1285
    if-nez p1, :cond_a

    .line 1286
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "address must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1289
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    .line 1290
    .local v2, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1292
    .local v0, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_26

    .line 1293
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v3, :cond_1e

    .line 1294
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectWithPinLocked(Ljava/lang/String;Z)V

    .line 1296
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    return-void

    .line 1296
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 1298
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableRemoteDisplay()V
    .registers 3

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1443
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1444
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->requestDisableSideSyncLocked()V

    .line 1446
    :cond_c
    monitor-exit v1

    .line 1447
    return-void

    .line 1446
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public disableSideSync()V
    .registers 3

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1411
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1412
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->requestDisableSideSyncLocked()V

    .line 1414
    :cond_c
    monitor-exit v1

    .line 1415
    return-void

    .line 1414
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public disableWifiDisplay()V
    .registers 3

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1312
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1313
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisableLocked()V

    .line 1315
    :cond_c
    monitor-exit v1

    .line 1316
    return-void

    .line 1315
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public disconnectWifiDisplay()V
    .registers 5

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 564
    .local v0, "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_18

    .line 565
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_10

    .line 566
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 568
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    return-void

    .line 568
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 570
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disconnectWifiDisplayExt()V
    .registers 5

    .prologue
    .line 576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 578
    .local v0, "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_18

    .line 579
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_10

    .line 580
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectExtLocked()V

    .line 582
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    return-void

    .line 582
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 584
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1091
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_37

    .line 1094
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: can\'t dump DisplayManager from from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    :goto_36
    return-void

    .line 1099
    :cond_37
    const-string v8, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v9

    .line 1102
    :try_start_3f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHeadless="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mOnlyCode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSafeMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingTraversal="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAllDisplayBlankStateFromPowerManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mNextNonDefaultDisplayId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDefaultViewport="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mExternalTouchViewport="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSingleDisplayDemoMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "    "

    invoke-direct {v6, p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1114
    .local v6, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1116
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Adapters: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_146
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_173

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    .line 1119
    .local v0, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_146

    .line 1139
    .end local v0    # "adapter":Lcom/android/server/display/DisplayAdapter;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_170
    move-exception v8

    monitor-exit v9
    :try_end_172
    .catchall {:try_start_3f .. :try_end_172} :catchall_170

    throw v8

    .line 1123
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_173
    :try_start_173
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Devices: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_198
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1126
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v1, v6}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_198

    .line 1130
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_1c2
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1131
    .local v7, "logicalDisplayCount":I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Logical Displays: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e2
    if-ge v4, v7, :cond_214

    .line 1134
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1135
    .local v3, "displayId":I
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1136
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Display "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v2, v6}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1133
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e2

    .line 1139
    .end local v2    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v3    # "displayId":I
    :cond_214
    monitor-exit v9
    :try_end_215
    .catchall {:try_start_173 .. :try_end_215} :catchall_170

    goto/16 :goto_36
.end method

.method public enableRemoteDisplay(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1435
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_10

    .line 1436
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/display/SideSyncDisplayAdapter;->requestEnableSideSyncLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    .line 1437
    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_f

    .line 1438
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public enableSideSync(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "resolution"    # I

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1403
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1404
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/SideSyncDisplayAdapter;->requestEnableSideSyncLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    .line 1405
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_e

    .line 1406
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 5
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1304
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1305
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 1307
    :cond_c
    monitor-exit v1

    .line 1308
    return-void

    .line 1307
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 612
    if-nez p1, :cond_a

    .line 613
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_18

    .line 616
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to forget a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 622
    .local v0, "token":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_30

    .line 623
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_28

    .line 624
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 626
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 628
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    return-void

    .line 626
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 628
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getConnectedDisplayInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1379
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1380
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->getConnectedDisplayInfo(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 1381
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    monitor-exit v1

    goto :goto_e

    .line 1382
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getDisplayIds()[I
    .registers 6

    .prologue
    .line 431
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 432
    :try_start_3
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 433
    .local v0, "count":I
    new-array v1, v0, [I

    .line 434
    .local v1, "displayIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_19

    .line 435
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 437
    :cond_19
    monitor-exit v4

    return-object v1

    .line 438
    .end local v0    # "count":I
    .end local v1    # "displayIds":[I
    .end local v2    # "i":I
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 419
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_13

    .line 420
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    monitor-exit v2

    .line 422
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_12

    .line 423
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getRemoteDisplayStatus()I
    .registers 3

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1427
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1428
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSideSyncStatus()I

    move-result v0

    monitor-exit v1

    .line 1429
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_e

    .line 1430
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getSideSyncStatus()I
    .registers 3

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1395
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1396
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSideSyncStatus()I

    move-result v0

    monitor-exit v1

    .line 1397
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_e

    .line 1398
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 3

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1329
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1330
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayBridgeStatus()I

    move-result v0

    monitor-exit v1

    .line 1332
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_e

    .line 1333
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 5

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 636
    .local v0, "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    .line 637
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_16

    .line 638
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return-object v2

    .line 640
    :cond_16
    :try_start_16
    new-instance v2, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v2}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    .line 644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .line 642
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 644
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDongleRenameAvailable()Z
    .registers 3

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1467
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1468
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isDongleRenameAvailableLocked()Z

    move-result v0

    monitor-exit v1

    .line 1470
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1471
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isHeadless()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    return v0
.end method

.method public isRemoteDisplaySupported(I)Z
    .registers 4
    .param p1, "feature"    # I

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1419
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1420
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SideSyncDisplayAdapter;->isSupported(I)Z

    move-result v0

    monitor-exit v1

    .line 1421
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1422
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isSinkAvailable()Z
    .registers 3

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1363
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1364
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isSinkAvailable()Z

    move-result v0

    monitor-exit v1

    .line 1365
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1366
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isSourceAvailable()Z
    .registers 3

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1371
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1372
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isSourceAvailable()Z

    move-result v0

    monitor-exit v1

    .line 1373
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1374
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isSupported(I)Z
    .registers 4
    .param p1, "feature"    # I

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1387
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1388
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SideSyncDisplayAdapter;->isSupported(I)Z

    move-result v0

    monitor-exit v1

    .line 1389
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1390
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isWfdEngineRunning()Z
    .registers 3

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1338
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1339
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdEngineRunning()Z

    move-result v0

    monitor-exit v1

    .line 1341
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1342
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 3

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1320
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_f

    .line 1321
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isWifiDisplayBridgeAvailable()Z

    move-result v0

    monitor-exit v1

    .line 1323
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1324
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public notifyContentFinish()V
    .registers 9

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v3

    .line 542
    .local v3, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 544
    .local v1, "token":J
    :try_start_8
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_5a

    .line 545
    :try_start_b
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v4, :cond_52

    .line 546
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 548
    .local v0, "status":Landroid/hardware/display/WifiDisplayStatus;
    const-string v4, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyContentFinish is called with activedisplaystate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "connectedState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_52

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v6

    if-ne v4, v6, :cond_52

    .line 551
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 553
    .end local v0    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_57

    .line 555
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    return-void

    .line 553
    :catchall_57
    move-exception v4

    :try_start_58
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 555
    :catchall_5a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1347
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->notifyEnterHomeSyncApp()V

    .line 1350
    :cond_c
    monitor-exit v1

    .line 1351
    return-void

    .line 1350
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 1354
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1355
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1356
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->notifyExitHomeSyncApp()V

    .line 1358
    :cond_c
    monitor-exit v1

    .line 1359
    return-void

    .line 1358
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public pauseRemoteDisplay()V
    .registers 3

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1451
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1452
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->pauseSideSyncLocked()V

    .line 1454
    :cond_c
    monitor-exit v1

    .line 1455
    return-void

    .line 1454
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .registers 5

    .prologue
    .line 355
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 356
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v2, :cond_9

    .line 357
    monitor-exit v3

    .line 368
    :cond_8
    return-void

    .line 359
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 361
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionLocked()V

    .line 362
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    .line 365
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransactionListener;

    .line 366
    .local v1, "listener":Lcom/android/server/display/DisplayTransactionListener;
    invoke-interface {v1}, Lcom/android/server/display/DisplayTransactionListener;->onDisplayTransaction()V

    goto :goto_16

    .line 362
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/display/DisplayTransactionListener;
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    .prologue
    .line 443
    if-nez p1, :cond_a

    .line 444
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 447
    :cond_a
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 448
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 449
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 450
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    .end local v1    # "callingPid":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v4

    .line 454
    .restart local v1    # "callingPid":I
    :cond_24
    :try_start_24
    new-instance v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 456
    .local v3, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_29
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_38
    .catchall {:try_start_29 .. :try_end_31} :catchall_21

    .line 463
    :try_start_31
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    monitor-exit v5

    .line 465
    return-void

    .line 458
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_38
    move-exception v2

    .line 460
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_21
.end method

.method public registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/display/DisplayTransactionListener;

    .prologue
    .line 290
    if-nez p1, :cond_a

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1476
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1477
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDongleLocked(Ljava/lang/String;)V

    .line 1479
    :cond_c
    monitor-exit v1

    .line 1480
    return-void

    .line 1479
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 590
    if-nez p1, :cond_a

    .line 591
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_18

    .line 594
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to rename a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 598
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 600
    .local v0, "token":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_30

    .line 601
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_28

    .line 602
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    return-void

    .line 604
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 606
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeRemoteDisplay()V
    .registers 3

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1459
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    if-eqz v0, :cond_c

    .line 1460
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSideSyncAdapter:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->resumeSideSyncLocked()V

    .line 1462
    :cond_c
    monitor-exit v1

    .line 1463
    return-void

    .line 1462
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public scanWifiDisplays()V
    .registers 5

    .prologue
    .line 475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 477
    .local v0, "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_18

    .line 478
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_10

    .line 479
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestScanLocked()V

    .line 481
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    return-void

    .line 481
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 483
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDisplayHasContent(IZZ)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "inTraversal"    # Z

    .prologue
    .line 976
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 977
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 978
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-eq v1, p2, :cond_19

    .line 979
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 980
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 982
    :cond_19
    monitor-exit v2

    .line 983
    return-void

    .line 982
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 327
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_2d

    .line 328
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 329
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V

    .line 330
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 331
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 332
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 335
    :cond_2d
    monitor-exit v2

    .line 336
    return-void

    .line 335
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V
    .registers 4
    .param p1, "inputManagerFuncs"    # Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 257
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setOverscan(IIIII)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 344
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_10

    .line 345
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/display/LogicalDisplay;->setOverscan(IIII)V

    .line 347
    :cond_10
    monitor-exit v2

    .line 348
    return-void

    .line 347
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V
    .registers 4
    .param p1, "windowManagerFuncs"    # Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 246
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public stopScanWifiDisplays()V
    .registers 5

    .prologue
    .line 489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 491
    .local v0, "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_18

    .line 492
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_10

    .line 493
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    .line 495
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    return-void

    .line 495
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 497
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(ZZ)V
    .registers 5
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 267
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 268
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 269
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    .line 271
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 272
    return-void

    .line 269
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public unblankAllDisplaysFromPowerManager()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 393
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 394
    :try_start_4
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_26

    .line 395
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 397
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_22

    .line 399
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 400
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 403
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_22
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 405
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_26
    monitor-exit v4

    .line 406
    return-void

    .line 405
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/display/DisplayTransactionListener;

    .prologue
    .line 305
    if-nez p1, :cond_a

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public waitForDefaultDisplay()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 222
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 223
    .local v2, "timeout":J
    :goto_c
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 225
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_23

    .line 226
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2e

    .line 237
    .end local v0    # "delay":J
    :goto_22
    return v4

    .line 232
    .restart local v0    # "delay":J
    :cond_23
    :try_start_23
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_2e

    goto :goto_c

    .line 233
    :catch_29
    move-exception v6

    goto :goto_c

    .line 236
    .end local v0    # "delay":J
    :cond_2b
    :try_start_2b
    monitor-exit v5

    .line 237
    const/4 v4, 0x1

    goto :goto_22

    .line 236
    .end local v2    # "timeout":J
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_2e

    throw v4
.end method
