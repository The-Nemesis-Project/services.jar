.class public Lcom/android/server/am/ToolkitTabDialog;
.super Landroid/app/Dialog;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;,
        Lcom/android/server/am/ToolkitTabDialog$GestureListener;,
        Lcom/android/server/am/ToolkitTabDialog$ArrowView;,
        Lcom/android/server/am/ToolkitTabDialog$GuideView;,
        Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;
    }
.end annotation


# instance fields
.field private mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

.field private mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

.field private mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

.field private mContentsRect:Landroid/graphics/Rect;

.field private mContentsRectForFloating:Landroid/graphics/Rect;

.field private mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mGuideContentsRect:Landroid/graphics/Rect;

.field private mGuideGravity:I

.field private mGuideMode:I

.field private mGuideUiStatus:I

.field private mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

.field private mMode:I

.field private mNaturalBarHeight:I

.field private mOldContentsRect:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollMode:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mStatusBarHeight:I

.field private mTabAppIconHeight:I

.field private mTabAppIconWidth:I

.field private mTabArrowWidth:I

.field private mTabContentsHeight:I

.field private mTabContentsWidth:I

.field private mTabHeight:I

.field private mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

.field private mTabItemHeight:I

.field private mTabItemWidth:I

.field private mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

.field private mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

.field private mTabWidth:I

.field private mUiStatus:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowPos:Landroid/graphics/Point;

.field private mbGuideInitX:I

.field private mbGuideInitY:I

.field private mbMovedWindow:Z

.field private mbSetContentsView:Z

.field private mbShowGuideWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 125
    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    .line 72
    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    .line 75
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    .line 76
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    .line 94
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    .line 95
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    .line 96
    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mNaturalBarHeight:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    .line 1024
    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitTabDialog$5;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    .line 126
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->init()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 131
    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    .line 72
    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    .line 75
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    .line 76
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    .line 94
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    .line 95
    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    .line 96
    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mNaturalBarHeight:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    .line 1024
    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitTabDialog$5;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    .line 132
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->init()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ToolkitTabDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitTabDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitTabDialog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->notifyOrientationChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ToolkitTabDialog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->scroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->notifyFocusTabChange(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabDialog;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    return-void
.end method

.method private calcScrollMode()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 682
    iget-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    .line 683
    .local v1, "oldScrollMode":Z
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_9c

    .line 702
    :goto_b
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eq v1, v2, :cond_40

    .line 703
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    if-eqz v2, :cond_40

    .line 704
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-nez v2, :cond_6f

    .line 705
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    .line 713
    :goto_21
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 717
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_ae

    .line 721
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_7a

    .line 722
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 738
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_40
    :goto_40
    return-void

    .line 686
    :sswitch_41
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getTabCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_55

    .line 687
    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    .line 689
    :cond_55
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    .line 694
    :sswitch_58
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getTabCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_6c

    .line 695
    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    .line 697
    :cond_6c
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    .line 709
    :cond_6f
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    goto :goto_21

    .line 724
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7a
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_40

    .line 729
    :sswitch_84
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_92

    .line 730
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_40

    .line 732
    :cond_92
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_40

    .line 683
    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_41
        0x5 -> :sswitch_41
        0x30 -> :sswitch_58
        0x50 -> :sswitch_58
    .end sparse-switch

    .line 717
    :sswitch_data_ae
    .sparse-switch
        0x30 -> :sswitch_84
        0x50 -> :sswitch_84
    .end sparse-switch
.end method

.method private changeBackground()V
    .registers 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 985
    .local v0, "resources":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    packed-switch v1, :pswitch_data_44

    .line 999
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->invalidate()V

    .line 1003
    return-void

    .line 987
    :pswitch_18
    const v1, 0x1080924

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 988
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    if-eqz v1, :cond_b

    .line 989
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    const v2, 0x108092c

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setBackgroundResource(I)V

    goto :goto_b

    .line 993
    :pswitch_2e
    const v1, 0x1080921

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 994
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    if-eqz v1, :cond_b

    .line 995
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    const v2, 0x1080928

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setBackgroundResource(I)V

    goto :goto_b

    .line 985
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2e
    .end packed-switch
.end method

.method private changeUiStatus(IZ)V
    .registers 8
    .param p1, "uiStatus"    # I
    .param p2, "bForce"    # Z

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 251
    :cond_4
    :goto_4
    return-void

    .line 155
    :cond_5
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    if-ne v1, p1, :cond_b

    if-eqz p2, :cond_4

    .line 158
    :cond_b
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    .line 159
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyUiStatus()V

    .line 161
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    packed-switch v1, :pswitch_data_148

    .line 249
    :goto_15
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyModeChange()V

    .line 250
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyContentsSizeChange()V

    goto :goto_4

    .line 163
    :pswitch_1c
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_33

    .line 164
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    :cond_33
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_152

    .line 184
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->dismiss()V

    goto :goto_15

    .line 168
    :sswitch_3c
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 169
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_38

    .line 172
    :sswitch_45
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 173
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_38

    .line 176
    :sswitch_52
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 177
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    .line 180
    :sswitch_5b
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 181
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    .line 188
    :pswitch_68
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_7f

    .line 189
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 191
    :cond_7f
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_164

    .line 211
    :goto_84
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    .line 212
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->show()V

    goto :goto_15

    .line 193
    :sswitch_94
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 194
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_84

    .line 197
    :sswitch_9d
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_84

    .line 201
    :sswitch_aa
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 202
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_84

    .line 205
    :sswitch_b3
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 206
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_84

    .line 217
    :pswitch_c0
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 219
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_e2

    .line 220
    :cond_d6
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    :cond_e2
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 226
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ToolkitTabDialog;->layout(ILandroid/graphics/Rect;)V

    .line 246
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_f2
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->show()V

    goto/16 :goto_15

    .line 228
    :cond_f7
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_118

    .line 229
    :cond_107
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    packed-switch v1, :pswitch_data_176

    .line 240
    :goto_113
    :pswitch_113
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    :cond_118
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    .line 244
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    goto :goto_f2

    .line 232
    :pswitch_125
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 233
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_113

    .line 236
    :pswitch_134
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 237
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_113

    .line 161
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_68
        :pswitch_c0
    .end packed-switch

    .line 166
    :sswitch_data_152
    .sparse-switch
        0x3 -> :sswitch_52
        0x5 -> :sswitch_5b
        0x30 -> :sswitch_3c
        0x50 -> :sswitch_45
    .end sparse-switch

    .line 191
    :sswitch_data_164
    .sparse-switch
        0x3 -> :sswitch_aa
        0x5 -> :sswitch_b3
        0x30 -> :sswitch_94
        0x50 -> :sswitch_9d
    .end sparse-switch

    .line 230
    :pswitch_data_176
    .packed-switch 0x3
        :pswitch_125
        :pswitch_113
        :pswitch_134
    .end packed-switch
.end method

.method private getContentsRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "gravity"    # I
    .param p2, "fullRect"    # Landroid/graphics/Rect;
    .param p3, "contentsRect"    # Landroid/graphics/Rect;

    .prologue
    .line 934
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 935
    sparse-switch p1, :sswitch_data_28

    .line 949
    :goto_6
    return-void

    .line 937
    :sswitch_7
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 940
    :sswitch_f
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_6

    .line 943
    :sswitch_17
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 946
    :sswitch_1f
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    goto :goto_6

    .line 935
    nop

    :sswitch_data_28
    .sparse-switch
        0x3 -> :sswitch_7
        0x5 -> :sswitch_f
        0x30 -> :sswitch_17
        0x50 -> :sswitch_1f
    .end sparse-switch
.end method

.method private getFixedFullRect(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 906
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 907
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    .line 908
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private hideGuideView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 952
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v0, :cond_12

    .line 953
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    if-eqz v0, :cond_e

    .line 954
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabDialog$GuideView;->dismiss()V

    .line 956
    :cond_e
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    .line 957
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 959
    :cond_12
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_12

    .line 436
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 439
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x308

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 442
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->reloadResource()V

    .line 444
    new-instance v1, Lcom/android/server/am/ToolkitTabWidget;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ToolkitTabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    .line 445
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget;->setOnToolkitTabItemListener(Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 447
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x8a2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 448
    const-string v1, "Toolkit/Tab"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ToolkitTabDialog$GestureListener;-><init>(Lcom/android/server/am/ToolkitTabDialog;Lcom/android/server/am/ToolkitTabDialog$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGestureDetector:Landroid/view/GestureDetector;

    .line 450
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration()V

    .line 451
    return-void
.end method

.method private isFloatingMode()Z
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private layout(I)V
    .registers 11
    .param p1, "gravity"    # I

    .prologue
    const/4 v1, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 613
    .local v8, "l":Landroid/view/WindowManager$LayoutParams;
    sparse-switch p1, :sswitch_data_a4

    .line 631
    :goto_c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 632
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 633
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 634
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 635
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    if-eqz v0, :cond_29

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    .line 639
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    iget v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    iget v6, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    iget-boolean v7, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ToolkitTabWidget;->changeConfiguration(IIIIIIZ)V

    .line 641
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 642
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    :cond_57
    return-void

    .line 615
    :sswitch_58
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 616
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    .line 619
    :sswitch_72
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 620
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    .line 623
    :sswitch_86
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_c

    .line 627
    :sswitch_92
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 628
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_c

    .line 613
    :sswitch_data_a4
    .sparse-switch
        0x3 -> :sswitch_72
        0x5 -> :sswitch_58
        0x30 -> :sswitch_86
        0x50 -> :sswitch_92
    .end sparse-switch
.end method

.method private layout(ILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "gravity"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 573
    .local v8, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    .local v9, "left":I
    const/4 v10, 0x0

    .line 574
    .local v10, "top":I
    packed-switch p1, :pswitch_data_88

    .line 581
    iget v9, p2, Landroid/graphics/Rect;->left:I

    .line 582
    iget v10, p2, Landroid/graphics/Rect;->top:I

    .line 585
    :goto_11
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 586
    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 588
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 589
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 590
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 591
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_79

    .line 594
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 595
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 600
    :goto_3c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    .line 602
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    iget v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    iget v6, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    iget-boolean v7, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ToolkitTabWidget;->changeConfiguration(IIIIIIZ)V

    .line 604
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    :cond_6f
    return-void

    .line 576
    :pswitch_70
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int v9, v0, v1

    .line 577
    iget v10, p2, Landroid/graphics/Rect;->top:I

    .line 578
    goto :goto_11

    .line 597
    :cond_79
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 598
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3c

    .line 574
    :pswitch_data_88
    .packed-switch 0x3
        :pswitch_70
    .end packed-switch
.end method

.method private makeViews(II)V
    .registers 12
    .param p1, "tabWidth"    # I
    .param p2, "tabHeight"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 454
    const/4 v1, -0x2

    .line 455
    .local v1, "arrowWidth":I
    const/4 v0, -0x2

    .line 456
    .local v0, "arrowHeight":I
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    if-eqz v2, :cond_c

    .line 526
    :goto_b
    return-void

    .line 458
    :cond_c
    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    .line 459
    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    .line 460
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_20

    .line 461
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 463
    :cond_20
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_de

    .line 467
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    .line 468
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setOrientation(I)V

    .line 469
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_3c

    .line 470
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    .line 472
    :cond_3c
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    .line 484
    :goto_3e
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080927

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2, v3, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 486
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 487
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$2;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {v2, p0, v3, v7, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    .line 496
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    .line 498
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    .line 500
    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    .line 501
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    .line 503
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-nez v2, :cond_a0

    .line 504
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    .line 505
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    .line 508
    :cond_a0
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$3;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$4;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ToolkitTabDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_b

    .line 476
    :sswitch_c2
    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    .line 477
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setOrientation(I)V

    .line 478
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_d9

    .line 479
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 481
    :cond_d9
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    goto/16 :goto_3e

    .line 463
    nop

    :sswitch_data_de
    .sparse-switch
        0x30 -> :sswitch_c2
        0x50 -> :sswitch_c2
    .end sparse-switch
.end method

.method private moveToolkitWindow()V
    .registers 3

    .prologue
    .line 741
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    if-eq v0, v1, :cond_d

    .line 742
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    .line 743
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyModeChange()V

    .line 745
    :cond_d
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    .line 746
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    if-nez v0, :cond_1c

    .line 747
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration(Landroid/graphics/Rect;)V

    .line 752
    :goto_1b
    return-void

    .line 749
    :cond_1c
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    .line 750
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_1b
.end method

.method private notifyContentsSizeChange()V
    .registers 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_d

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onContentsSizeChange(Landroid/graphics/Rect;)V

    .line 1009
    :cond_d
    return-void
.end method

.method private notifyFocusTabChange(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "bFocus"    # Z

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    .line 1013
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onFocusTabChange(Ljava/lang/Object;Z)V

    .line 1015
    :cond_9
    return-void
.end method

.method private notifyModeChange()V
    .registers 3

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->changeBackground()V

    .line 975
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_e

    .line 976
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onModeChange(I)V

    .line 979
    :cond_e
    return-void
.end method

.method private notifyOrientationChange(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    .line 963
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onOrientationChange(I)V

    .line 965
    :cond_9
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "itemStatus"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    .line 1019
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onTabItemChange(Ljava/lang/Object;I)V

    .line 1021
    :cond_9
    return-void
.end method

.method private notifyUiStatus()V
    .registers 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_b

    .line 969
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onUiStatusChange(I)V

    .line 971
    :cond_b
    return-void
.end method

.method private reloadResource()V
    .registers 4

    .prologue
    .line 654
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 655
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 656
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    .line 657
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    .line 659
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 661
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10500fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    .line 662
    const v2, 0x10500fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    .line 663
    const v2, 0x10500fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    .line 664
    const v2, 0x10500ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    .line 665
    const v2, 0x10500f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    .line 666
    const v2, 0x10500f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    .line 668
    const v2, 0x10500fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    .line 669
    const v2, 0x10500fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    .line 671
    const v2, 0x1080921

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 673
    const v2, 0x1050100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    .line 674
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mStatusBarHeight:I

    .line 675
    return-void
.end method

.method private scroll(I)V
    .registers 7
    .param p1, "scrollMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 532
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    .line 533
    packed-switch p1, :pswitch_data_82

    .line 569
    :cond_9
    :goto_9
    return-void

    .line 535
    :pswitch_a
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 536
    .local v1, "scrollY":I
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 537
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 542
    .end local v1    # "scrollY":I
    :pswitch_26
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 543
    .restart local v1    # "scrollY":I
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    if-le v1, v2, :cond_3c

    .line 544
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 546
    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 551
    .end local v1    # "scrollY":I
    :cond_44
    packed-switch p1, :pswitch_data_8a

    goto :goto_9

    .line 560
    :pswitch_48
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 561
    .local v0, "scrollX":I
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    if-le v0, v2, :cond_7a

    .line 562
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 553
    .end local v0    # "scrollX":I
    :pswitch_5e
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 554
    .restart local v0    # "scrollX":I
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getMeasuredWidth()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 555
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 564
    :cond_7a
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 533
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_26
        :pswitch_a
    .end packed-switch

    .line 551
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5e
    .end packed-switch
.end method

.method private setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 647
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    if-ne v0, p1, :cond_5

    .line 651
    :goto_4
    return-void

    .line 650
    :cond_5
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    goto :goto_4
.end method

.method private showGuideWindow(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 756
    .local v9, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 757
    .local v10, "y":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitX:I

    sub-int v3, v9, v11

    .line 758
    .local v3, "dx":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitY:I

    sub-int v4, v10, v11

    .line 759
    .local v4, "dy":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    div-int/lit8 v1, v11, 0xa

    .line 760
    .local v1, "deltaX":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    div-int/lit8 v2, v11, 0xa

    .line 762
    .local v2, "deltaY":I
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 763
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v1, :cond_2f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v2, :cond_2f

    .line 764
    const/4 v11, 0x0

    .line 863
    :goto_2e
    return v11

    .line 767
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 769
    .local v5, "guideRect":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    if-nez v11, :cond_40

    .line 770
    new-instance v11, Lcom/android/server/am/ToolkitTabDialog$GuideView;

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Lcom/android/server/am/ToolkitTabDialog$GuideView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    .line 772
    :cond_40
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 773
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 775
    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_a2

    .line 776
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 777
    .local v8, "width":I
    const/4 v11, 0x0

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 778
    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 785
    .end local v8    # "width":I
    :cond_53
    :goto_53
    iget v11, v5, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_b6

    .line 786
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 787
    .local v6, "height":I
    const/4 v11, 0x0

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 788
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 795
    .end local v6    # "height":I
    :cond_60
    :goto_60
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int v7, v11, v9

    .line 797
    .local v7, "screenX":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-lt v7, v11, :cond_c7

    .line 798
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 799
    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 800
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 801
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 802
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 803
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 804
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 805
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 862
    :goto_9b
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    invoke-virtual {v11, v5}, Lcom/android/server/am/ToolkitTabDialog$GuideView;->show(Landroid/graphics/Rect;)V

    .line 863
    const/4 v11, 0x1

    goto :goto_2e

    .line 779
    .end local v7    # "screenX":I
    :cond_a2
    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    if-le v11, v12, :cond_53

    .line 780
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 781
    .restart local v8    # "width":I
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    sub-int/2addr v11, v8

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 782
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v11, v5, Landroid/graphics/Rect;->right:I

    goto :goto_53

    .line 789
    .end local v8    # "width":I
    :cond_b6
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-le v11, v12, :cond_60

    .line 791
    const/4 v11, 0x0

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_60

    .line 806
    .restart local v7    # "screenX":I
    :cond_c7
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/lit8 v11, v11, 0x2

    if-ge v7, v11, :cond_f8

    .line 807
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 808
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 809
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 810
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 811
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 812
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 813
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 814
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_9b

    .line 817
    :cond_f8
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12e

    .line 819
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    div-int/lit8 v11, v11, 0x2

    if-le v7, v11, :cond_118

    .line 820
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 821
    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 822
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 823
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 824
    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto :goto_9b

    .line 826
    :cond_118
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 827
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 828
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 829
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 830
    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    .line 834
    :cond_12e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 835
    .local v0, "checkRect":Landroid/graphics/Rect;
    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 836
    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v1

    iput v11, v0, Landroid/graphics/Rect;->right:I

    .line 837
    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v2

    iput v11, v0, Landroid/graphics/Rect;->top:I

    .line 838
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v2

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 840
    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    if-lt v11, v12, :cond_169

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-lt v11, v12, :cond_169

    .line 842
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 843
    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 844
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 845
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 846
    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    .line 847
    :cond_169
    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-gtz v11, :cond_189

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-lt v11, v12, :cond_189

    .line 849
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 850
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 851
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 852
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 853
    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    .line 855
    :cond_189
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 856
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    .line 857
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-direct {p0, v11, v5, v12}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_9b
.end method


# virtual methods
.method public addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Z
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "permanent"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ToolkitTabWidget;->newTabSpec(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->addTab(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public changeConfiguration()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 306
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 307
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-ne v1, v0, :cond_12

    .line 350
    :goto_11
    return-void

    .line 310
    :cond_12
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->reloadResource()V

    .line 311
    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    .line 313
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-ne v1, v3, :cond_59

    .line 314
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    if-nez v1, :cond_21

    .line 315
    iput v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    .line 317
    :cond_21
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_84

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The old orientation is LANDSCAPE. But gravity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :sswitch_41
    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    .line 345
    :goto_46
    :sswitch_46
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    .line 348
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    .line 349
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    goto :goto_11

    .line 329
    :cond_59
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_96

    .line 341
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The old orientation is PORTRAIT. But gravity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :sswitch_79
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    goto :goto_46

    .line 338
    :sswitch_7e
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    goto :goto_46

    .line 317
    nop

    :sswitch_data_84
    .sparse-switch
        0x3 -> :sswitch_41
        0x5 -> :sswitch_41
        0x30 -> :sswitch_46
        0x50 -> :sswitch_46
    .end sparse-switch

    .line 329
    :sswitch_data_96
    .sparse-switch
        0x3 -> :sswitch_46
        0x5 -> :sswitch_46
        0x30 -> :sswitch_79
        0x50 -> :sswitch_7e
    .end sparse-switch
.end method

.method public changeConfiguration(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "contentsRect"    # Landroid/graphics/Rect;

    .prologue
    .line 284
    if-eqz p1, :cond_1d

    .line 285
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 292
    :goto_7
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 294
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 295
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ToolkitTabDialog;->layout(ILandroid/graphics/Rect;)V

    .line 300
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_16
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyContentsSizeChange()V

    .line 302
    return-void

    .line 287
    :cond_1d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    .line 288
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    .line 289
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto :goto_7

    .line 298
    :cond_31
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    goto :goto_16
.end method

.method public changeUiStatus(I)V
    .registers 3
    .param p1, "uiStatus"    # I

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    .line 149
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    .line 355
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 384
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 385
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 389
    const/4 v0, 0x1

    .line 390
    .local v0, "bRunGestureDetector":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    .line 424
    :cond_a
    :goto_a
    if-eqz v0, :cond_18

    .line 425
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 426
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 429
    :cond_18
    return v1

    .line 392
    :pswitch_19
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-eq v2, v1, :cond_a

    .line 395
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    .line 396
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    .line 397
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    .line 398
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitX:I

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitY:I

    goto :goto_a

    .line 404
    :pswitch_38
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    if-eqz v2, :cond_47

    .line 405
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->moveToolkitWindow()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    .line 407
    const/4 v0, 0x0

    .line 409
    :cond_47
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    .line 410
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    goto :goto_a

    .line 414
    :pswitch_4c
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v2, :cond_a

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->showGuideWindow(Landroid/view/MotionEvent;)Z

    goto :goto_a

    .line 420
    :pswitch_54
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    goto :goto_a

    .line 390
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_19
        :pswitch_38
        :pswitch_4c
        :pswitch_54
    .end packed-switch
.end method

.method public getContentsRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 268
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 269
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    .line 276
    :goto_7
    return-object v0

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    goto :goto_7
.end method

.method getFixedContentsRect(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gravity"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 867
    sparse-switch p1, :sswitch_data_62

    .line 903
    :goto_4
    return-void

    .line 869
    :sswitch_5
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 870
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 871
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 872
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 876
    :sswitch_17
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 877
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 878
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 879
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 883
    :sswitch_2e
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 884
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 885
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 886
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 890
    :sswitch_3b
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 891
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 892
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 893
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 897
    :sswitch_4d
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 898
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 899
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 900
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 867
    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_4d
        0x3 -> :sswitch_5
        0x5 -> :sswitch_17
        0x30 -> :sswitch_2e
        0x50 -> :sswitch_3b
    .end sparse-switch
.end method

.method public getFullRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "gravity"    # I
    .param p2, "contentsRect"    # Landroid/graphics/Rect;

    .prologue
    .line 912
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 914
    .local v0, "fullRect":Landroid/graphics/Rect;
    sparse-switch p1, :sswitch_data_44

    .line 928
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The gravity is not defined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :sswitch_23
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 930
    :goto_2a
    return-object v0

    .line 919
    :sswitch_2b
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2a

    .line 922
    :sswitch_33
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2a

    .line 925
    :sswitch_3b
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    .line 914
    nop

    :sswitch_data_44
    .sparse-switch
        0x3 -> :sswitch_23
        0x5 -> :sswitch_2b
        0x30 -> :sswitch_33
        0x50 -> :sswitch_3b
    .end sparse-switch
.end method

.method public removeTab(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabWidget;->removeTab(Ljava/lang/Object;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public setFocusItem(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 258
    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabWidget;->setFocusItem(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 263
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 265
    :cond_1d
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    .line 359
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    .line 255
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_12

    .line 364
    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$1;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ToolkitTabDialog$1;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 375
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 377
    :cond_12
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 378
    return-void
.end method
