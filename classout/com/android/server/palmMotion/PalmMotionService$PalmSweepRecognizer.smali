.class Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final PALM_SWEEP_PROGRESS_SIZE:I

.field public final PALM_SWEEP_SIZE_TH:I

.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field public TILT_TO_ZOOM_XVAR:F

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mFalseSizeCnt:I

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field private mPreSweepDown:Z

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepInitDiffx:F

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method private constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 422
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 423
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 425
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->PALM_SWEEP_SIZE_TH:I

    .line 426
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->PALM_SWEEP_PROGRESS_SIZE:I

    .line 427
    const/high16 v0, 0x43480000

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 431
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 434
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 435
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 437
    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    .line 438
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 439
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 440
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 441
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 442
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 443
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 444
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 445
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 446
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    .line 449
    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p2, "x1"    # Lcom/android/server/palmMotion/PalmMotionService$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return p1
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .registers 8
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/high16 v3, 0x42480000

    const/high16 v2, 0x40000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SetArrMaxTouchMajor(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 517
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v0, :cond_97

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v1, 0x42c80000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_21

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_39

    :cond_21
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_97

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_97

    iget-boolean v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    if-eqz v0, :cond_97

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_97

    :cond_39
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_97

    .line 518
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 519
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 520
    iput-boolean v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 521
    const-string v0, "PalmMotionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TILT_TO_ZOOM_XVAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v3, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_97
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b8

    .line 525
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_b8

    .line 526
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x420c0000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b8

    .line 527
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 528
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v0, :cond_b2

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 529
    :cond_b2
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 534
    :cond_b8
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_e8

    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_e8

    .line 535
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d2

    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 536
    :cond_d2
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e8

    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 538
    :cond_e8
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    const/high16 v1, 0x43c80000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f2

    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 558
    :cond_f2
    return-void
.end method

.method public GetRangeNum(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)I
    .registers 5
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "result":I
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v1, v2

    .line 474
    .local v1, "x":I
    iget-boolean v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_1c

    .line 476
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_10

    .line 478
    const/4 v0, 0x0

    .line 508
    :goto_f
    return v0

    .line 480
    :cond_10
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 482
    const/4 v0, 0x1

    goto :goto_f

    .line 486
    :cond_1a
    const/4 v0, 0x2

    goto :goto_f

    .line 491
    :cond_1c
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_24

    .line 493
    const/4 v0, 0x0

    goto :goto_f

    .line 495
    :cond_24
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2e

    .line 497
    const/4 v0, 0x1

    goto :goto_f

    .line 499
    :cond_2e
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_38

    .line 501
    const/4 v0, 0x2

    goto :goto_f

    .line 505
    :cond_38
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .registers 7
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 609
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    .line 610
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    if-le v1, v2, :cond_41

    .line 611
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 615
    :goto_13
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 616
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 617
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 618
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 619
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 620
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 622
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 623
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 624
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 625
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 626
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 628
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    const/4 v1, 0x4

    if-ge v0, v1, :cond_47

    .line 631
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v3, v1, v0

    .line 632
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v3, v1, v0

    .line 633
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aput v3, v1, v0

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 613
    .end local v0    # "i":I
    :cond_41
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    goto :goto_13

    .line 635
    .restart local v0    # "i":I
    :cond_47
    return-void
.end method

.method public Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .registers 4
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 600
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 601
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->CalculateHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 603
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_17

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 606
    :cond_17
    return-void
.end method

.method public RocognizeHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .registers 11
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/high16 v4, 0x43960000

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 561
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_1b

    .line 562
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_1b

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_1b

    .line 563
    iput-boolean v7, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 566
    :cond_1b
    const/4 v1, 0x0

    .line 567
    .local v1, "validMajorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2b

    .line 569
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_28

    .line 571
    add-int/lit8 v1, v1, 0x1

    .line 567
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 574
    :cond_2b
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_c8

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    move-result-object v2

    # getter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1000(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 575
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    iget v3, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 576
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_165

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_165

    if-lt v1, v6, :cond_165

    .line 577
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_c9

    .line 578
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$800(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 580
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 597
    :cond_c8
    :goto_c8
    return-void

    .line 581
    :cond_c9
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_13d

    .line 582
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$800(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 584
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_c8

    .line 587
    :cond_13d
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 593
    :cond_165
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " validMajorCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8
.end method

.method public SetArrMaxTouchMajor(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .registers 5
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->GetRangeNum(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)I

    move-result v0

    .line 458
    .local v0, "range":I
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_14

    .line 460
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 462
    :cond_14
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_26

    .line 464
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 465
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 467
    :cond_26
    return-void
.end method

.method public getSweepDown()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
