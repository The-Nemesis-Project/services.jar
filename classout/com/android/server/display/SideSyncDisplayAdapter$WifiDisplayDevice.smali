.class final Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "SideSyncDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SideSyncDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayDevice"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mFlags:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V
    .registers 10
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "flags"    # I
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "surface"    # Landroid/view/Surface;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 179
    iput-object p3, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 180
    iput p4, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 181
    iput p5, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 182
    iput p6, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 183
    iput p7, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 184
    iput-object p8, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    .line 185
    iput-object p9, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 186
    return-void
.end method


# virtual methods
.method public clearSurfaceLocked()V
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 190
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->sendTraversalRequestLocked()V

    .line 191
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_42

    .line 206
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 207
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 209
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 210
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 211
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 212
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 213
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 215
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 217
    :cond_42
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 201
    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 196
    return-void
.end method
