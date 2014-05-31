.class public Lcom/android/server/palmMotion/PalmMotionService;
.super Landroid/hardware/palmMotion/IPalmMotionService$Stub;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;,
        Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;,
        Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;,
        Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;,
        Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SWEEP_DOWN:I = 0x3

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PalmMotionService"

.field static g_IsBootCompleted:Z

.field private static mInputManagerService:Lcom/android/server/input/InputManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

.field private mPalmMotionInputChannel:Landroid/view/InputChannel;

.field private mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

.field private mPalmMotionRecognizer:Z

.field private mPalmObserver:Landroid/database/ContentObserver;

.field private mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

.field private mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

.field private mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

.field private mUseGestureDetectorTouchEventEx:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->DEBUG:Z

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Im"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/hardware/palmMotion/IPalmMotionService$Stub;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    .line 54
    sget-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 58
    iput-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    .line 711
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/palmMotion/PalmMotionService$1;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    .line 62
    sput-object p2, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 63
    const-string v0, "PalmMotionService"

    const-string v1, "PalmMotionService(context, Im)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .line 66
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    .line 67
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-direct {v0, p0, v2}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .line 68
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    invoke-direct {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    .line 69
    sget-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string v1, "PalmMotionService"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    .line 70
    sget-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 72
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    .line 74
    invoke-direct {p0}, Lcom/android/server/palmMotion/PalmMotionService;->SetContentObserver()V

    .line 75
    return-void
.end method

.method private SetContentObserver()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 685
    const-string v0, "PalmMotionService"

    const-string v1, "[Surface Touch] SetContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "surface_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "surface_palm_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_motion_engine"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 698
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 707
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 708
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 709
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/palmMotion/PalmMotionService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 639
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_8e

    .line 640
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->PreUpdate(Landroid/view/MotionEvent;)V

    .line 642
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    if-nez v0, :cond_1d

    .line 643
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 644
    iput-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 648
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    if-ne v0, v2, :cond_8e

    .line 649
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4e

    .line 650
    :cond_2f
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Initialize()V

    .line 651
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_41

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 652
    :cond_41
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_4e

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 655
    :cond_4e
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Update(Landroid/view/MotionEvent;)V

    .line 657
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_60

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 658
    :cond_60
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_6d

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 660
    :cond_6d
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$600(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z

    move-result v1

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$502(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 662
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v2, :cond_8e

    .line 664
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$602(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 665
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1002(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;Z)Z

    .line 666
    sget-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->DEBUG:Z

    if-nez v0, :cond_8e

    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 671
    :cond_8e
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_9a

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-eq v0, v2, :cond_9f

    .line 673
    :cond_9a
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$602(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 676
    :cond_9f
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_ab

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-eq v0, v2, :cond_b0

    .line 678
    :cond_ab
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1002(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;Z)Z

    .line 681
    :cond_b0
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    invoke-virtual {v0}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->getSweepDown()Z

    move-result v0

    return v0
.end method

.method public setUseGestureDetectorEx(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    .line 734
    return-void
.end method
