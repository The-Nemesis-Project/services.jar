.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackTapPointerEventListener$1;,
        Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
    }
.end annotation


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mMotionSlop:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 62
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 63
    .local v0, "info":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e000000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .registers 17
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v8, p1

    .line 145
    .local v8, "x":I
    float-to-int v9, p2

    .line 146
    .local v9, "y":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v3, "tmpRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 148
    .local v4, "touchableRegion":Landroid/graphics/Region;
    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v2

    .line 150
    .local v2, "resizableOutSize":I
    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 151
    :try_start_1a
    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 152
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_26
    if-ltz v1, :cond_6e

    .line 153
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 154
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    .local v0, "flags":I
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_3b

    .line 152
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 159
    :cond_3b
    and-int/lit8 v10, v0, 0x10

    if-nez v10, :cond_38

    .line 163
    if-eqz p3, :cond_46

    const/high16 v10, 0x10000000

    and-int/2addr v10, v0

    if-nez v10, :cond_38

    .line 169
    :cond_46
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 170
    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v10

    if-nez v10, :cond_67

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/16 v12, 0x800

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 173
    neg-int v10, v2

    neg-int v12, v2

    invoke-virtual {v3, v10, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 175
    :cond_67
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 176
    move-object v5, v6

    .line 180
    .end local v0    # "flags":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_6e
    monitor-exit v11

    .line 181
    return-object v5

    .line 180
    .end local v1    # "i":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_70
    move-exception v10

    monitor-exit v11
    :try_end_72
    .catchall {:try_start_1a .. :try_end_72} :catchall_70

    throw v10
.end method

.method private otherAppTouched(FFZ)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 134
    .local v0, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1a

    .line 135
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_1a

    .line 136
    const/4 v1, 0x1

    .line 139
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method


# virtual methods
.method public init()V
    .registers 5

    .prologue
    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 71
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 90
    :cond_d
    :goto_d
    return-void

    .line 81
    :cond_e
    and-int/lit16 v2, v0, 0xff

    if-nez v2, :cond_d

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    .line 85
    iget v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/wm/StackTapPointerEventListener;->otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1f

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d
.end method
