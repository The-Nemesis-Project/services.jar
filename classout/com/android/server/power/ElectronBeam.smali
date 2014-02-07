.class final Lcom/android/server/power/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mMode:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexMatrix:[F

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 4
    .param p1, "displayManager"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    const/16 v1, 0x8

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    .line 101
    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 102
    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 121
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 122
    return-void
.end method

.method private attachEglContext()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_6

    .line 603
    :goto_5
    return v0

    .line 599
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 600
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_5

    .line 603
    :cond_1a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 425
    :goto_8
    return v0

    .line 384
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v1, :cond_23

    .line 385
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 386
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_c1

    move-result v1

    if-eqz v1, :cond_20

    .line 423
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_8

    .line 389
    :cond_20
    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 392
    :cond_23
    new-instance v7, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v7, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 393
    .local v7, "st":Landroid/graphics/SurfaceTexture;
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_c1

    .line 395
    .local v6, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    :try_start_33
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_bc

    .line 398
    :try_start_3a
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 401
    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 402
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v7, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 407
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 408
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 409
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 410
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 413
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 414
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 415
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 416
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 417
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 418
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 419
    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 420
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 421
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_b6
    .catchall {:try_start_3a .. :try_end_b6} :catchall_c1

    .line 423
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    move v0, v8

    .line 425
    goto/16 :goto_8

    .line 398
    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    .line 423
    .end local v6    # "s":Landroid/view/Surface;
    .end local v7    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_c1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 658
    .local v1, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_2c

    .line 659
    if-eqz p1, :cond_2a

    .line 660
    const-string v2, "ElectronBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    :cond_2a
    const/4 v1, 0x1

    goto :goto_1

    .line 664
    :cond_2c
    return v1
.end method

.method private createEglContext()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_2c

    .line 444
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 445
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_18

    .line 446
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 487
    :goto_17
    return v2

    .line 450
    :cond_18
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 451
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 453
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .line 458
    .end local v9    # "version":[I
    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_50

    .line 459
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_72

    .line 466
    .local v1, "eglConfigAttribList":[I
    new-array v6, v10, [I

    .line 467
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 468
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 470
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .line 473
    :cond_4c
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 476
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_50
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    .line 477
    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    .line 480
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    .line 482
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    .line 483
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .end local v8    # "eglContextAttribList":[I
    :cond_70
    move v2, v10

    .line 487
    goto :goto_17

    .line 459
    :array_72
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 538
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    .line 539
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 543
    .local v0, "eglSurfaceAttribList":[I
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 545
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    .line 546
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 550
    .end local v0    # "eglSurfaceAttribList":[I
    :goto_21
    return v1

    :cond_22
    move v1, v2

    goto :goto_21
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 642
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 643
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 644
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 9

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_b

    .line 502
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 505
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 507
    :try_start_e
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_6d

    if-nez v0, :cond_2a

    .line 510
    :try_start_12
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    .line 511
    const v6, 0x20004

    .line 515
    .local v6, "flags":I
    :goto_1a
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ElectronBeam"

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2a
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_12 .. :try_end_2a} :catch_60
    .catchall {:try_start_12 .. :try_end_2a} :catchall_6d

    .line 524
    .end local v6    # "flags":I
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 525
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 526
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    .line 527
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 529
    new-instance v0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 530
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_6d

    .line 532
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 534
    const/4 v0, 0x1

    :goto_5c
    return v0

    .line 513
    :cond_5d
    const/16 v6, 0x404

    .restart local v6    # "flags":I
    goto :goto_1a

    .line 518
    .end local v6    # "flags":I
    :catch_60
    move-exception v7

    .line 519
    .local v7, "ex":Landroid/view/SurfaceControl$OutOfResourcesException;
    :try_start_61
    const-string v0, "ElectronBeam"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_6d

    .line 520
    const/4 v0, 0x0

    .line 532
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_5c

    .end local v7    # "ex":Landroid/view/SurfaceControl$OutOfResourcesException;
    :catchall_6d
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_16

    .line 555
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 556
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 558
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 560
    :cond_16
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_1c

    .line 430
    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    .line 431
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 433
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 434
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 436
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 440
    :cond_1c
    return-void

    .line 436
    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private destroySurface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    .line 564
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    .line 565
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    .line 566
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 568
    :try_start_f
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 569
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    .line 571
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 573
    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 577
    :cond_24
    return-void

    .line 571
    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .registers 5

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_f

    .line 608
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 611
    :cond_f
    return-void
.end method

.method private drawHStretch(F)V
    .registers 9
    .param p1, "stretch"    # F

    .prologue
    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    .line 329
    const/high16 v1, 0x41000000

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 334
    .local v0, "ag":F
    cmpg-float v1, p1, v4

    if-gez v1, :cond_37

    .line 336
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v5, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 337
    invoke-static {v6}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 340
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/power/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 341
    sub-float v1, v4, v0

    sub-float v2, v4, v0

    sub-float v3, v4, v0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 342
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 345
    invoke-static {v6}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 347
    :cond_37
    return-void
.end method

.method private drawVStretch(F)V
    .registers 13
    .param p1, "stretch"    # F

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const v8, 0x8d65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    const/high16 v3, 0x40f00000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v2

    .line 254
    .local v2, "ar":F
    const/high16 v3, 0x41000000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 255
    .local v1, "ag":F
    const/high16 v3, 0x41080000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 262
    .local v0, "ab":F
    invoke-static {v7, v7}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 263
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 266
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 267
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 270
    const/16 v3, 0xde1

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 271
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 274
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v3, v3, v6

    invoke-static {v8, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 275
    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v3, :cond_d1

    const/16 v3, 0x2100

    :goto_48
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 277
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 279
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 281
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 283
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 285
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 286
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 287
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 290
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 291
    invoke-static {v7, v6, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 292
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 295
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 296
    invoke-static {v6, v7, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 297
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 300
    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 301
    invoke-static {v6, v6, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 302
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 305
    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 306
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 307
    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 310
    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-ne v3, v7, :cond_c5

    .line 311
    const/high16 v3, 0x3f800000

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 312
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 316
    :cond_c5
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 317
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 318
    return-void

    .line 275
    :cond_d1
    const/16 v3, 0x1e01

    goto/16 :goto_48
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 648
    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    return-void
.end method

.method private static scurve(FF)F
    .registers 7
    .param p0, "value"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v4, 0x3f000000

    .line 622
    sub-float v1, p0, v4

    .line 627
    .local v1, "x":F
    invoke-static {v1, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    .line 631
    .local v2, "y":F
    invoke-static {v4, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    .line 634
    .local v0, "v":F
    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .registers 11
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v6, 0x3f800000

    const/high16 v5, 0x3f000000

    .line 358
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 359
    .local v1, "w":F
    const/high16 v0, 0x3f800000

    .line 360
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 361
    .local v2, "x":F
    sub-float v4, p2, v6

    mul-float v3, v4, v5

    .line 362
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v6}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 363
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 371
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 372
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 373
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 374
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 375
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 376
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 377
    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .registers 10
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v5, 0x3f000000

    .line 350
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 351
    .local v1, "w":F
    mul-float v4, p2, p3

    sub-float v0, p2, v4

    .line 352
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v5

    .line 353
    .local v2, "x":F
    sub-float v4, p2, v0

    mul-float v3, v4, v5

    .line 354
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 355
    return-void
.end method

.method private showSurface(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 580
    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_27

    .line 581
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 583
    :try_start_e
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 584
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 585
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_28

    .line 587
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 589
    iput-boolean v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    .line 590
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    .line 592
    :cond_27
    return v2

    .line 587
    :catchall_28
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private static sigmoid(FF)F
    .registers 4
    .param p0, "x"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 638
    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method

.method private tryPrepare()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 171
    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 178
    :cond_d
    :goto_d
    return v0

    .line 174
    :cond_e
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_20
    move v0, v1

    goto :goto_d

    :cond_22
    move v0, v1

    .line 178
    goto :goto_d
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyScreenshotTexture()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyEglSurface()V

    .line 195
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroySurface()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 197
    return-void
.end method

.method public draw(F)Z
    .registers 9
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f000000

    const/high16 v5, 0x3f800000

    .line 211
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_a

    .line 241
    :cond_9
    :goto_9
    return v0

    .line 215
    :cond_a
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 216
    sub-float v0, v5, p1

    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_9

    .line 219
    :cond_16
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    :try_start_21
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 225
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 228
    cmpg-float v1, p1, v6

    if-gez v1, :cond_40

    .line 229
    div-float v1, p1, v6

    sub-float v1, v5, v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V

    .line 233
    :goto_34
    const-string v1, "drawFrame"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_49

    move-result v1

    if-eqz v1, :cond_4e

    .line 239
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_9

    .line 231
    :cond_40
    sub-float v1, p1, v6

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    :try_start_45
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_34

    .line 239
    :catchall_49
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0

    .line 237
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_49

    .line 239
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    .line 241
    invoke-direct {p0, v5}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_9
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 668
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 669
    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public prepare(I)Z
    .registers 7
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 136
    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    .line 140
    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 141
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    .line 142
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    .line 143
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    .line 146
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->tryPrepare()Z

    move-result v4

    if-nez v4, :cond_24

    .line 147
    invoke-virtual {p0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    .line 166
    :goto_23
    return v2

    .line 152
    :cond_24
    iput-boolean v3, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    .line 161
    if-ne p1, v3, :cond_34

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    const/4 v2, 0x3

    if-ge v1, v2, :cond_34

    .line 163
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .end local v1    # "i":I
    :cond_34
    move v2, v3

    .line 166
    goto :goto_23
.end method
