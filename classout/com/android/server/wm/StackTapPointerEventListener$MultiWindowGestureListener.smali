.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/StackTapPointerEventListener$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v6, 0x1

    :goto_11
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 188
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_153

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_153

    .line 189
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-ne v6, v7, :cond_2d

    .line 190
    const/4 v6, 0x0

    .line 242
    :goto_2a
    return v6

    .line 187
    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2b
    const/4 v6, 0x0

    goto :goto_11

    .line 192
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 193
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_153

    .line 194
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    .line 195
    .local v5, "zone":I
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 196
    .local v1, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 198
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e3

    .line 199
    const/4 v6, 0x3

    if-ne v5, v6, :cond_85

    .line 200
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 235
    :cond_63
    :goto_63
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    const/4 v6, 0x1

    goto :goto_2a

    .line 201
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_85
    const/16 v6, 0xc

    if-ne v5, v6, :cond_92

    .line 202
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_63

    .line 203
    :cond_92
    const/4 v6, 0x1

    if-ne v5, v6, :cond_a6

    .line 204
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 205
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_63

    .line 206
    :cond_a6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_ba

    .line 207
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 208
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_63

    .line 209
    :cond_ba
    const/4 v6, 0x4

    if-ne v5, v6, :cond_ce

    .line 210
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 211
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_63

    .line 212
    :cond_ce
    const/16 v6, 0x8

    if-ne v5, v6, :cond_63

    .line 213
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 214
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_63

    .line 217
    :cond_e3
    const/4 v6, 0x3

    if-ne v5, v6, :cond_f0

    .line 218
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_63

    .line 219
    :cond_f0
    const/16 v6, 0xc

    if-ne v5, v6, :cond_fe

    .line 220
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_63

    .line 221
    :cond_fe
    const/4 v6, 0x1

    if-ne v5, v6, :cond_113

    .line 222
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 223
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_63

    .line 224
    :cond_113
    const/4 v6, 0x2

    if-ne v5, v6, :cond_128

    .line 225
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 226
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_63

    .line 227
    :cond_128
    const/4 v6, 0x4

    if-ne v5, v6, :cond_13d

    .line 228
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 229
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_63

    .line 230
    :cond_13d
    const/16 v6, 0x8

    if-ne v5, v6, :cond_63

    .line 231
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 232
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_63

    .line 242
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v3    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "zone":I
    :cond_153
    const/4 v6, 0x0

    goto/16 :goto_2a
.end method
