.class public Lcom/android/server/smartclip/SmartClipView$PointerState;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private final ESTIMATE_TRACE_DEFAULT_SIZE:I

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput v1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->ESTIMATE_TRACE_DEFAULT_SIZE:I

    .line 209
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    .line 210
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    .line 213
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 217
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;
    .param p1, "x1"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    return-object v0
.end method


# virtual methods
.method public addTrace(FF)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    array-length v2, v3

    .line 225
    .local v2, "traceCapacity":I
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_20

    .line 226
    mul-int/lit8 v2, v2, 0x2

    .line 227
    new-array v0, v2, [F

    .line 228
    .local v0, "newTraceX":[F
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    .line 231
    new-array v1, v2, [F

    .line 232
    .local v1, "newTraceY":[F
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    .line 236
    .end local v0    # "newTraceX":[F
    .end local v1    # "newTraceY":[F
    :cond_20
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    .line 237
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    .line 238
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    .line 239
    return-void
.end method

.method public clearTrace()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    .line 221
    return-void
.end method

.method public getTraceCount()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    return v0
.end method

.method public getTraceX(I)F
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getTraceY(I)F
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    aget v0, v0, p1

    return v0
.end method
