.class Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayContentsAnimator"
.end annotation


# instance fields
.field mDimAnimator:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowAnimator;I)V
    .registers 5
    .param p2, "displayId"    # I

    .prologue
    const/4 v0, 0x0

    .line 932
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 928
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 929
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 930
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 933
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p1, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 934
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p1, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 935
    return-void
.end method
