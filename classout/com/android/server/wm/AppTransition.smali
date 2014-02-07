.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mIsPairingRandomAnimation:Z

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 166
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransition;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 139
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 157
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 163
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 174
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 734
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    .line 736
    :pswitch_1b
    const-string v0, "APP_STATE_IDLE"

    goto :goto_1a

    .line 738
    :pswitch_1e
    const-string v0, "APP_STATE_READY"

    goto :goto_1a

    .line 740
    :pswitch_21
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_1a

    .line 742
    :pswitch_24
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_1a

    .line 734
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 687
    sparse-switch p0, :sswitch_data_2e

    .line 728
    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    .line 689
    :sswitch_6
    const-string v0, "TRANSIT_UNSET"

    goto :goto_5

    .line 692
    :sswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    .line 695
    :sswitch_c
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_5

    .line 698
    :sswitch_f
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_5

    .line 701
    :sswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_5

    .line 704
    :sswitch_15
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_5

    .line 707
    :sswitch_18
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_5

    .line 710
    :sswitch_1b
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_5

    .line 713
    :sswitch_1e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_5

    .line 716
    :sswitch_21
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_5

    .line 719
    :sswitch_24
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_5

    .line 722
    :sswitch_27
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_5

    .line 725
    :sswitch_2a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_5

    .line 687
    nop

    :sswitch_data_2e
    .sparse-switch
        -0x1 -> :sswitch_6
        0x0 -> :sswitch_9
        0x1006 -> :sswitch_f
        0x1008 -> :sswitch_15
        0x100a -> :sswitch_1b
        0x100d -> :sswitch_24
        0x100e -> :sswitch_27
        0x2000 -> :sswitch_c
        0x2007 -> :sswitch_12
        0x2009 -> :sswitch_18
        0x200b -> :sswitch_1e
        0x200c -> :sswitch_21
        0x200f -> :sswitch_2a
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 344
    const/high16 v1, 0x3f800000

    sub-float v0, p1, v1

    .line 345
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 346
    int-to-float v1, p0

    .line 348
    :goto_10
    return v1

    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_10
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 21
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 353
    const/4 v11, 0x0

    .line 354
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_76

    .line 356
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 357
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 358
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000

    const/high16 v8, 0x3f800000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 361
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 363
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 364
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 367
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 368
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 369
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 370
    move-object v11, v15

    .line 388
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    :goto_57
    sparse-switch p1, :sswitch_data_a0

    .line 394
    const-wide/16 v13, 0xfa

    .line 397
    .local v13, "duration":J
    :goto_5c
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 400
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 401
    return-object v11

    .line 371
    .end local v13    # "duration":J
    :cond_76
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_82

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_8f

    .line 377
    :cond_82
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 378
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_57

    .line 381
    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000

    const/high16 v8, 0x3f800000

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_57

    .line 391
    :sswitch_99
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    .line 392
    .restart local v13    # "duration":J
    goto :goto_5c

    .line 388
    nop

    :sswitch_data_a0
    .sparse-switch
        0x1006 -> :sswitch_99
        0x2007 -> :sswitch_99
    .end sparse-switch
.end method

.method private entryAnimation(III)Landroid/view/animation/Animation;
    .registers 25
    .param p1, "transAnimID"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    .line 827
    const/4 v2, 0x0

    .line 828
    .local v2, "DETACH_WALLPAPER":Z
    const/4 v3, 0x0

    .line 829
    .local v3, "a":Landroid/view/animation/Animation;
    const/4 v8, 0x1

    .line 830
    .local v8, "portrait":Z
    move/from16 v11, p2

    .line 831
    .local v11, "screenWidth":I
    move/from16 v10, p3

    .line 832
    .local v10, "screenHeight":I
    if-le v11, v10, :cond_a

    .line 833
    const/4 v8, 0x0

    .line 835
    :cond_a
    const-wide/16 v12, 0x0

    .line 836
    .local v12, "start":J
    const-wide/16 v6, 0x1f4

    .line 838
    .local v6, "end":J
    if-nez p1, :cond_32

    .line 839
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 840
    .local v14, "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 841
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 842
    const-wide/16 v15, 0x2

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 843
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 844
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    .line 845
    move-object v3, v14

    move-object v4, v3

    .line 1380
    .end local v3    # "a":Landroid/view/animation/Animation;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_31
    return-object v4

    .line 849
    .end local v4    # "a":Landroid/view/animation/Animation;
    .restart local v3    # "a":Landroid/view/animation/Animation;
    :cond_32
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_78

    .line 850
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 851
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/4 v15, 0x0

    const/16 v16, 0x0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8000000000000L

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 852
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 853
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 854
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 855
    const-wide/16 v15, 0x2

    div-long v15, v6, v15

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setStartOffset(J)V

    .line 856
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 857
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    .line 858
    move-object v3, v14

    .line 1379
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_73
    :goto_73
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v4, v3

    .line 1380
    .end local v3    # "a":Landroid/view/animation/Animation;
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_31

    .line 859
    .end local v4    # "a":Landroid/view/animation/Animation;
    .restart local v3    # "a":Landroid/view/animation/Animation;
    :cond_78
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_15f

    .line 861
    if-nez v8, :cond_ef

    .line 862
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 863
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 864
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 865
    .local v9, "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 866
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 867
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 870
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 871
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 872
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 873
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 874
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 875
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 876
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_73

    .line 878
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_ef
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 879
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 880
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 881
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 882
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 883
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 886
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 887
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 888
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 889
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 890
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 891
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 893
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 895
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_15f
    const/4 v15, 0x3

    move/from16 v0, p1

    if-ne v0, v15, :cond_23d

    .line 897
    if-nez v8, :cond_1d2

    .line 898
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 899
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 900
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 901
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 902
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 903
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 906
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 907
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 908
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 909
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 910
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 911
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 912
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 914
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_1d2
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 915
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 916
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 917
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 918
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 919
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 922
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 923
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 924
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 925
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 926
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 927
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 928
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 930
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_23d
    const/4 v15, 0x4

    move/from16 v0, p1

    if-ne v0, v15, :cond_307

    .line 932
    if-nez v8, :cond_2a6

    .line 933
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 934
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 935
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 936
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 937
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 938
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 940
    const/high16 v15, -0x3ccc0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 941
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 942
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 943
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 944
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 945
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 946
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 948
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_2a6
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 949
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 950
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 951
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 952
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 953
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 955
    const/high16 v15, -0x3ccc0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 956
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 957
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 958
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 959
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 960
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 961
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 963
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_307
    const/4 v15, 0x5

    move/from16 v0, p1

    if-ne v0, v15, :cond_467

    .line 965
    if-nez v8, :cond_3bb

    .line 967
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 968
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 969
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 970
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 971
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 972
    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 974
    const/high16 v15, -0x3d100000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 975
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 976
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 977
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 978
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 979
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 980
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 982
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 983
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, -0x4018000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 986
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 987
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 988
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 989
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 990
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 991
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 994
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_3bb
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 995
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 996
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 997
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 998
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 999
    const-wide/high16 v15, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1001
    const/high16 v15, -0x3d100000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1002
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1003
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1004
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1005
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1006
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1007
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1010
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, -0x4018000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 1013
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1014
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1015
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1016
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1017
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1018
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1020
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_467
    const/4 v15, 0x6

    move/from16 v0, p1

    if-ne v0, v15, :cond_5c7

    .line 1022
    if-nez v8, :cond_51b

    .line 1024
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1025
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1026
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1027
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1028
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1029
    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1031
    const/high16 v15, 0x42f00000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1032
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1033
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1034
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1035
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1036
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1037
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1039
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1040
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe8000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 1043
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1044
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1045
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1046
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1047
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1048
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1051
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_51b
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1052
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1053
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1054
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1055
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1056
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1058
    const/high16 v15, 0x42f00000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1059
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1060
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1061
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1062
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1063
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1064
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1067
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, 0x3fe8000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 1070
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1071
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1072
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1073
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1074
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1075
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1077
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_5c7
    const/4 v15, 0x7

    move/from16 v0, p1

    if-ne v0, v15, :cond_695

    .line 1078
    if-nez v8, :cond_632

    .line 1079
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1080
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1081
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1082
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1083
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1084
    const-wide/high16 v15, 0x3fe0000000000000L

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1086
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1087
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1088
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1089
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1090
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1091
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1092
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1094
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_632
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1095
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1096
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1097
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1098
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1099
    const-wide/high16 v15, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe0000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1101
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1102
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1103
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1104
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1105
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1106
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1107
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1109
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_695
    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_712

    .line 1110
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1111
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1119
    if-nez v8, :cond_6db

    .line 1122
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1125
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, -0x4010000000000000L

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 1130
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1131
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1134
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1135
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1136
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1138
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1143
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_6db
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1146
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/4 v15, 0x0

    const-wide/high16 v16, -0x4010000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    .line 1151
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1152
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1155
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1156
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1157
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1159
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1162
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_712
    const/16 v15, 0x9

    move/from16 v0, p1

    if-ne v0, v15, :cond_7b6

    .line 1163
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1164
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1173
    if-nez v8, :cond_76c

    .line 1176
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    .line 1179
    .local v5, "crtAnim":Landroid/view/animation/CustomRotation3D;
    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setFromMoveVector(FFF)V

    .line 1180
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    .line 1186
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    .line 1187
    const/high16 v15, 0x42900000

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    .line 1188
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    .line 1189
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    .line 1192
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    .line 1193
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1194
    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1196
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1201
    .end local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    :cond_76c
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    .line 1204
    .restart local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setFromMoveVector(FFF)V

    .line 1205
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    .line 1211
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    .line 1212
    const/high16 v15, -0x3d700000

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    .line 1213
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    .line 1214
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    .line 1217
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    .line 1218
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1219
    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1221
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1231
    .end local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    :cond_7b6
    const/16 v15, 0x2000

    move/from16 v0, p1

    if-ne v0, v15, :cond_89f

    .line 1232
    if-nez v8, :cond_82f

    .line 1233
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1234
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1235
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1236
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1237
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1238
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1240
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1241
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1242
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1243
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1244
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1245
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1246
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1250
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_82f
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1251
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1252
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1253
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1254
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1255
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1258
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1259
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1260
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1261
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1262
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1263
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1264
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1268
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_89f
    const/16 v15, 0x2001

    move/from16 v0, p1

    if-ne v0, v15, :cond_988

    .line 1269
    if-nez v8, :cond_918

    .line 1270
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1271
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1272
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1273
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1274
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1275
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1278
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1279
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1280
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1281
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1282
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1283
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1284
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1288
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_918
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1289
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1290
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1291
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1292
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1293
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1296
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1297
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1298
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1299
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1300
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1301
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1302
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1306
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_988
    const/16 v15, 0x2002

    move/from16 v0, p1

    if-ne v0, v15, :cond_a71

    .line 1307
    if-nez v8, :cond_a00

    .line 1308
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1309
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1310
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1311
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1312
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1313
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1315
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1316
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1317
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1318
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1319
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1320
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1321
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1325
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_a00
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1326
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1327
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1328
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1329
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1330
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1332
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1333
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1334
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1335
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1336
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1337
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1338
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1342
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_a71
    const/16 v15, 0x2003

    move/from16 v0, p1

    if-ne v0, v15, :cond_73

    .line 1343
    if-nez v8, :cond_ae9

    .line 1344
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1345
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1346
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1347
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1348
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1349
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1351
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1352
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1353
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1354
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1355
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1356
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1357
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    .line 1361
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_ae9
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1362
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1363
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1364
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1365
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1366
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1368
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1369
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1370
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1371
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1372
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1373
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1374
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73
.end method

.method private exitAnimation(III)Landroid/view/animation/Animation;
    .registers 25
    .param p1, "transAnimID"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    .line 1385
    const/4 v2, 0x0

    .line 1386
    .local v2, "DETACH_WALLPAPER":Z
    const/4 v3, 0x0

    .line 1387
    .local v3, "a":Landroid/view/animation/Animation;
    const/4 v8, 0x1

    .line 1388
    .local v8, "portrait":Z
    move/from16 v11, p2

    .line 1389
    .local v11, "screenWidth":I
    move/from16 v10, p3

    .line 1390
    .local v10, "screenHeight":I
    if-le v11, v10, :cond_a

    .line 1391
    const/4 v8, 0x0

    .line 1393
    :cond_a
    const-wide/16 v12, 0x0

    .line 1394
    .local v12, "start":J
    const-wide/16 v6, 0x1f4

    .line 1396
    .local v6, "end":J
    if-nez p1, :cond_33

    .line 1397
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1398
    .local v14, "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1399
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1400
    const-wide/16 v15, 0x2

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1401
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1402
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    .line 1403
    move-object v3, v14

    move-object v4, v3

    .line 1923
    .end local v3    # "a":Landroid/view/animation/Animation;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_32
    return-object v4

    .line 1407
    .end local v4    # "a":Landroid/view/animation/Animation;
    .restart local v3    # "a":Landroid/view/animation/Animation;
    :cond_33
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_77

    .line 1408
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1409
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/4 v15, 0x0

    const/16 v16, 0x0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8000000000000L

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1410
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1411
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1412
    const-wide/16 v15, 0x2

    div-long v15, v6, v15

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1413
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1414
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    .line 1415
    move-object v3, v14

    .line 1922
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_72
    :goto_72
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v4, v3

    .line 1923
    .end local v3    # "a":Landroid/view/animation/Animation;
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_32

    .line 1416
    .end local v4    # "a":Landroid/view/animation/Animation;
    .restart local v3    # "a":Landroid/view/animation/Animation;
    :cond_77
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_160

    .line 1418
    if-nez v8, :cond_ef

    .line 1419
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1420
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1421
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1422
    .local v9, "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1423
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1424
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1427
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1428
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1429
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1430
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1431
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1432
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1433
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_72

    .line 1435
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_ef
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1436
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1437
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1438
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1439
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1440
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1443
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1444
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1445
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1446
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1447
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1448
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1449
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1451
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_160
    const/4 v15, 0x3

    move/from16 v0, p1

    if-ne v0, v15, :cond_240

    .line 1453
    if-nez v8, :cond_1d4

    .line 1454
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1455
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1456
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1457
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1458
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1459
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1462
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1463
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1464
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1465
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1466
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1467
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1468
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1470
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_1d4
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1471
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1472
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1473
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1474
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1475
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1478
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1479
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1480
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1481
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1482
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1483
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1484
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1486
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_240
    const/4 v15, 0x4

    move/from16 v0, p1

    if-ne v0, v15, :cond_30c

    .line 1488
    if-nez v8, :cond_2aa

    .line 1489
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1490
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1491
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1492
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1493
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1494
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1496
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1497
    const/high16 v15, 0x43340000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1498
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1499
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1500
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1501
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1502
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1504
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_2aa
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1505
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1506
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1507
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1508
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1509
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1511
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1512
    const/high16 v15, 0x43340000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1513
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1514
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1515
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1516
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1517
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1519
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_30c
    const/4 v15, 0x5

    move/from16 v0, p1

    if-ne v0, v15, :cond_470

    .line 1521
    if-nez v8, :cond_3c2

    .line 1523
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1524
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1525
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1526
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1527
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1528
    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1530
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1531
    const/high16 v15, 0x42f00000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1532
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1533
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1534
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1535
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1536
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1538
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1539
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe8000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1542
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1543
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1544
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1545
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1546
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1547
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1550
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_3c2
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1551
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1552
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1553
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1554
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1555
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1557
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1558
    const/high16 v15, 0x42f00000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1559
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1560
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1561
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1562
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1563
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1565
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1566
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, 0x3fe8000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1569
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1570
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1571
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1572
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1573
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1574
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1576
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_470
    const/4 v15, 0x6

    move/from16 v0, p1

    if-ne v0, v15, :cond_5d4

    .line 1578
    if-nez v8, :cond_526

    .line 1580
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1581
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1582
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1583
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1584
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1585
    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1587
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1588
    const/high16 v15, -0x3d100000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1589
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1590
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1591
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1592
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1593
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1595
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1596
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, -0x4018000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1599
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1600
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1601
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1602
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1603
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1604
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1607
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_526
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1608
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1609
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1610
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1611
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1612
    const-wide/high16 v15, 0x3ff0000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1614
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1615
    const/high16 v15, -0x3d100000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1616
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1617
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1618
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1619
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1620
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1622
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1623
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, -0x4018000000000000L

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1626
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1627
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1628
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1629
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1630
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1631
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1633
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_5d4
    const/4 v15, 0x7

    move/from16 v0, p1

    if-ne v0, v15, :cond_6a4

    .line 1634
    if-nez v8, :cond_640

    .line 1635
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1636
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1637
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1638
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1639
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1640
    const-wide/high16 v15, 0x3fe0000000000000L

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1642
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1643
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1644
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1645
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1646
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1647
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1648
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1650
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_640
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1651
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1652
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1653
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1654
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1655
    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe0000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1657
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1658
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1659
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1660
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1661
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1662
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1663
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1665
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_6a4
    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_74a

    .line 1666
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1667
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1675
    if-nez v8, :cond_6ff

    .line 1678
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    .line 1681
    .local v5, "crtAnim":Landroid/view/animation/CustomRotation3D;
    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setToMoveVector(FFF)V

    .line 1682
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    .line 1688
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    .line 1689
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    .line 1690
    const/high16 v15, 0x42900000

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    .line 1691
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    .line 1694
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    .line 1695
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1696
    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1698
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1703
    .end local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    :cond_6ff
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    .line 1706
    .restart local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setToMoveVector(FFF)V

    .line 1707
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    .line 1713
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    .line 1714
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    .line 1715
    const/high16 v15, -0x3d700000

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    .line 1716
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    .line 1719
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    .line 1720
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1721
    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1723
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1726
    .end local v5    # "crtAnim":Landroid/view/animation/CustomRotation3D;
    :cond_74a
    const/16 v15, 0x9

    move/from16 v0, p1

    if-ne v0, v15, :cond_7c9

    .line 1733
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1734
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1736
    if-nez v8, :cond_791

    .line 1739
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1742
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const-wide/high16 v15, -0x4010000000000000L

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1747
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1748
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1751
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1752
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1753
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1755
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1760
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_791
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    .line 1763
    .restart local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    const/4 v15, 0x0

    const-wide/high16 v16, -0x4010000000000000L

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    .line 1768
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    .line 1769
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    .line 1772
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    .line 1773
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1774
    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    .line 1776
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1779
    .end local v14    # "trAnim1":Landroid/view/animation/TranslateAnimation3D;
    :cond_7c9
    const/16 v15, 0x2000

    move/from16 v0, p1

    if-ne v0, v15, :cond_8b4

    .line 1781
    if-nez v8, :cond_843

    .line 1782
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1783
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1784
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1785
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1786
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1787
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1789
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1790
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1791
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1792
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1793
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1794
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1795
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1798
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_843
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1799
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1800
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1801
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1802
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1803
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1805
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1806
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1807
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1808
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1809
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1810
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1811
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1814
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_8b4
    const/16 v15, 0x2001

    move/from16 v0, p1

    if-ne v0, v15, :cond_99f

    .line 1816
    if-nez v8, :cond_92e

    .line 1817
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1818
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1819
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1820
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1821
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1822
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1824
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1825
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1826
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1827
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1828
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1829
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1830
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1832
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_92e
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1833
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1834
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1835
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1836
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1837
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1839
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1840
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1841
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1842
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1843
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1844
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1845
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1848
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_99f
    const/16 v15, 0x2003

    move/from16 v0, p1

    if-ne v0, v15, :cond_a8a

    .line 1850
    if-nez v8, :cond_a18

    .line 1851
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1852
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1853
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1854
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1855
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1856
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1858
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1859
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1860
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1861
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1862
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1863
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1864
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1866
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_a18
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1867
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1868
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1869
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1870
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1871
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1873
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1874
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1875
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1876
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1877
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1878
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1879
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1882
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_a8a
    const/16 v15, 0x2002

    move/from16 v0, p1

    if-ne v0, v15, :cond_72

    .line 1884
    if-nez v8, :cond_b03

    .line 1885
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1886
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1887
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1888
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1889
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1890
    int-to-double v15, v10

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1892
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1893
    const/high16 v15, 0x42b40000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1894
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1895
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1896
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1897
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1898
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    .line 1900
    .end local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    :cond_b03
    new-instance v3, Landroid/view/animation/AnimationSet;

    .end local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1901
    .restart local v3    # "a":Landroid/view/animation/Animation;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1902
    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    .line 1903
    .restart local v9    # "rtAnim":Landroid/view/animation/RotateAnimation3D;
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    .line 1904
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    .line 1905
    int-to-double v15, v11

    const-wide/high16 v17, 0x4000000000000000L

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    .line 1907
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    .line 1908
    const/high16 v15, -0x3d4c0000

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    .line 1909
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    .line 1910
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1911
    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    .line 1912
    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    .line 1913
    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72
.end method

.method private getAnimationResourceID(Landroid/view/WindowManager$LayoutParams;I)I
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "anim":I
    if-ltz p2, :cond_10

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 817
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_10

    .line 818
    iget-object v2, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 822
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_10
    return v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 269
    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    .line 273
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 274
    .local v0, "packageName":Ljava/lang/String;
    :goto_c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 275
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_17

    .line 276
    const-string v0, "android"

    .line 280
    :cond_17
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 283
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :goto_23
    return-object v2

    .line 273
    :cond_24
    const-string v0, "android"

    goto :goto_c

    .line 283
    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 289
    if-eqz p1, :cond_18

    .line 290
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_b

    .line 291
    const-string p1, "android"

    .line 295
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 298
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 320
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 322
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 323
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 324
    move v0, p2

    .line 327
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 328
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 330
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 749
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_2a

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    .line 751
    :pswitch_1b
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_1a

    .line 753
    :pswitch_1e
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_1a

    .line 755
    :pswitch_21
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_1a

    .line 757
    :pswitch_24
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_1a

    .line 759
    :pswitch_27
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_1a

    .line 749
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 255
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 257
    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .registers 30
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "thumb"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 408
    .local v23, "thumbWidthI":I
    if-lez v23, :cond_a0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 409
    .local v22, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 410
    .local v21, "thumbHeightI":I
    if-lez v21, :cond_a4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 411
    .local v20, "thumbHeight":F
    :goto_1e
    if-eqz p3, :cond_d2

    .line 414
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_a8

    .line 415
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 416
    .local v6, "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 417
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000

    const/high16 v7, 0x3f800000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 420
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 423
    .local v16, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 427
    .local v19, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 429
    move-object/from16 v5, v19

    .line 482
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_7f
    sparse-switch p1, :sswitch_data_182

    .line 488
    const-wide/16 v17, 0xfa

    .line 491
    .local v17, "duration":J
    :goto_84
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 492
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 494
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 495
    return-object v5

    .line 408
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v17    # "duration":J
    .end local v20    # "thumbHeight":F
    .end local v21    # "thumbHeightI":I
    .end local v22    # "thumbWidth":F
    :cond_a0
    const/high16 v22, 0x3f800000

    goto/16 :goto_f

    .line 410
    .restart local v21    # "thumbHeightI":I
    .restart local v22    # "thumbWidth":F
    :cond_a4
    const/high16 v20, 0x3f800000

    goto/16 :goto_1e

    .line 431
    .restart local v20    # "thumbHeight":F
    :cond_a8
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 432
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 433
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f800000

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 436
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_7f

    .line 437
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_d2
    if-eqz p2, :cond_109

    .line 439
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_fe

    .line 440
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 441
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 442
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 445
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_7f

    .line 447
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_fe
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_7f

    .line 451
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_109
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_12a

    .line 452
    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_11f

    .line 456
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_7f

    .line 459
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_11f
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_7f

    .line 462
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_12a
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 463
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 464
    .restart local v8    # "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000

    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 468
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 470
    .restart local v16    # "alpha":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 471
    .restart local v19    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 472
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 473
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 474
    move-object/from16 v5, v19

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_7f

    .line 485
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    :sswitch_178
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    .line 486
    .restart local v17    # "duration":J
    goto/16 :goto_84

    .line 482
    nop

    :sswitch_data_182
    .sparse-switch
        0x1006 -> :sswitch_178
        0x2007 -> :sswitch_178
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    const-string v0, " mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_32

    .line 770
    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    :cond_32
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_c0

    .line 801
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_45

    .line 802
    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 805
    :cond_45
    return-void

    .line 774
    :pswitch_46
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 782
    :pswitch_6d
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 783
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 785
    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 787
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_37

    .line 792
    :pswitch_96
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 794
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 796
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 798
    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_37

    .line 772
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_6d
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 263
    return-void
.end method

.method getAppTransition()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 238
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 239
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 240
    return-void
.end method

.method goodToGo()V
    .registers 2

    .prologue
    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 250
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 251
    return-void
.end method

.method isReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 197
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionNone()Z
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 304
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 306
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 307
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 308
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 311
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 312
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 314
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    .line 501
    const/4 v11, 0x0

    .line 502
    .local v11, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    .line 505
    if-eqz p3, :cond_21

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 506
    .local v15, "nextAppTransition":I
    :goto_e
    if-lez v15, :cond_31

    const/16 v5, 0x2003

    if-gt v15, v5, :cond_31

    .line 507
    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wm/AppTransition;->entryAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    .line 618
    .end local v15    # "nextAppTransition":I
    :cond_20
    :goto_20
    return-object v11

    .line 505
    :cond_21
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_e

    .line 507
    .restart local v15    # "nextAppTransition":I
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wm/AppTransition;->exitAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    .line 510
    :cond_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_42

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_3b
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    :cond_42
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3b

    .line 519
    .end local v15    # "nextAppTransition":I
    :cond_47
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5d

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    .line 526
    :cond_5d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_89

    .line 528
    :cond_6b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_87

    const/4 v5, 0x1

    :goto_73
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 530
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    .line 528
    :cond_87
    const/4 v5, 0x0

    goto :goto_73

    .line 540
    :cond_89
    const/4 v12, 0x0

    .line 541
    .local v12, "animAttr":I
    sparse-switch p2, :sswitch_data_128

    .line 579
    :goto_8d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ANIMATION_3D_STYLE"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 581
    .local v13, "currentTransAnimID":I
    if-eqz v13, :cond_119

    .line 582
    const/16 v16, 0x0

    .line 583
    .local v16, "transAnimID":I
    const/4 v5, -0x1

    if-ne v13, v5, :cond_107

    .line 584
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    if-eqz v5, :cond_101

    .line 585
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    .line 586
    sget-object v5, Lcom/android/server/wm/AppTransition;->sRandom:Ljava/util/Random;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v16, v5, 0x1

    .line 594
    :goto_b8
    if-eqz p3, :cond_10a

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->entryAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    .line 597
    :goto_c6
    if-eqz v12, :cond_117

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/wm/AppTransition;->getAnimationResourceID(Landroid/view/WindowManager$LayoutParams;I)I

    move-result v14

    .line 598
    .local v14, "defaultAnimResId":I
    :goto_d0
    if-nez v14, :cond_20

    .line 600
    const/4 v11, 0x0

    goto/16 :goto_20

    .line 545
    .end local v13    # "currentTransAnimID":I
    .end local v14    # "defaultAnimResId":I
    .end local v16    # "transAnimID":I
    :sswitch_d5
    if-eqz p3, :cond_d9

    const/4 v12, 0x4

    .line 548
    :goto_d8
    goto :goto_8d

    .line 545
    :cond_d9
    const/4 v12, 0x5

    goto :goto_d8

    .line 552
    :sswitch_db
    if-eqz p3, :cond_df

    const/4 v12, 0x6

    .line 555
    :goto_de
    goto :goto_8d

    .line 552
    :cond_df
    const/4 v12, 0x7

    goto :goto_de

    .line 557
    :sswitch_e1
    if-eqz p3, :cond_e6

    const/16 v12, 0x10

    .line 560
    :goto_e5
    goto :goto_8d

    .line 557
    :cond_e6
    const/16 v12, 0x11

    goto :goto_e5

    .line 562
    :sswitch_e9
    if-eqz p3, :cond_ee

    const/16 v12, 0x12

    .line 565
    :goto_ed
    goto :goto_8d

    .line 562
    :cond_ee
    const/16 v12, 0x13

    goto :goto_ed

    .line 567
    :sswitch_f1
    if-eqz p3, :cond_f6

    const/16 v12, 0x14

    .line 570
    :goto_f5
    goto :goto_8d

    .line 567
    :cond_f6
    const/16 v12, 0x15

    goto :goto_f5

    .line 572
    :sswitch_f9
    if-eqz p3, :cond_fe

    const/16 v12, 0x16

    :goto_fd
    goto :goto_8d

    :cond_fe
    const/16 v12, 0x17

    goto :goto_fd

    .line 588
    .restart local v13    # "currentTransAnimID":I
    .restart local v16    # "transAnimID":I
    :cond_101
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    goto :goto_b8

    .line 591
    :cond_107
    move/from16 v16, v13

    goto :goto_b8

    .line 594
    :cond_10a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->exitAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_c6

    .line 597
    :cond_117
    const/4 v14, -0x1

    goto :goto_d0

    .line 603
    .end local v16    # "transAnimID":I
    :cond_119
    if-eqz v12, :cond_125

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v11

    :goto_123
    goto/16 :goto_20

    :cond_125
    const/4 v11, 0x0

    goto :goto_123

    .line 541
    nop

    :sswitch_data_128
    .sparse-switch
        0x1006 -> :sswitch_d5
        0x1008 -> :sswitch_d5
        0x100a -> :sswitch_d5
        0x100d -> :sswitch_e1
        0x100e -> :sswitch_f1
        0x2007 -> :sswitch_db
        0x2009 -> :sswitch_db
        0x200b -> :sswitch_db
        0x200c -> :sswitch_e9
        0x200f -> :sswitch_f9
    .end sparse-switch
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 631
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 632
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 634
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 635
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 636
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 637
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 641
    :goto_17
    return-void

    .line 639
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 646
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 647
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 648
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 649
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 650
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 651
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 652
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 654
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 656
    :cond_1b
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 7
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 661
    if-eqz p5, :cond_1c

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 664
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 665
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 666
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 667
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 668
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 669
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 673
    :goto_1b
    return-void

    .line 661
    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    .line 671
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1b
.end method

.method postAnimationCallback()V
    .registers 5

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_16

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 626
    :cond_16
    return-void
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 246
    :cond_9
    return-void
.end method

.method setAppTransition(I)V
    .registers 2
    .param p1, "transit"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 206
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 808
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 809
    return-void
.end method

.method setIdle()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 223
    return-void
.end method

.method setReady()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 215
    return-void
.end method

.method setTimeout()V
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
