.class Lcom/android/server/smartclip/GestureEffectManager;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# static fields
.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "GestureEffectManager"


# instance fields
.field private DEBUG:Z

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private mDisplay:Landroid/view/Display;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsShowingGestureEffect:Z

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

.field mSmartClipView:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 2563
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    iput v3, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 2567
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 2568
    iput v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 2569
    iput v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 2572
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 2573
    iput v3, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 2574
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 2581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    .line 2583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2584
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    .line 2586
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 2588
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 2590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 2591
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 2593
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2594
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mInstrumentation:Landroid/app/Instrumentation;

    .line 2596
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    .line 2597
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenLongPress:Ljava/lang/Runnable;

    .line 2598
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 2599
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/GestureEffectManager;)Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # I

    .prologue
    .line 2563
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/GestureEffectManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/smartclip/GestureEffectManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # Z

    .prologue
    .line 2563
    iput-boolean p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/GestureEffectManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    return v0
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2974
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 2975
    const-string v0, "GestureEffectManager"

    const-string v1, "send interrupt to previous mSPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_17
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2979
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/GestureEffectManager$2;-><init>(Lcom/android/server/smartclip/GestureEffectManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 2999
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3000
    return-void
.end method


# virtual methods
.method public checkDirectionGesture(FFFFLjava/util/ArrayList;)Z
    .registers 37
    .param p1, "mStartPointX"    # F
    .param p2, "mStartPointY"    # F
    .param p3, "mEndPointX"    # F
    .param p4, "mEndPointY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2654
    .local p5, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/smartclip/SmartClipView$PointerState;>;"
    const-string v25, "GestureEffectManager"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const/4 v5, 0x0

    .line 2656
    .local v5, "distance":I
    const/16 v21, 0x0

    .line 2657
    .local v21, "vertexX":I
    const/16 v22, 0x0

    .line 2658
    .local v22, "vertexY":I
    const/4 v6, 0x0

    .line 2659
    .local v6, "distanceMax":I
    const/4 v7, 0x0

    .line 2660
    .local v7, "distanceStartAndEnd":I
    const/4 v12, 0x0

    .line 2661
    .local v12, "minX":I
    const/4 v13, 0x0

    .line 2662
    .local v13, "minY":I
    const/4 v10, 0x0

    .line 2663
    .local v10, "maxX":I
    const/4 v11, 0x0

    .line 2664
    .local v11, "maxY":I
    const/16 v16, 0x0

    .line 2665
    .local v16, "result1":F
    const/16 v17, 0x0

    .line 2666
    .local v17, "result2":F
    const/16 v18, 0x0

    .line 2667
    .local v18, "slope":F
    const/4 v9, 0x0

    .line 2670
    .local v9, "interceptY":F
    sub-float v25, p3, p1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2671
    .local v3, "Xdistance":I
    sub-float v25, p4, p2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2677
    .local v4, "Ydistance":I
    sub-float v25, p3, p1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    sub-float v26, p4, p2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2679
    cmpl-float v25, p1, p3

    if-eqz v25, :cond_77

    cmpl-float v25, p2, p4

    if-nez v25, :cond_e0

    .line 2680
    :cond_77
    const/16 v18, 0x0

    .line 2684
    :goto_79
    mul-float v25, p1, v18

    sub-float v9, p2, v25

    .line 2688
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2689
    .local v19, "totalPointerCount":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_82
    move/from16 v0, v19

    if-ge v14, v0, :cond_ea

    .line 2690
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2691
    .local v15, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual {v15}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceCount()I

    move-result v20

    .line 2692
    .local v20, "traceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_93
    move/from16 v0, v20

    if-ge v8, v0, :cond_e7

    .line 2693
    invoke-virtual {v15, v8}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceX(I)F

    move-result v23

    .line 2694
    .local v23, "x":F
    invoke-virtual {v15, v8}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceY(I)F

    move-result v24

    .line 2697
    .local v24, "y":F
    mul-float v25, v18, v23

    const/high16 v26, -0x40800000

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2698
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010000000000000L

    const-wide/high16 v29, 0x4000000000000000L

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2701
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2703
    if-ge v6, v5, :cond_dd

    .line 2704
    move v6, v5

    .line 2705
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2706
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2692
    :cond_dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 2682
    .end local v8    # "i":I
    .end local v14    # "p":I
    .end local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v19    # "totalPointerCount":I
    .end local v20    # "traceCount":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_e0
    sub-float v25, p4, p2

    sub-float v26, p3, p1

    div-float v18, v25, v26

    goto :goto_79

    .line 2689
    .restart local v8    # "i":I
    .restart local v14    # "p":I
    .restart local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .restart local v19    # "totalPointerCount":I
    .restart local v20    # "traceCount":I
    :cond_e7
    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 2715
    .end local v8    # "i":I
    .end local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v20    # "traceCount":I
    :cond_ea
    cmpl-float v25, p1, p3

    if-ltz v25, :cond_138

    .line 2716
    move/from16 v0, p1

    float-to-int v10, v0

    .line 2717
    move/from16 v0, p3

    float-to-int v12, v0

    .line 2722
    :goto_f4
    cmpl-float v25, p2, p4

    if-ltz v25, :cond_13f

    .line 2723
    move/from16 v0, p2

    float-to-int v11, v0

    .line 2724
    move/from16 v0, p4

    float-to-int v13, v0

    .line 2730
    :goto_fe
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_135

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_135

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_135

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_135

    .line 2732
    const/high16 v25, 0x3f800000

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_1ad

    const/high16 v25, -0x40800000

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_1ad

    .line 2733
    move/from16 v0, v21

    if-gt v10, v0, :cond_146

    .line 2734
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_135

    .line 2735
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Right"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_135
    :goto_135
    const/16 v25, 0x0

    :goto_137
    return v25

    .line 2719
    :cond_138
    move/from16 v0, p3

    float-to-int v10, v0

    .line 2720
    move/from16 v0, p1

    float-to-int v12, v0

    goto :goto_f4

    .line 2726
    :cond_13f
    move/from16 v0, p4

    float-to-int v11, v0

    .line 2727
    move/from16 v0, p2

    float-to-int v13, v0

    goto :goto_fe

    .line 2737
    :cond_146
    move/from16 v0, v21

    if-le v12, v0, :cond_16f

    .line 2738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_159

    .line 2739
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Left"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_159
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_16c

    .line 2742
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2743
    :cond_16c
    const/16 v25, 0x1

    goto :goto_137

    .line 2745
    :cond_16f
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, p2, v25

    if-ltz v25, :cond_19d

    .line 2746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_187

    .line 2747
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Top"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_187
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_19a

    .line 2750
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2751
    :cond_19a
    const/16 v25, 0x1

    goto :goto_137

    .line 2753
    :cond_19d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_135

    .line 2754
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Down"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 2759
    :cond_1ad
    move/from16 v0, v22

    if-gt v11, v0, :cond_1c2

    .line 2760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_135

    .line 2761
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Down"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135

    .line 2763
    :cond_1c2
    move/from16 v0, v22

    if-le v13, v0, :cond_1ec

    .line 2764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d5

    .line 2765
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Top"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_1d5
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_1e8

    .line 2768
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2769
    :cond_1e8
    const/16 v25, 0x1

    goto/16 :goto_137

    .line 2771
    :cond_1ec
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, p1, v25

    if-ltz v25, :cond_21b

    .line 2772
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_204

    .line 2773
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Left"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_204
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_217

    .line 2776
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2777
    :cond_217
    const/16 v25, 0x1

    goto/16 :goto_137

    .line 2779
    :cond_21b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_135

    .line 2780
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Right"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135
.end method

.method public checkDownGesture(IIII)V
    .registers 15
    .param p1, "mStartPointX"    # I
    .param p2, "mStartPointY"    # I
    .param p3, "mEndPointX"    # I
    .param p4, "mEndPointY"    # I

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x280

    const/16 v7, 0x1f4

    const/16 v6, 0x12c

    const/4 v5, 0x1

    .line 2614
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_14

    .line 2615
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_14
    const/4 v1, 0x0

    .line 2618
    .local v1, "distanceY":I
    const/4 v0, 0x0

    .line 2620
    .local v0, "distanceX":I
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_3c

    .line 2621
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : mStartPointX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartPointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_3c
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_62

    .line 2623
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : mEndPointX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEndPointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_62
    if-le p2, v8, :cond_b7

    const/16 v2, 0x500

    if-gt p2, v2, :cond_b7

    if-le p4, v8, :cond_b7

    const/16 v2, 0x500

    if-gt p4, v2, :cond_b7

    .line 2630
    sub-int v1, p4, p2

    .line 2631
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2632
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_9c

    .line 2633
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : distanceX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distanceY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_9c
    const/16 v2, 0xc8

    if-le v1, v2, :cond_b7

    .line 2636
    if-lez p1, :cond_b8

    if-gt p1, v6, :cond_b8

    if-lez p3, :cond_b8

    if-gt p3, v6, :cond_b8

    .line 2638
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_b3

    .line 2639
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture : menu start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_b3
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2651
    :cond_b7
    :goto_b7
    return-void

    .line 2641
    :cond_b8
    if-le p1, v7, :cond_b7

    if-gt p1, v9, :cond_b7

    if-le p3, v7, :cond_b7

    if-gt p3, v9, :cond_b7

    .line 2645
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_cb

    .line 2646
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture : back start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_cb
    invoke-virtual {p0, v5, v5}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    goto :goto_b7
.end method

.method public init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Lcom/android/server/smartclip/SmartClipView$SPenVibrator;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "vibrator"    # Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    .param p4, "penLongPress"    # Ljava/lang/Runnable;
    .param p5, "penDoubleTap"    # Ljava/lang/Runnable;
    .param p6, "gesturePad"    # Ljava/lang/Runnable;

    .prologue
    .line 2602
    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2603
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    .line 2605
    iput-object p3, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 2606
    iput-object p2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    .line 2608
    iput-object p4, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenLongPress:Ljava/lang/Runnable;

    .line 2609
    iput-object p5, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 2610
    iput-object p6, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    .line 2611
    return-void
.end method

.method public isShowingGestureEffect()Z
    .registers 2

    .prologue
    .line 2949
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 6
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    const/4 v3, -0x2

    .line 2959
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2960
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2961
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2963
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2964
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2966
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 2967
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2968
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2969
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/android/server/smartclip/SmartClipView;->addView(Landroid/view/View;)V

    .line 2970
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .registers 3
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2953
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_6

    .line 2954
    iput-boolean p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2956
    :cond_6
    return-void
.end method

.method public startEffectForGesture(IZ)V
    .registers 9
    .param p1, "key"    # I
    .param p2, "isDownGesture"    # Z

    .prologue
    const/high16 v5, 0x41100000

    const/4 v4, 0x0

    const/high16 v3, 0x40000000

    .line 2802
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2946
    :cond_d
    :goto_d
    return-void

    .line 2806
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2b

    .line 2807
    const-string v0, "GestureEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2811
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2813
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, v4}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 2814
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2815
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2816
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2817
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2819
    if-eqz p2, :cond_c9

    .line 2820
    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2821
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42040000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 2824
    packed-switch p1, :pswitch_data_10e

    .line 2842
    :goto_81
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2843
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/smartclip/GestureEffectManager$1;-><init>(Lcom/android/server/smartclip/GestureEffectManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2940
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2942
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 2943
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 2826
    :pswitch_a9
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_81

    .line 2829
    :pswitch_af
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_81

    .line 2836
    :cond_c9
    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2837
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 2839
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_81

    .line 2824
    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_af
    .end packed-switch
.end method
