.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V
    .registers 20
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "outer"    # Landroid/graphics/Rect;
    .param p3, "inner"    # Landroid/graphics/Rect;
    .param p4, "layer"    # I
    .param p5, "layerStack"    # I
    .param p6, "forceDefaultOrientation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 98
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    .line 99
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 118
    const/4 v10, 0x0

    .line 120
    .local v10, "success":Z
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 125
    :try_start_2a
    iget v1, p2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4e

    .line 126
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x0

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    .line 129
    :cond_4e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_72

    .line 130
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x1

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    .line 133
    :cond_72
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_96

    .line 134
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x2

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    .line 137
    :cond_96
    iget v1, p2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_ba

    .line 138
    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x3

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12
    :try_end_ba
    .catchall {:try_start_2a .. :try_end_ba} :catchall_c1

    .line 141
    :cond_ba
    const/4 v10, 0x1

    .line 143
    if-nez v10, :cond_c0

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 147
    :cond_c0
    return-void

    .line 143
    :catchall_c1
    move-exception v1

    if-nez v10, :cond_c7

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 143
    :cond_c7
    throw v1
.end method


# virtual methods
.method public clearMatrix()V
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 192
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 193
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix()V

    .line 191
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_16
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v1, :cond_1c

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 166
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 172
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public kill()V
    .registers 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v1, :cond_21

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 151
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 162
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 104
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Outer: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 105
    const-string v2, " / Inner: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v0, v2, v1

    .line 109
    .local v0, "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 110
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 111
    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 114
    .end local v0    # "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    :cond_50
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(F)V

    .line 175
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_16
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/graphics/Matrix;)V

    .line 183
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_16
    return-void
.end method
