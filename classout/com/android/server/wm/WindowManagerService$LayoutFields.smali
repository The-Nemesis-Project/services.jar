.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field private static final DISPLAY_CONTENT_MIRROR:I = 0x1

.field private static final DISPLAY_CONTENT_UNIQUE:I = 0x2

.field private static final DISPLAY_CONTENT_UNKNOWN:I = 0x0

.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field private mButtonLightTimeout:J

.field mDimming:Z

.field private mDisplayHasBgPresentation:Z

.field private mDisplayHasContent:I

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mScreenDimDuration:J

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 721
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 730
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 732
    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 733
    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 734
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    .line 735
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    .line 736
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    .line 737
    iput v4, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    .line 738
    iput v4, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    .line 739
    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    .line 740
    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    .line 741
    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    .line 742
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    .line 743
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    .line 748
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Lcom/android/server/wm/Session;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 721
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 721
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 721
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 721
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 721
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # I

    .prologue
    .line 721
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasBgPresentation:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasBgPresentation:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method
