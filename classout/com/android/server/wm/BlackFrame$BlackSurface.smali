.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V
    .registers 16
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "layer"    # I
    .param p4, "l"    # I
    .param p5, "t"    # I
    .param p6, "r"    # I
    .param p7, "b"    # I
    .param p8, "layerStack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 47
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 48
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    .line 49
    sub-int v3, p6, p4

    .line 50
    .local v3, "w":I
    sub-int v4, p7, p5

    .line 57
    .local v4, "h":I
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "BlackSurface"

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p8}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 68
    return-void
.end method


# virtual methods
.method clearMatrix()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 92
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .registers 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v4, v4, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 88
    return-void
.end method

.method setMatrix3D(Landroid/view/animation/ModelViewMatrix;)V
    .registers 8
    .param p1, "matrix"    # Landroid/view/animation/ModelViewMatrix;

    .prologue
    .line 95
    new-instance v1, Landroid/view/animation/ModelViewMatrix;

    invoke-direct {v1}, Landroid/view/animation/ModelViewMatrix;-><init>()V

    .line 96
    .local v1, "tmpMat1":Landroid/view/animation/ModelViewMatrix;
    new-instance v2, Landroid/view/animation/ModelViewMatrix;

    invoke-direct {v2}, Landroid/view/animation/ModelViewMatrix;-><init>()V

    .line 99
    .local v2, "tmpMat2":Landroid/view/animation/ModelViewMatrix;
    new-instance v0, Landroid/view/animation/Vec3F;

    iget v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Landroid/view/animation/Vec3F;-><init>(FFF)V

    .line 100
    .local v0, "InitialVal":Landroid/view/animation/Vec3F;
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v3, Lcom/android/server/wm/BlackFrame;->mTmpMatrix4:Landroid/view/animation/ModelViewMatrix;

    .line 101
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpMatrix4:Landroid/view/animation/ModelViewMatrix;

    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpMatrix4:Landroid/view/animation/ModelViewMatrix;

    invoke-static {v3, v0}, Landroid/view/animation/ModelViewMatrix;->translate(Landroid/view/animation/ModelViewMatrix;Landroid/view/animation/Vec3F;)Z

    .line 102
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame;->mTmpMatrix4:Landroid/view/animation/ModelViewMatrix;

    invoke-static {v1, p1}, Landroid/view/animation/ModelViewMatrix;->getProduct(Landroid/view/animation/ModelViewMatrix;Landroid/view/animation/ModelViewMatrix;)Landroid/view/animation/ModelViewMatrix;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/animation/ModelViewMatrix;->getArray()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setMatrix3D([F)V

    .line 104
    return-void
.end method
