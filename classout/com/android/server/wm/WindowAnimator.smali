.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:Z

.field mForceHidingByCover:Z

.field mInitialized:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 76
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 77
    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 79
    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 85
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 110
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 111
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 114
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .registers 28

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 764
    :cond_8
    :goto_8
    return-void

    .line 623
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 624
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v22, v0

    .line 626
    .local v22, "wasAnimating":Z
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 633
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 634
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 636
    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 639
    .local v18, "numDisplays":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_132

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 641
    .local v9, "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 643
    .local v7, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v20, v0

    .line 645
    .local v20, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v20, :cond_86

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v25

    if-eqz v25, :cond_86

    .line 646
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v25

    if-eqz v25, :cond_b9

    .line 647
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 657
    :cond_86
    :goto_86
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v24

    .line 660
    .local v24, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 661
    .local v3, "N":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_9d
    move/from16 v0, v17

    if-ge v0, v3, :cond_12e

    .line 662
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 661
    add-int/lit8 v17, v17, 0x1

    goto :goto_9d

    .line 649
    .end local v3    # "N":I
    .end local v17    # "j":I
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_b9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 650
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 651
    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_d0
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_d0} :catch_d1
    .catchall {:try_start_2f .. :try_end_d0} :catchall_1fb

    goto :goto_86

    .line 723
    .end local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9    # "displayId":I
    .end local v16    # "i":I
    .end local v18    # "numDisplays":I
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_d1
    move-exception v14

    .line 724
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_d2
    const-string v25, "WindowAnimator"

    const-string v26, "Unhandled exception in Window Manager"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_1fb

    .line 726
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 731
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :goto_e0
    const/4 v15, 0x0

    .line 732
    .local v15, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 733
    .restart local v18    # "numDisplays":I
    const/4 v10, 0x0

    .local v10, "displayNdx":I
    :goto_f2
    move/from16 v0, v18

    if-ge v10, v0, :cond_246

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 735
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    .line 736
    .local v19, "pendingChanges":I
    and-int/lit8 v25, v19, 0x4

    if-eqz v25, :cond_128

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x20

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 739
    :cond_128
    if-eqz v19, :cond_12b

    .line 740
    const/4 v15, 0x1

    .line 733
    :cond_12b
    add-int/lit8 v10, v10, 0x1

    goto :goto_f2

    .line 639
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v10    # "displayNdx":I
    .end local v15    # "hasPendingLayoutChanges":Z
    .end local v19    # "pendingChanges":I
    .restart local v3    # "N":I
    .restart local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v9    # "displayId":I
    .restart local v16    # "i":I
    .restart local v17    # "j":I
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_12e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3e

    .line 666
    .end local v3    # "N":I
    .end local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9    # "displayId":I
    .end local v17    # "j":I
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_132
    :try_start_132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 668
    const/16 v16, 0x0

    :goto_137
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_224

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 670
    .restart local v9    # "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 672
    .restart local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v20, v0

    .line 674
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v20, :cond_164

    .line 675
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 678
    :cond_164
    iget-object v5, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 679
    .local v5, "dimAnimator":Lcom/android/server/wm/DimLayer;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    .line 682
    .local v23, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-nez v23, :cond_1ba

    .line 683
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    .line 684
    .local v6, "dimLayer":I
    const/4 v4, 0x0

    .line 689
    .local v4, "dimAmount":F
    :goto_171
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v21

    .line 690
    .local v21, "targetAlpha":F
    cmpl-float v25, v21, v4

    if-eqz v25, :cond_203

    .line 691
    if-nez v23, :cond_1d3

    .line 692
    const-wide/16 v25, 0xc8

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 705
    :cond_182
    :goto_182
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v25

    if-eqz v25, :cond_197

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v25

    if-nez v25, :cond_210

    .line 708
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 715
    :cond_197
    :goto_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b6

    if-nez v9, :cond_1b6

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 668
    :cond_1b6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_137

    .line 686
    .end local v4    # "dimAmount":F
    .end local v6    # "dimLayer":I
    .end local v21    # "targetAlpha":F
    :cond_1ba
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v25, v0

    add-int/lit8 v6, v25, -0x1

    .line 687
    .restart local v6    # "dimLayer":I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v4    # "dimAmount":F
    goto :goto_171

    .line 694
    .restart local v21    # "targetAlpha":F
    :cond_1d3
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_200

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_200

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v12

    .line 697
    .local v12, "duration":J
    :goto_1ed
    cmpl-float v25, v21, v4

    if-lez v25, :cond_1f7

    .line 698
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/wm/WindowAnimator;->getDimBehindFadeDuration(J)J

    move-result-wide v12

    .line 700
    :cond_1f7
    invoke-virtual {v5, v6, v4, v12, v13}, Lcom/android/server/wm/DimLayer;->show(IFJ)V
    :try_end_1fa
    .catch Ljava/lang/RuntimeException; {:try_start_132 .. :try_end_1fa} :catch_d1
    .catchall {:try_start_132 .. :try_end_1fa} :catchall_1fb

    goto :goto_182

    .line 726
    .end local v4    # "dimAmount":F
    .end local v5    # "dimAnimator":Lcom/android/server/wm/DimLayer;
    .end local v6    # "dimLayer":I
    .end local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9    # "displayId":I
    .end local v12    # "duration":J
    .end local v16    # "i":I
    .end local v18    # "numDisplays":I
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v21    # "targetAlpha":F
    .end local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :catchall_1fb
    move-exception v25

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v25

    .line 694
    .restart local v4    # "dimAmount":F
    .restart local v5    # "dimAnimator":Lcom/android/server/wm/DimLayer;
    .restart local v6    # "dimLayer":I
    .restart local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v9    # "displayId":I
    .restart local v16    # "i":I
    .restart local v18    # "numDisplays":I
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v21    # "targetAlpha":F
    .restart local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_200
    const-wide/16 v12, 0xc8

    goto :goto_1ed

    .line 702
    :cond_203
    :try_start_203
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v25

    move/from16 v0, v25

    if-eq v0, v6, :cond_182

    .line 703
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_182

    .line 710
    :cond_210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto/16 :goto_197

    .line 720
    .end local v4    # "dimAmount":F
    .end local v5    # "dimAnimator":Lcom/android/server/wm/DimLayer;
    .end local v6    # "dimLayer":I
    .end local v7    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9    # "displayId":I
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v21    # "targetAlpha":F
    .end local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v25, v0

    if-eqz v25, :cond_241

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_241
    .catch Ljava/lang/RuntimeException; {:try_start_203 .. :try_end_241} :catch_d1
    .catchall {:try_start_203 .. :try_end_241} :catchall_1fb

    .line 726
    :cond_241
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_e0

    .line 744
    .end local v16    # "i":I
    .restart local v10    # "displayNdx":I
    .restart local v15    # "hasPendingLayoutChanges":Z
    :cond_246
    const/4 v11, 0x0

    .line 745
    .local v11, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    if-eqz v25, :cond_259

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v11

    .line 749
    :cond_259
    if-nez v15, :cond_25d

    if-eqz v11, :cond_266

    .line 750
    :cond_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 753
    :cond_266
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_279

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_8

    .line 755
    :cond_279
    if-eqz v22, :cond_8

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_8
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 789
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    .line 792
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    .line 795
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    .line 798
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    .line 801
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDimBehindFadeDuration(J)J
    .registers 7
    .param p1, "duration"    # J

    .prologue
    .line 606
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 607
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1120000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 609
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1e

    .line 610
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 614
    :cond_1d
    :goto_1d
    return-wide p1

    .line 611
    :cond_1e
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1d

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1d

    .line 612
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_1d
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 911
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_14

    .line 912
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    .line 913
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 915
    :cond_14
    return-object v0
.end method

.method private needHideWindowBySViewCover(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "keyguard"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "hide":Z
    if-eqz p2, :cond_e

    .line 440
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_d

    .line 441
    const/4 v0, 0x1

    .line 448
    :cond_d
    :goto_d
    return v0

    .line 444
    :cond_e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_d

    .line 445
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private performAnimationsLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 603
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .registers 10

    .prologue
    .line 559
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 560
    .local v3, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    .local v0, "NT":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v0, :cond_63

    .line 562
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 563
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 564
    .local v2, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v1, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 565
    .local v1, "allDrawn":Z
    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v6, :cond_31

    .line 566
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 567
    if-eqz v1, :cond_31

    .line 570
    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v6, :cond_48

    .line 571
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 572
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 578
    const/4 v6, 0x4

    const-string v7, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 593
    :cond_31
    :goto_31
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_45

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_45

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-nez v6, :cond_45

    .line 594
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 561
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 582
    :cond_48
    const/16 v6, 0x8

    const-string v7, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 587
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 588
    iget-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_31

    .line 597
    .end local v1    # "allDrawn":Z
    .end local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_63
    return-void
.end method

.method private updateAppWindowsLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 190
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 191
    .local v3, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    .local v0, "NAT":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_51

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 194
    .local v2, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_2e

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_2e

    move v5, v7

    .line 196
    .local v5, "wasAnimating":Z
    :goto_21
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 197
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 192
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .end local v5    # "wasAnimating":Z
    :cond_2e
    move v5, v8

    .line 194
    goto :goto_21

    .line 198
    .restart local v5    # "wasAnimating":Z
    :cond_30
    if-eqz v5, :cond_2b

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2b

    .line 207
    .end local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v5    # "wasAnimating":Z
    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 208
    .local v1, "NEAT":I
    const/4 v4, 0x0

    :goto_5a
    if-ge v4, v1, :cond_a3

    .line 209
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 210
    .restart local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_80

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_80

    move v5, v7

    .line 212
    .restart local v5    # "wasAnimating":Z
    :goto_73
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 213
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 208
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .end local v5    # "wasAnimating":Z
    :cond_80
    move v5, v8

    .line 210
    goto :goto_73

    .line 214
    .restart local v5    # "wasAnimating":Z
    :cond_82
    if-eqz v5, :cond_7d

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exiting appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_7d

    .line 222
    .end local v2    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v5    # "wasAnimating":Z
    :cond_a3
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .registers 21
    .param p1, "displayId"    # I

    .prologue
    .line 453
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v6

    .line 455
    .local v6, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    .line 456
    .local v13, "windows":Lcom/android/server/wm/WindowList;
    const/4 v11, 0x0

    .line 457
    .local v11, "windowAnimationBackground":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v12, 0x0

    .line 458
    .local v12, "windowAnimationBackgroundColor":I
    const/4 v5, 0x0

    .line 460
    .local v5, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "i":I
    :goto_17
    if-ltz v8, :cond_84

    .line 461
    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 462
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 463
    .local v10, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_28

    .line 460
    :cond_25
    :goto_25
    add-int/lit8 v8, v8, -0x1

    goto :goto_17

    .line 467
    :cond_28
    iget v7, v10, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 472
    .local v7, "flags":I
    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_57

    .line 473
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_52

    .line 474
    const/high16 v14, 0x100000

    and-int/2addr v14, v7

    if-eqz v14, :cond_40

    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_40

    .line 476
    move-object v5, v9

    .line 478
    :cond_40
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 479
    .local v4, "backgroundColor":I
    if-eqz v4, :cond_52

    .line 480
    if-eqz v11, :cond_50

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_52

    .line 482
    :cond_50
    move-object v11, v10

    .line 483
    move v12, v4

    .line 487
    .end local v4    # "backgroundColor":I
    :cond_52
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 493
    :cond_57
    iget-object v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 494
    .local v3, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v3, :cond_25

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_25

    iget-boolean v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_25

    .line 496
    const/high16 v14, 0x100000

    and-int/2addr v14, v7

    if-eqz v14, :cond_71

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_71

    .line 498
    move-object v5, v9

    .line 501
    :cond_71
    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 502
    .restart local v4    # "backgroundColor":I
    if-eqz v4, :cond_25

    .line 503
    if-eqz v11, :cond_81

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_25

    .line 505
    :cond_81
    move-object v11, v10

    .line 506
    move v12, v4

    goto :goto_25

    .line 512
    .end local v3    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v4    # "backgroundColor":I
    .end local v7    # "flags":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    .end local v10    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v5, :cond_98

    .line 516
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 517
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 520
    :cond_98
    if-eqz v12, :cond_109

    .line 524
    iget v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 525
    .local v2, "animLayer":I
    iget-object v9, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 526
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_b6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_b6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v14, v9, :cond_cb

    .line 528
    :cond_b6
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 529
    .local v1, "N":I
    const/4 v8, 0x0

    :goto_bb
    if-ge v8, v1, :cond_cb

    .line 530
    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 531
    .restart local v10    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v14, :cond_e4

    .line 532
    iget v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 539
    .end local v1    # "N":I
    .end local v10    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_cb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v14, :cond_ee

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v14, :cond_e7

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v14

    :goto_db
    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    const/high16 v15, 0x2000000

    if-ne v14, v15, :cond_ee

    .line 552
    .end local v2    # "animLayer":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :goto_e3
    return-void

    .line 529
    .restart local v1    # "N":I
    .restart local v2    # "animLayer":I
    .restart local v9    # "win":Lcom/android/server/wm/WindowState;
    .restart local v10    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_e4
    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    .line 539
    .end local v1    # "N":I
    .end local v10    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_e7
    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v14

    goto :goto_db

    .line 546
    :cond_ee
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v15, v2, -0x1

    shr-int/lit8 v16, v12, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x437f0000

    div-float v16, v16, v17

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_e3

    .line 550
    .end local v2    # "animLayer":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_109
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v14}, Lcom/android/server/wm/DimLayer;->hide()V

    goto :goto_e3
.end method

.method private updateWindowsLocked(I)V
    .registers 29
    .param p1, "displayId"    # I

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v26

    .line 228
    .local v26, "windows":Lcom/android/server/wm/WindowList;
    const/16 v21, 0x0

    .line 229
    .local v21, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v22, 0x0

    .line 231
    .local v22, "wallpaperInUnForceHiding":Z
    const/16 v18, 0x0

    .line 233
    .local v18, "keyguard":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    move/from16 v24, v0

    .line 234
    .local v24, "wasHidedBySViewCover":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    .line 237
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .local v16, "i":I
    :goto_2b
    if-ltz v16, :cond_246

    .line 238
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 239
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    .line 240
    .local v25, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 242
    .local v14, "flags":I
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b4

    .line 243
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v23, v0

    .line 244
    .local v23, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v19

    .line 251
    .local v19, "nowAnimating":Z
    if-eqz v23, :cond_76

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_76

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 253
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 261
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 262
    move-object/from16 v18, v3

    .line 263
    if-nez v23, :cond_a1

    if-eqz v19, :cond_a1

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 268
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 276
    :cond_a1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_b4

    if-eqz v19, :cond_af

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_b4

    .line 277
    :cond_af
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 377
    .end local v19    # "nowAnimating":Z
    .end local v23    # "wasAnimating":Z
    :cond_b4
    :goto_b4
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 378
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d2

    .line 379
    if-eqz v11, :cond_c3

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_d2

    .line 380
    :cond_c3
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 381
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 390
    :cond_d2
    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 391
    .local v10, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v10, :cond_fb

    iget-object v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_fb

    .line 392
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_ed

    .line 393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 394
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 396
    :cond_ed
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_fb

    .line 397
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 237
    :cond_fb
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_2b

    .line 300
    .end local v10    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v19    # "nowAnimating":Z
    .restart local v23    # "wasAnimating":Z
    :cond_ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHideBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 301
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_b4

    if-eqz v19, :cond_119

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_b4

    .line 302
    :cond_119
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    goto :goto_b4

    .line 305
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 306
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-nez v2, :cond_184

    const/4 v15, 0x1

    .line 312
    .local v15, "hideWhenLocked":Z
    :goto_135
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_186

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_186

    const/16 v17, 0x1

    .line 314
    .local v17, "isAttachedWindowToKeyguard":Z
    :goto_145
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_15c

    if-nez v17, :cond_15c

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_164

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_164

    :cond_15c
    if-eqz v17, :cond_189

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_189

    .line 316
    :cond_164
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 365
    .local v12, "changed":Z
    :cond_16a
    :goto_16a
    if-eqz v12, :cond_b4

    const/high16 v2, 0x100000

    and-int/2addr v2, v14

    if-eqz v2, :cond_b4

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 367
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto/16 :goto_b4

    .line 306
    .end local v12    # "changed":Z
    .end local v15    # "hideWhenLocked":Z
    .end local v17    # "isAttachedWindowToKeyguard":Z
    :cond_184
    const/4 v15, 0x0

    goto :goto_135

    .line 312
    .restart local v15    # "hideWhenLocked":Z
    :cond_186
    const/16 v17, 0x0

    goto :goto_145

    .line 321
    .restart local v17    # "isAttachedWindowToKeyguard":Z
    :cond_189
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    if-eqz v2, :cond_1a0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/server/wm/WindowAnimator;->needHideWindowBySViewCover(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 322
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .restart local v12    # "changed":Z
    goto :goto_16a

    .line 330
    .end local v12    # "changed":Z
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1fe

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_1ae
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_200

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_1bc
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 331
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 332
    .restart local v12    # "changed":Z
    if-eqz v12, :cond_1e2

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1e2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    .line 334
    .local v20, "option":I
    if-eqz v12, :cond_16a

    const/high16 v2, 0x800000

    and-int v2, v2, v20

    if-eqz v2, :cond_16a

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_16a

    .line 330
    .end local v12    # "changed":Z
    .end local v20    # "option":I
    :cond_1fe
    const/4 v5, 0x0

    goto :goto_1ae

    :cond_200
    const/4 v7, 0x0

    goto :goto_1bc

    .line 339
    :cond_202
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    .line 343
    .restart local v12    # "changed":Z
    if-eqz v12, :cond_16a

    .line 344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_22d

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 346
    if-nez v21, :cond_21f

    .line 347
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .restart local v21    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_21f
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/high16 v2, 0x100000

    and-int/2addr v2, v14

    if-eqz v2, :cond_22d

    .line 351
    const/16 v22, 0x1

    .line 354
    :cond_22d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_23d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_16a

    .line 358
    :cond_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_16a

    .line 402
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "changed":Z
    .end local v14    # "flags":I
    .end local v15    # "hideWhenLocked":Z
    .end local v17    # "isAttachedWindowToKeyguard":Z
    .end local v19    # "nowAnimating":Z
    .end local v23    # "wasAnimating":Z
    .end local v25    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_246
    if-eqz v18, :cond_285

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_285

    .line 404
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_285

    .line 405
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_261

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 406
    :cond_261
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    .line 407
    .local v8, "NC":I
    const/16 v16, 0x0

    :goto_26b
    move/from16 v0, v16

    if-ge v0, v8, :cond_285

    .line 408
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 409
    .local v13, "childWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v13, :cond_282

    invoke-virtual {v13}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 407
    :cond_282
    add-int/lit8 v16, v16, 0x1

    goto :goto_26b

    .line 416
    .end local v8    # "NC":I
    .end local v13    # "childWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_285
    if-eqz v21, :cond_2b2

    .line 417
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_28d
    if-ltz v16, :cond_2b2

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    .line 419
    .local v9, "a":Landroid/view/animation/Animation;
    if-eqz v9, :cond_2af

    .line 420
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowStateAnimator;

    .line 421
    .restart local v25    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 422
    const/4 v2, 0x1

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 417
    .end local v25    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2af
    add-int/lit8 v16, v16, -0x1

    goto :goto_28d

    .line 428
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_2b2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    move/from16 v0, v24

    if-eq v0, v2, :cond_2c9

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 430
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 433
    :cond_2c9
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 128
    if-nez p1, :cond_8

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 131
    :cond_8
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 810
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_dd

    .line 811
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 815
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 817
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 818
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5e
    if-ge v3, v0, :cond_7e

    .line 819
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 820
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 821
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 818
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 823
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7e
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v8, :cond_99

    .line 824
    if-nez p3, :cond_8c

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 825
    :cond_8c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 829
    :cond_99
    if-nez p3, :cond_a3

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 830
    :cond_a3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimAnimator:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 832
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimWinAnimator="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 835
    :cond_bd
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_d2

    .line 836
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 810
    :cond_ce
    :goto_ce
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    .line 838
    :cond_d2
    if-eqz p3, :cond_ce

    .line 839
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ce

    .line 843
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_dd
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 845
    if-eqz p3, :cond_105

    .line 846
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 848
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    :cond_105
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_123

    .line 854
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    :cond_123
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_134

    .line 859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 862
    :cond_134
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_14f

    .line 863
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 864
    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 866
    :cond_14f
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method getWallpaperAppAnimator()Lcom/android/server/wm/AppWindowAnimator;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_7
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .registers 14
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v11, 0x0

    .line 160
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 161
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 162
    .local v2, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 164
    .local v8, "wallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    if-ne v7, p1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-nez v7, :cond_4e

    .line 165
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 166
    .local v3, "numTokens":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_4e

    .line 167
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 168
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 169
    .local v4, "numWindows":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_29
    if-ltz v1, :cond_48

    .line 170
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 171
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 172
    .local v9, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_45

    .line 173
    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 174
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 175
    const/4 v10, 0x4

    invoke-virtual {p0, v11, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 169
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 183
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v9    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_48
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 186
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "numTokens":I
    .end local v4    # "numWindows":I
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    :cond_4e
    return-void
.end method

.method isDimmingLocked(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v3, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 777
    .local v1, "displayId":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    .line 779
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_1a

    .line 780
    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v3, p1, :cond_1a

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    .line 783
    :cond_1a
    return v2
.end method

.method removeDisplayLocked(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 135
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_2c

    .line 136
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_16

    .line 137
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 138
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 140
    :cond_16
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_21

    .line 141
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 142
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 144
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_2c

    .line 145
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 146
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 150
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 151
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .registers 9
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 878
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 879
    .local v1, "displays":Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 880
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_2a

    .line 881
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 882
    .local v0, "displayId":I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_27

    .line 883
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 888
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 891
    .end local v0    # "displayId":I
    :cond_2a
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "currentFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 769
    return-void
.end method

.method setDimWinAnimatorLocked(ILcom/android/server/wm/WindowStateAnimator;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 894
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 895
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez p2, :cond_e

    .line 896
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 907
    :cond_d
    :goto_d
    return-void

    .line 899
    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 901
    .local v1, "existingDimWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_d

    if-eqz v1, :cond_20

    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_20

    iget v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v3, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v3, :cond_d

    .line 904
    :cond_20
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_d
.end method

.method setPendingLayoutChanges(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 874
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 920
    return-void
.end method
