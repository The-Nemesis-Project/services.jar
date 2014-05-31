.class public Lcom/android/server/sec/TwSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "TwSlidingDrawer.java"


# instance fields
.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mIsSetRect:Z

.field public mTouched:Z

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/TwSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTouched:Z

    .line 37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 60
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 62
    .local v1, "handleId":I
    if-nez v1, :cond_24

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_24
    iput v1, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/server/sec/TwSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_14

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_14
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    .line 83
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 88
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 89
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, "action":I
    if-nez v0, :cond_11

    .line 92
    iput-boolean v7, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 95
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    if-nez v6, :cond_40

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v6, :cond_40

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_40

    .line 96
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_40

    .line 97
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_6c

    instance-of v6, v1, Landroid/widget/Button;

    if-eqz v6, :cond_6c

    .line 99
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 100
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 106
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_40
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getBottom()I

    move-result v10

    invoke-direct {v2, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    .local v2, "frame":Landroid/graphics/Rect;
    if-eqz v2, :cond_6f

    float-to-int v6, v4

    float-to-int v8, v5

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 110
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_6a

    const-string v6, "ClipboardServiceEx"

    const-string v8, "Clear button was clicked..."

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move v6, v7

    .line 117
    :goto_6b
    return v6

    .line 96
    .end local v2    # "frame":Landroid/graphics/Rect;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 115
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .restart local v2    # "frame":Landroid/graphics/Rect;
    :cond_6f
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_7a

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Clear button was NOT clicked..."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_7a
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_6b
.end method
