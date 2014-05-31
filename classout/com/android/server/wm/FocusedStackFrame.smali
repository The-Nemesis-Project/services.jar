.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 1.0f

.field private static final DEBUG_STACK_FRAME:Z = true

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mBoundsForUnFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayId:I

.field private mForceReDraw:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private final mLineColor:I

.field private final mLineColorUnFocused:I

.field final mLock:Ljava/lang/Object;

.field private final mScreenSize:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStatusBarHeight:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I

.field private final mThicknessForUnFocused:I

.field private final mTmpDrawRect:Landroid/graphics/Rect;

.field private mUnFocusedZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 14
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v8, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBoundsForUnFocused:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnFocusedZones:Ljava/util/ArrayList;

    .line 68
    iput-boolean v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 82
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 83
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    .line 89
    const/4 v7, 0x0

    .line 95
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_42
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_4e
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_42 .. :try_end_4e} :catch_13b

    .line 98
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_4e
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 99
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_5f
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_4e .. :try_end_5f} :catch_13f

    .line 103
    :goto_5f
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 105
    iput-object p4, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    .line 107
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    .line 109
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    .line 111
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColorUnFocused:I

    .line 115
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mStatusBarHeight:I

    .line 117
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    .line 127
    return-void

    .line 101
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_13b
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto/16 :goto_5f

    :catch_13f
    move-exception v1

    goto/16 :goto_5f
.end method

.method private adjustUnFocusedBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "unFocusBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 185
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_44

    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_44

    .line 186
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 187
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 188
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 189
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 192
    :cond_44
    return-void
.end method

.method private draw(Landroid/graphics/Rect;Ljava/util/ArrayList;I)V
    .registers 16
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "adjustboundsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const/4 v11, 0x2

    .line 208
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 214
    :try_start_a
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_10} :catch_185
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a .. :try_end_10} :catch_182
    .catchall {:try_start_a .. :try_end_10} :catchall_a0

    move-result-object v1

    .line 218
    :goto_11
    if-nez v1, :cond_15

    .line 219
    :try_start_13
    monitor-exit v5

    .line 294
    :goto_14
    return-void

    .line 223
    :cond_15
    const/4 v4, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_100

    .line 226
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 227
    .local v0, "boundsForUnFocused":Landroid/graphics/Rect;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_73

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnFocusedZones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 229
    .local v3, "zone":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->adjustUnFocusedBounds(Landroid/graphics/Rect;)V

    .line 231
    const/4 v4, 0x3

    if-ne v3, v4, :cond_a3

    .line 232
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v11, :cond_76

    .line 234
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 237
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 238
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    .end local v3    # "zone":I
    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 242
    .restart local v3    # "zone":I
    :cond_76
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 245
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 246
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_73

    .line 292
    .end local v0    # "boundsForUnFocused":Landroid/graphics/Rect;
    .end local v2    # "i":I
    .end local v3    # "zone":I
    :catchall_a0
    move-exception v4

    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_13 .. :try_end_a2} :catchall_a0

    throw v4

    .line 250
    .restart local v0    # "boundsForUnFocused":Landroid/graphics/Rect;
    .restart local v2    # "i":I
    .restart local v3    # "zone":I
    :cond_a3
    :try_start_a3
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v11, :cond_d5

    .line 252
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 255
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 256
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_73

    .line 260
    :cond_d5
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mThicknessForUnFocused:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 263
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_73

    .line 271
    .end local v0    # "boundsForUnFocused":Landroid/graphics/Rect;
    .end local v3    # "zone":I
    :cond_100
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17a

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 274
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    add-int/2addr v7, v8

    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    add-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 278
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 280
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    add-int/2addr v7, v8

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 282
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 284
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    sub-int/2addr v7, v8

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 286
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 290
    :cond_17a
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 292
    monitor-exit v5
    :try_end_180
    .catchall {:try_start_a3 .. :try_end_180} :catchall_a0

    goto/16 :goto_14

    .line 216
    .end local v2    # "i":I
    :catch_182
    move-exception v4

    goto/16 :goto_11

    .line 215
    :catch_185
    move-exception v4

    goto/16 :goto_11
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 131
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 132
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :goto_b
    return-object v0

    .line 133
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 300
    return-void
.end method


# virtual methods
.method public adjustBounds(Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thick"    # I

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f000000

    .line 157
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_13

    .line 158
    iget v1, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 160
    :cond_13
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_22

    .line 161
    iget v1, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 163
    :cond_22
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_33

    .line 164
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, p2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 166
    :cond_33
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_44

    .line 167
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, p2

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 171
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 172
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_88

    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_88

    .line 173
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 174
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 175
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 176
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    :cond_88
    return-void
.end method

.method clear()V
    .registers 5

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_a} :catch_21
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_a} :catch_1f
    .catchall {:try_start_4 .. :try_end_a} :catchall_1c

    move-result-object v0

    .line 148
    :goto_b
    if-nez v0, :cond_f

    .line 149
    :try_start_d
    monitor-exit v2

    .line 154
    :goto_e
    return-void

    .line 151
    :cond_f
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 153
    monitor-exit v2

    goto :goto_e

    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1

    .line 146
    :catch_1f
    move-exception v1

    goto :goto_b

    .line 145
    :catch_21
    move-exception v1

    goto :goto_b
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "unFocusedBounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .local p3, "unFocusedZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBoundsForUnFocused:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 369
    if-eqz p2, :cond_27

    .line 370
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 371
    .local v0, "boundsForUnFocused":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBoundsForUnFocused:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 374
    .end local v0    # "boundsForUnFocused":Landroid/graphics/Rect;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_27
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnFocusedZones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 375
    if-eqz p3, :cond_4d

    .line 376
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 377
    .local v2, "zone":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mUnFocusedZones:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "zone":Ljava/lang/Integer;
    :cond_4d
    return-void
.end method

.method public setForceReDraw(Z)V
    .registers 2
    .param p1, "isUnFocusedRectResized"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 399
    return-void
.end method

.method public setLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 385
    return-void
.end method

.method public setScreenSize(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "screenSize"    # Landroid/graphics/Rect;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/FocusedStackFrame;->clear()V

    .line 202
    :cond_15
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FocusedStackFrame;->setVisibility(ZZ)V

    .line 307
    return-void
.end method

.method public setVisibility(ZZ)V
    .registers 11
    .param p1, "on"    # Z
    .param p2, "forceDraw"    # Z

    .prologue
    .line 314
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_5

    .line 359
    :goto_4
    return-void

    .line 317
    :cond_5
    if-eqz p1, :cond_74

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_16

    .line 322
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v5

    .line 327
    :cond_16
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    if-nez v5, :cond_28

    iget-boolean v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-nez v6, :cond_28

    if-eqz p2, :cond_6e

    .line 335
    :cond_28
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 336
    .local v0, "adjustbounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 337
    iget v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    invoke-virtual {p0, v0, v6}, Lcom/android/server/wm/FocusedStackFrame;->adjustBounds(Landroid/graphics/Rect;I)V

    .line 338
    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "adjustboundsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mBoundsForUnFocused:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 341
    .local v3, "boundsForUnFocused":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 343
    .local v2, "adjustboundsForUnFocused":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 346
    .end local v2    # "adjustboundsForUnFocused":Landroid/graphics/Rect;
    .end local v3    # "boundsForUnFocused":Landroid/graphics/Rect;
    :cond_5c
    iget v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    invoke-direct {p0, v0, v1, v6}, Lcom/android/server/wm/FocusedStackFrame;->draw(Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 349
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 353
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    .end local v0    # "adjustbounds":Landroid/graphics/Rect;
    .end local v1    # "adjustboundsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6e
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V

    goto :goto_4

    .line 357
    .end local v5    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_74
    iget-object v6, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_4
.end method
