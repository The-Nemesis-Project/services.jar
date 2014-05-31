.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFirst:Lcom/android/server/wm/StackBox;

.field mLastIsOutOfBounds:Z

.field mMinimizedRect:Landroid/graphics/Rect;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field final mStackBoxType:I

.field mStackBoxVisible:Z

.field mTmpRectFir:Landroid/graphics/Rect;

.field mTmpRectSec:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 123
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;
    .param p4, "type"    # I

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    .line 127
    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    .line 128
    :try_start_1e
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    .line 129
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_30

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 135
    iput p4, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    .line 137
    return-void

    .line 129
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private checkFixedBound(Landroid/graphics/Rect;)Z
    .registers 19
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 415
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 416
    .local v8, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 419
    iget v15, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v6, v15, 0x64

    .line 420
    .local v6, "FIXED_WIDTH":I
    iget v15, v8, Landroid/graphics/Point;->y:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v1, v15, 0x64

    .line 421
    .local v1, "FIXED_HEIGHT":I
    const/4 v3, 0x1

    .line 422
    .local v3, "FIXED_ON_LEFT":I
    const/4 v4, 0x2

    .line 423
    .local v4, "FIXED_ON_RIGHT":I
    const/4 v5, 0x4

    .line 424
    .local v5, "FIXED_ON_TOP":I
    const/16 v2, 0x8

    .line 425
    .local v2, "FIXED_ON_BOTTOM":I
    const/4 v9, 0x0

    .line 426
    .local v9, "fixedType":I
    const/4 v14, 0x0

    .line 427
    .local v14, "treeLevel":I
    const/4 v10, 0x0

    .line 428
    .local v10, "lvl1Fixed":Z
    const/4 v11, 0x0

    .line 430
    .local v11, "lvl2Fixed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v15, :cond_2d

    .line 431
    const/4 v7, 0x0

    .line 508
    :cond_2c
    :goto_2c
    return v7

    .line 433
    :cond_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 434
    .local v13, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 435
    .local v12, "parent":Lcom/android/server/wm/StackBox;
    :goto_39
    if-eqz v12, :cond_40

    .line 436
    add-int/lit8 v14, v14, 0x1

    .line 437
    iget-object v12, v12, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_39

    .line 440
    :cond_40
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 441
    const/4 v15, 0x1

    if-ne v14, v15, :cond_dc

    .line 442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_b2

    .line 443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_9d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_9d

    .line 444
    or-int/2addr v9, v5

    .line 489
    :cond_63
    :goto_63
    const/4 v7, 0x0

    .line 490
    .local v7, "change":Z
    and-int v15, v9, v3

    if-eqz v15, :cond_72

    .line 491
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->left:I

    .line 492
    const/4 v7, 0x1

    .line 494
    :cond_72
    and-int v15, v9, v4

    if-eqz v15, :cond_80

    .line 495
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->right:I

    .line 496
    const/4 v7, 0x1

    .line 498
    :cond_80
    and-int v15, v9, v5

    if-eqz v15, :cond_8e

    .line 499
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->top:I

    .line 500
    const/4 v7, 0x1

    .line 502
    :cond_8e
    and-int v15, v9, v2

    if-eqz v15, :cond_2c

    .line 503
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 504
    const/4 v7, 0x1

    goto :goto_2c

    .line 445
    .end local v7    # "change":Z
    :cond_9d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_63

    .line 446
    or-int/2addr v9, v2

    goto :goto_63

    .line 449
    :cond_b2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_c7

    .line 450
    or-int/2addr v9, v3

    goto :goto_63

    .line 451
    :cond_c7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_63

    .line 452
    or-int/2addr v9, v4

    goto :goto_63

    .line 455
    :cond_dc
    const/4 v15, 0x2

    if-ne v14, v15, :cond_63

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_14c

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_119

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_119

    .line 458
    or-int/2addr v9, v5

    .line 459
    const/4 v11, 0x1

    .line 464
    :cond_fc
    :goto_fc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_12f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_12f

    .line 465
    or-int/2addr v9, v3

    .line 466
    const/4 v10, 0x1

    goto/16 :goto_63

    .line 460
    :cond_119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_fc

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_fc

    .line 461
    or-int/2addr v9, v2

    .line 462
    const/4 v11, 0x1

    goto :goto_fc

    .line 467
    :cond_12f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_63

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_63

    .line 468
    or-int/2addr v9, v4

    .line 469
    const/4 v10, 0x1

    goto/16 :goto_63

    .line 472
    :cond_14c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_17e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_17e

    .line 473
    or-int/2addr v9, v3

    .line 474
    const/4 v11, 0x1

    .line 479
    :cond_161
    :goto_161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_194

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_194

    .line 480
    or-int/2addr v9, v5

    .line 481
    const/4 v10, 0x1

    goto/16 :goto_63

    .line 475
    :cond_17e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_161

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_161

    .line 476
    or-int/2addr v9, v4

    .line 477
    const/4 v11, 0x1

    goto :goto_161

    .line 482
    :cond_194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_63

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_63

    .line 483
    or-int/2addr v9, v2

    .line 484
    const/4 v10, 0x1

    goto/16 :goto_63
.end method

.method private getMinimizedRect()Landroid/graphics/Rect;
    .registers 5

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2a

    .line 900
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    .line 901
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v0

    .line 902
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 903
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 907
    .end local v0    # "size":I
    :goto_27
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    return-object v1

    .line 905
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_27
.end method


# virtual methods
.method animateDimLayers()Z
    .registers 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_b

    .line 599
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    .line 603
    :goto_a
    return v0

    .line 601
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    .line 602
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    .line 603
    goto :goto_a
.end method

.method buildWeight()V
    .registers 8

    .prologue
    .line 807
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 808
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    .line 835
    :cond_d
    return-void

    .line 810
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 811
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getFirstZone()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2e

    .line 813
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v2, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 814
    .local v2, "tempBox":Lcom/android/server/wm/StackBox;
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 815
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput-object v2, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 818
    .end local v2    # "tempBox":Lcom/android/server/wm/StackBox;
    :cond_2e
    const/4 v3, 0x0

    .line 819
    .local v3, "treeLevel":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 821
    .local v1, "parent":Lcom/android/server/wm/StackBox;
    :goto_31
    if-eqz v1, :cond_38

    .line 822
    add-int/lit8 v3, v3, 0x1

    .line 823
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_31

    .line 826
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    .line 827
    .end local v3    # "treeLevel":I
    .local v4, "treeLevel":I
    :goto_3b
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "treeLevel":I
    .restart local v3    # "treeLevel":I
    if-lez v4, :cond_d

    .line 828
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-le v5, v3, :cond_59

    .line 829
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 833
    :goto_55
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    .end local v3    # "treeLevel":I
    .restart local v4    # "treeLevel":I
    goto :goto_3b

    .line 831
    .end local v4    # "treeLevel":I
    .restart local v3    # "treeLevel":I
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_64

    const/high16 v5, 0x3f800000

    :goto_61
    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_55

    :cond_64
    const/4 v5, 0x0

    goto :goto_61
.end method

.method close()V
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_17

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 650
    :goto_16
    return-void

    .line 648
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    .line 649
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_16
.end method

.method contains(I)Z
    .registers 3
    .param p1, "stackBoxId"    # I

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 653
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    const-string v0, " mWeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 656
    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 657
    const-string v0, " mStackBoxType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 658
    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_9d

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 668
    :goto_9c
    return-void

    .line 665
    :cond_9d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_9c
.end method

.method gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V
    .registers 4
    .param p2, "stackbox"    # Lcom/android/server/wm/StackBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;",
            "Lcom/android/server/wm/StackBox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "outLeafStackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_8

    .line 790
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :goto_7
    return-void

    .line 792
    :cond_8
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1f

    .line 793
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    .line 798
    :goto_13
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_25

    .line 799
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    goto :goto_7

    .line 795
    :cond_1f
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 801
    :cond_25
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method getAppStacks(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "appStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_f

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    .line 949
    :goto_e
    return-void

    .line 947
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method getEnableSplitstackId(Lcom/samsung/android/multiwindow/MultiWindowStyle;)I
    .registers 11
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x1

    .line 708
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v7, :cond_6

    .line 760
    :cond_5
    :goto_5
    return v6

    .line 711
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 712
    .local v5, "sibling":Lcom/android/server/wm/StackBox;
    :goto_10
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v7, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 714
    .local v1, "grandparent":Lcom/android/server/wm/StackBox;
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v7

    packed-switch v7, :pswitch_data_be

    goto :goto_5

    .line 716
    :pswitch_1c
    if-eqz v1, :cond_28

    .line 717
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 720
    :cond_28
    :goto_28
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_39

    .line 721
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_5

    .line 711
    .end local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v5    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_31
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_10

    .line 717
    .restart local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v5    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_36
    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_28

    .line 722
    :cond_39
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_46

    .line 723
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_5

    .line 724
    :cond_46
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_5

    .line 725
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_5

    .line 730
    :pswitch_53
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 731
    .local v4, "relativeMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_6f

    .line 732
    if-eqz v1, :cond_5

    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_5

    .line 733
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_5

    .line 736
    :cond_6f
    const/4 v3, 0x0

    .line 737
    .local v3, "level2sibling":Lcom/android/server/wm/StackBox;
    if-nez v1, :cond_94

    .line 738
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_7b

    .line 739
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_5

    .line 741
    :cond_7b
    move-object v3, v5

    .line 750
    :goto_7c
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_ad

    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    .line 751
    .local v0, "firstChildVisible":Z
    :goto_8a
    if-eqz v0, :cond_af

    .line 752
    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_5

    .line 743
    .end local v0    # "firstChildVisible":Z
    :cond_94
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_a8

    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 744
    .local v2, "grandsibling":Lcom/android/server/wm/StackBox;
    :goto_9e
    iget-object v7, v2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_ab

    .line 745
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_5

    .line 743
    .end local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_a8
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_9e

    .line 747
    .restart local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_ab
    move-object v3, v2

    goto :goto_7c

    .line 750
    .end local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_ad
    const/4 v0, 0x0

    goto :goto_8a

    .line 753
    .restart local v0    # "firstChildVisible":Z
    :cond_af
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_5

    .line 754
    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_5

    .line 714
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_53
    .end packed-switch
.end method

.method public getRootStackBox()Lcom/android/server/wm/StackBox;
    .registers 3

    .prologue
    .line 963
    move-object v0, p0

    .line 964
    .local v0, "parent":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_8

    .line 965
    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 967
    :cond_8
    return-object v0
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .registers 6
    .param p1, "stackId"    # I

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_32

    .line 192
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_30

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 194
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 212
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_27
    :goto_27
    return-object v0

    .line 198
    .restart local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_28
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_27

    .line 202
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_30
    const/4 v0, 0x0

    goto :goto_27

    .line 208
    :cond_32
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 209
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_27

    .line 212
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_27
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;
    .registers 11
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "exceptMinimizedSize"    # Z

    .prologue
    const/4 v7, 0x3

    .line 846
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v5, :cond_10

    .line 847
    :cond_9
    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-eq v5, v7, :cond_10

    .line 848
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 893
    :goto_f
    return-object v5

    .line 852
    :cond_10
    if-nez p1, :cond_53

    .line 853
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 854
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 855
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 856
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "appToken":Lcom/android/server/wm/AppWindowToken;
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    .line 860
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local p1    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_4e
    if-nez p1, :cond_53

    .line 861
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 865
    :cond_53
    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v5, v7, :cond_78

    .line 866
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_65

    .line 867
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    goto :goto_f

    .line 869
    :cond_65
    if-nez p2, :cond_75

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 870
    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_f

    .line 872
    :cond_75
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 876
    :cond_78
    const/4 v2, 0x0

    .line 877
    .local v2, "stackBounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 878
    .local v4, "treeLevel":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 879
    .local v1, "parent":Lcom/android/server/wm/StackBox;
    :goto_7c
    if-eqz v1, :cond_83

    .line 880
    add-int/lit8 v4, v4, 0x1

    .line 881
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_7c

    .line 884
    :cond_83
    const/4 v1, 0x0

    .line 885
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    sub-int v0, v4, v5

    .line 886
    .local v0, "levelGap":I
    if-lez v0, :cond_9d

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_9d

    .line 887
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 888
    :goto_94
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_9d

    if-eqz v1, :cond_9d

    .line 889
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_94

    .line 893
    :cond_9d
    if-eqz v1, :cond_a3

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_f

    :cond_a3
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_f
.end method

.method getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_e

    .line 403
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne p1, v1, :cond_c

    move-object v0, p0

    .line 410
    :cond_b
    :goto_b
    return-object v0

    .line 404
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 407
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 408
    .local v0, "box":Lcom/android/server/wm/StackBox;
    if-nez v0, :cond_b

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 410
    goto :goto_b
.end method

.method getStackId()I
    .registers 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_9

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 302
    :goto_8
    return v1

    .line 298
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 299
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_14

    .line 300
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_8

    .line 302
    :cond_14
    const/4 v1, -0x1

    goto :goto_8
.end method

.method getStackIdRecv()Lcom/android/server/wm/Task;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 307
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_27

    .line 308
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_26

    .line 309
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 332
    :cond_26
    :goto_26
    return-object v5

    .line 314
    :cond_27
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 315
    .local v0, "task1":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 317
    .local v1, "task2":Lcom/android/server/wm/Task;
    const/4 v3, -0x1

    .line 318
    .local v3, "winLayer1":I
    const/4 v4, -0x1

    .line 319
    .local v4, "winLayer2":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 320
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_26

    .line 324
    if-eqz v0, :cond_49

    .line 325
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 327
    :cond_49
    if-eqz v1, :cond_4f

    .line 328
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 330
    :cond_4f
    if-le v4, v3, :cond_53

    move-object v5, v1

    .line 331
    goto :goto_26

    :cond_53
    move-object v5, v0

    .line 332
    goto :goto_26
.end method

.method public getStackOriginalBound(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 839
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hasIsolatedSplitStackBox()Z
    .registers 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_11

    .line 957
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    .line 959
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_10

    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method

.method final isApplicationStackBox()Z
    .registers 3

    .prologue
    .line 952
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isDimming()Z
    .registers 3

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_b

    .line 617
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    .line 621
    :goto_a
    return v0

    .line 619
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    .line 620
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    .line 621
    goto :goto_a
.end method

.method isFirstChild()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final isFloatingStackBox()Z
    .registers 2

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v0

    return v0
.end method

.method final isFloatingStackBox(Z)Z
    .registers 5
    .param p1, "bCheckTask"    # Z

    .prologue
    const/4 v0, 0x0

    .line 686
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 696
    :cond_6
    :goto_6
    return v0

    .line 690
    :cond_7
    if-eqz p1, :cond_16

    .line 691
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 696
    :cond_16
    const/4 v0, 0x1

    goto :goto_6
.end method

.method isFrontStackBox()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v2, "leafStackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    move-object v5, p0

    .line 766
    .local v5, "parent":Lcom/android/server/wm/StackBox;
    :goto_7
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v7, :cond_e

    .line 767
    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_7

    .line 770
    :cond_e
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v7

    if-eq v5, v7, :cond_18

    .line 785
    :cond_17
    :goto_17
    return v6

    .line 774
    :cond_18
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    .line 775
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 777
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_5b

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .line 778
    .local v4, "myZone":I
    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    .line 779
    .local v1, "leafStackBox":Lcom/android/server/wm/StackBox;
    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_5d

    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    .line 780
    .local v3, "leafZone":I
    :goto_52
    if-eqz v3, :cond_17

    and-int v7, v4, v3

    if-eqz v7, :cond_34

    if-ge v4, v3, :cond_34

    goto :goto_17

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    .end local v3    # "leafZone":I
    .end local v4    # "myZone":I
    :cond_5b
    move v4, v6

    .line 777
    goto :goto_30

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    .restart local v4    # "myZone":I
    :cond_5d
    move v3, v6

    .line 779
    goto :goto_52

    .line 785
    .end local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    :cond_5f
    const/4 v6, 0x1

    goto :goto_17
.end method

.method final isHiddenStackBox()Z
    .registers 2

    .prologue
    .line 704
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final isHomeStackBox()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 700
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method makeDirty()V
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    .line 145
    :cond_c
    return-void
.end method

.method remove()I
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 340
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 342
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v5, :cond_1c

    .line 345
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, p0, v4}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;Z)Z

    .line 347
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 348
    .local v0, "appStackBox":Lcom/android/server/wm/StackBox;
    if-eqz v0, :cond_1b

    .line 349
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v4

    .line 375
    .end local v0    # "appStackBox":Lcom/android/server/wm/StackBox;
    :cond_1b
    :goto_1b
    return v4

    .line 356
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v3, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 357
    .local v3, "sibling":Lcom/android/server/wm/StackBox;
    :goto_26
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 358
    .local v1, "grandparent":Lcom/android/server/wm/StackBox;
    iput-object v1, v3, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 359
    if-nez v1, :cond_4b

    .line 363
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v5, v5, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v5, v3, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 364
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)Z

    move-result v2

    .line 365
    .local v2, "isRemovedFromAppTopLevelStackBox":Z
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v3, v4, v2}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;ZZ)V

    .line 375
    .end local v2    # "isRemovedFromAppTopLevelStackBox":Z
    :goto_41
    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v4

    goto :goto_1b

    .line 356
    .end local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v3    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_46
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v3, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_26

    .line 369
    .restart local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v3    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_4b
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v4}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 370
    iput-object v3, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_41

    .line 372
    :cond_56
    iput-object v3, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_41
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 595
    :goto_9
    return-void

    .line 593
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_9
.end method

.method resetDimming()V
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 613
    :goto_9
    return-void

    .line 611
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_9
.end method

.method resize(IF)Z
    .registers 6
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v0, 0x1

    .line 379
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_1c

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 387
    .end local p2    # "weight":F
    :cond_19
    :goto_19
    return v0

    .line 380
    .restart local p2    # "weight":F
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19

    .line 384
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_19

    .line 385
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_2b

    .end local p2    # "weight":F
    :goto_28
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_19

    .restart local p2    # "weight":F
    :cond_2b
    const/high16 v2, 0x3f800000

    sub-float p2, v2, p2

    goto :goto_28
.end method

.method public resizeWeight()Z
    .registers 4

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, "level":I
    move-object v1, p0

    .line 914
    .local v1, "tmpStackBox":Lcom/android/server/wm/StackBox;
    :goto_2
    if-eqz v1, :cond_23

    .line 915
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_18

    .line 916
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 918
    :cond_18
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_21

    .line 919
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 922
    :cond_21
    const/4 v1, 0x0

    goto :goto_2

    .line 926
    :cond_23
    const/4 v0, 0x0

    .line 927
    move-object v1, p0

    .line 928
    :goto_25
    if-eqz v1, :cond_46

    .line 929
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_3b

    .line 930
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 932
    :cond_3b
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_44

    .line 933
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 936
    :cond_44
    const/4 v1, 0x0

    goto :goto_25

    .line 939
    :cond_46
    const/4 v2, 0x1

    return v2
.end method

.method reverseVerticalValue()V
    .registers 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_10

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 582
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_19

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 585
    :cond_19
    return-void

    .line 577
    :cond_1a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .registers 12
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "underStatusBar"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "change":Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_a

    .line 519
    const/4 v0, 0x1

    .line 520
    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    .line 522
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_6a

    .line 523
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    move v6, v7

    :goto_17
    or-int/2addr v0, v6

    .line 525
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isOutOfBounds()Z

    move-result v4

    .line 527
    .local v4, "isOutOfBounds":Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    if-ne v6, v4, :cond_2a

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, p2}, Lcom/android/server/wm/TaskStack;->needToChangeUnderStatusBarAllWindow(Z)Z

    move-result v6

    if-eqz v6, :cond_56

    :cond_2a
    move v6, v7

    :goto_2b
    or-int/2addr v0, v6

    .line 528
    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    .line 531
    if-eqz v0, :cond_53

    .line 535
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->hasIsolatedSplitStackBox()Z

    move-result v6

    if-nez v6, :cond_5e

    if-nez v4, :cond_5e

    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 537
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    .line 547
    :cond_49
    :goto_49
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 548
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 572
    .end local v4    # "isOutOfBounds":Z
    :cond_53
    :goto_53
    return v0

    :cond_54
    move v6, v8

    .line 523
    goto :goto_17

    .restart local v4    # "isOutOfBounds":Z
    :cond_56
    move v6, v8

    .line 527
    goto :goto_2b

    .line 539
    :cond_58
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_49

    .line 542
    :cond_5e
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_49

    .line 543
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_49

    .line 551
    .end local v4    # "isOutOfBounds":Z
    :cond_6a
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 552
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 553
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 554
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_af

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 556
    .local v3, "height":I
    int-to-float v6, v3

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 557
    .local v1, "firstHeight":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 558
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 559
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 560
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 561
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 562
    goto :goto_53

    .line 563
    .end local v1    # "firstHeight":I
    .end local v3    # "height":I
    :cond_af
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 564
    .local v5, "width":I
    int-to-float v6, v5

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 565
    .local v2, "firstWidth":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 566
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 567
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 568
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 569
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    goto/16 :goto_53
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .registers 13
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000

    .line 226
    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_1d

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_e

    move-object v2, v3

    .line 289
    :cond_d
    :goto_d
    return-object v2

    .line 232
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 233
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_d

    .line 236
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_d

    .line 240
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1d
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 243
    .restart local v2    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez p3, :cond_60

    .line 245
    const/4 p3, 0x2

    .line 250
    :cond_29
    :goto_29
    packed-switch p3, :pswitch_data_80

    .line 254
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 255
    const/4 v4, 0x2

    if-ne p3, v4, :cond_64

    .line 256
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 257
    move-object v0, v2

    .line 258
    .local v0, "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 280
    .local v1, "secondStack":Lcom/android/server/wm/TaskStack;
    :goto_37
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 281
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 284
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 285
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 286
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 288
    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_d

    .line 246
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_60
    if-ne p3, v7, :cond_29

    .line 248
    const/4 p3, 0x3

    goto :goto_29

    .line 260
    :cond_64
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 262
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .line 264
    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_37

    .line 267
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :pswitch_6c
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 268
    const/4 v4, 0x4

    if-ne p3, v4, :cond_77

    .line 269
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 270
    move-object v0, v2

    .line 271
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_37

    .line 273
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_77
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 275
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_37

    .line 250
    nop

    :pswitch_data_80
    .packed-switch 0x4
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_a

    .line 165
    const/4 v0, -0x1

    .line 174
    :cond_9
    :goto_9
    return v0

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_13

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_9

    .line 170
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    .line 171
    .local v0, "stackId":I
    if-gez v0, :cond_9

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_9
.end method

.method stopDimmingIfNeeded()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 631
    :goto_9
    return-void

    .line 629
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_9
.end method

.method switchBounds(I)Z
    .registers 4
    .param p1, "stackBoxId"    # I

    .prologue
    .line 392
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, p1, :cond_c

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 395
    .local v0, "tempBox":Lcom/android/server/wm/StackBox;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 396
    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 398
    .end local v0    # "tempBox":Lcom/android/server/wm/StackBox;
    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method switchUserStacks(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    .line 640
    :goto_9
    return-void

    .line 638
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_31

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_30
    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method
