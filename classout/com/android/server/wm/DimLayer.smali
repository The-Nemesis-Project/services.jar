.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DimLayer"


# instance fields
.field mAlpha:F

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastDimHeight:I

.field mLastDimWidth:I

.field mLayer:I

.field private mShowing:Z

.field mStartAlpha:F

.field mStartTime:J

.field mTargetAlpha:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 28
    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 37
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 40
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 59
    :try_start_19
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "DimLayer"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_35
    .catchall {:try_start_19 .. :try_end_31} :catchall_41

    .line 70
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 72
    :goto_34
    return-void

    .line 67
    :catch_35
    move-exception v7

    .line 68
    .local v7, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    .line 70
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_34

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_41
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .registers 9
    .param p1, "duration"    # J

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1e

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 104
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_1f

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_30

    .line 116
    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 118
    :cond_1e
    return-void

    .line 108
    :cond_1f
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1c

    :try_start_23
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_1c

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_1c

    .line 113
    :catch_30
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DimLayer"

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method


# virtual methods
.method destroySurface()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 255
    :cond_c
    return-void
.end method

.method getLayer()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .registers 3

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_9

    .line 201
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 203
    :cond_9
    return-void
.end method

.method hide(J)V
    .registers 5
    .param p1, "duration"    # J

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 214
    :cond_11
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 216
    :cond_16
    return-void
.end method

.method isAnimating()Z
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDimming()Z
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 258
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 260
    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 262
    const-string v0, " mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 264
    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 265
    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 266
    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 267
    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 268
    return-void
.end method

.method setLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-eq v0, p1, :cond_b

    .line 90
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 93
    :cond_b
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 135
    :cond_f
    return-void
.end method

.method show(IFJ)V
    .registers 20
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    .line 148
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v11, :cond_11

    .line 149
    const-string v11, "DimLayer"

    const-string v12, "show: no Surface"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 194
    :goto_10
    return-void

    .line 156
    :cond_11
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 159
    .local v8, "info":Landroid/view/DisplayInfo;
    iget v11, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8000000000000L

    mul-double/2addr v11, v13

    double-to-int v6, v11

    .line 160
    .local v6, "dw":I
    iget v11, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8000000000000L

    mul-double/2addr v11, v13

    double-to-int v5, v11

    .line 162
    .local v5, "dh":I
    mul-int/lit8 v11, v6, -0x1

    div-int/lit8 v11, v11, 0x6

    int-to-float v9, v11

    .line 163
    .local v9, "xPos":F
    mul-int/lit8 v11, v5, -0x1

    div-int/lit8 v11, v11, 0x6

    int-to-float v10, v11

    .line 165
    .local v10, "yPos":F
    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    if-ne v11, v6, :cond_3d

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLastDimHeight:I

    if-ne v11, v5, :cond_3d

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    move/from16 v0, p1

    if-eq v11, v0, :cond_56

    .line 167
    :cond_3d
    :try_start_3d
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v9, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 168
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v6, v5}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 169
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_4e} :catch_86

    .line 173
    :goto_4e
    iput v6, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    .line 174
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mLastDimHeight:I

    .line 175
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 178
    :cond_56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 179
    .local v3, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v2

    .line 180
    .local v2, "animating":Z
    if-eqz v2, :cond_6e

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v11, v11, p2

    if-nez v11, :cond_76

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v11

    if-nez v11, :cond_76

    :cond_6e
    if-nez v2, :cond_81

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v11, v11, p2

    if-eqz v11, :cond_81

    .line 182
    :cond_76
    const-wide/16 v11, 0x0

    cmp-long v11, p3, v11

    if-gtz v11, :cond_8f

    .line 184
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 193
    :cond_81
    :goto_81
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    goto :goto_10

    .line 170
    .end local v2    # "animating":Z
    .end local v3    # "curTime":J
    :catch_86
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v11, "DimLayer"

    const-string v12, "Failure setting size or layer"

    invoke-static {v11, v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 187
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "animating":Z
    .restart local v3    # "curTime":J
    :cond_8f
    iget v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 188
    iput-wide v3, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 189
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_81
.end method

.method stepAnimation()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 225
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_12

    .line 226
    const-string v4, "DimLayer"

    const-string v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 229
    const/4 v4, 0x0

    .line 245
    :goto_11
    return v4

    .line 232
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 234
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 235
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v5, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v5, v2, v5

    long-to-float v5, v5

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 236
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_3a

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_44

    :cond_3a
    cmpg-float v4, v1, v8

    if-gez v4, :cond_46

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_46

    .line 239
    :cond_44
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 242
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 245
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    goto :goto_11
.end method
