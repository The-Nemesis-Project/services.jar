.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictModeFlash"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .registers 12
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    .prologue
    const/4 v8, 0x1

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 38
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 41
    const/4 v7, 0x0

    .line 43
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_10
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "StrictModeFlash"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_1c
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_10 .. :try_end_1c} :catch_3b

    .line 45
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1c
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 46
    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 48
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_36
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_1c .. :try_end_36} :catch_3e

    .line 52
    :goto_36
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    iput-boolean v8, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 54
    return-void

    .line 50
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_3b
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_36

    :catch_3e
    move-exception v1

    goto :goto_36
.end method

.method private drawIfNeeded()V
    .registers 10

    .prologue
    const/16 v8, 0x14

    const/high16 v7, -0x10000

    const/4 v6, 0x0

    .line 57
    iget-boolean v4, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v4, :cond_a

    .line 89
    :cond_9
    :goto_9
    return-void

    .line 60
    :cond_a
    iput-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 61
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 62
    .local v3, "dw":I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 64
    .local v1, "dh":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    .local v2, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 67
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_16
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1b} :catch_5e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_1b} :catch_5c

    move-result-object v0

    .line 71
    :goto_1c
    if-eqz v0, :cond_9

    .line 76
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 77
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 80
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 82
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v3, -0x14

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 83
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x14

    invoke-direct {v4, v6, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 86
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 69
    :catch_5c
    move-exception v4

    goto :goto_1c

    .line 68
    :catch_5e
    move-exception v4

    goto :goto_1c
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    .line 113
    :goto_8
    return-void

    .line 109
    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 110
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    goto :goto_8
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 98
    if-eqz p1, :cond_10

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_4

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_4
.end method
