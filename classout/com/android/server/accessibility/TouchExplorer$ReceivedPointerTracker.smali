.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final COEFFICIENT_ACTIVE_POINTER:I = 0x2

.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mActivePointers:I

.field private mHasMovingActivePointer:Z

.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerActive:Z

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mLastReceivedUpPointerId:I

.field private mPrimaryActivePointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field private final mThresholdActivePointer:D

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x20

    .line 1859
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1825
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    .line 1826
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    .line 1827
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    .line 1860
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mThresholdActivePointer:D

    .line 1862
    return-void
.end method

.method private computePointerDeltaMove(ILandroid/view/MotionEvent;)F
    .registers 10
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2195
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2196
    .local v2, "pointerId":I
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    .line 2197
    .local v0, "deltaX":F
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v4, v4, v2

    sub-float v1, v3, v4

    .line 2198
    .local v1, "deltaY":F
    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private detectActivePointers(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 2149
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, "count":I
    :goto_6
    if-ge v1, v0, :cond_2e

    .line 2150
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 2151
    .local v4, "pointerId":I
    iget-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    if-eqz v5, :cond_19

    .line 2153
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2149
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2158
    :cond_19
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->computePointerDeltaMove(ILandroid/view/MotionEvent;)F

    move-result v2

    .line 2159
    .local v2, "pointerDeltaMove":F
    float-to-double v5, v2

    iget-wide v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mThresholdActivePointer:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_16

    .line 2160
    shl-int v3, v9, v4

    .line 2161
    .local v3, "pointerFlag":I
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 2162
    iput-boolean v9, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    goto :goto_16

    .line 2165
    .end local v2    # "pointerDeltaMove":F
    .end local v3    # "pointerFlag":I
    .end local v4    # "pointerId":I
    :cond_2e
    return-void
.end method

.method private findPrimaryActivePointer()I
    .registers 9

    .prologue
    .line 2171
    const/4 v6, -0x1

    .line 2172
    .local v6, "primaryActivePointerId":I
    const-wide v4, 0x7fffffffffffffffL

    .line 2174
    .local v4, "minDownTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    array-length v0, v7

    .local v0, "count":I
    :goto_a
    if-ge v3, v0, :cond_1f

    .line 2175
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2176
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v1, v7, v3

    .line 2177
    .local v1, "downPointerTime":J
    cmp-long v7, v1, v4

    if-gez v7, :cond_1c

    .line 2178
    move-wide v4, v1

    .line 2179
    move v6, v3

    .line 2174
    .end local v1    # "downPointerTime":J
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2183
    :cond_1f
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 9
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2076
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2077
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 2079
    .local v0, "pointerFlag":I
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 2080
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 2081
    iput-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 2082
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 2083
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 2085
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 2087
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 2088
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 2089
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 2090
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 2092
    iget-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    if-nez v2, :cond_41

    .line 2095
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 2096
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 2102
    :goto_40
    return-void

    .line 2100
    :cond_41
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    goto :goto_40
.end method

.method private handleReceivedPointerMove(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2110
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->detectActivePointers(Landroid/view/MotionEvent;)V

    .line 2111
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 8
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 2120
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2121
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 2123
    .local v0, "pointerFlag":I
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 2124
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 2125
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 2126
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 2127
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 2129
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 2130
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 2131
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    .line 2132
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    .line 2133
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 2135
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    if-nez v2, :cond_45

    .line 2136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    .line 2138
    :cond_45
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    if-ne v2, v1, :cond_4c

    .line 2139
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 2141
    :cond_4c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1868
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1869
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1870
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 1871
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1872
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 1873
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1874
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    .line 1875
    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1876
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 1877
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1878
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1879
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1880
    return-void
.end method

.method public getActivePointerCount()I
    .registers 2

    .prologue
    .line 1941
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getActivePointers()I
    .registers 2

    .prologue
    .line 1934
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    return v0
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    .prologue
    .line 2033
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    .prologue
    .line 2004
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .registers 2

    .prologue
    .line 2019
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .registers 2

    .prologue
    .line 2026
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getLastReceivedUpPointerId()I
    .registers 2

    .prologue
    .line 2011
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    return v0
.end method

.method public getPrimaryActivePointerId()I
    .registers 3

    .prologue
    .line 1994
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1995
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->findPrimaryActivePointer()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1997
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    .prologue
    .line 1927
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isActiveOrWasLastActiveUpPointer(I)Z
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 2064
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    if-ne v0, p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isActivePointer(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1962
    shl-int v0, v1, p1

    .line 1963
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1951
    shl-int v0, v1, p1

    .line 1952
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    .line 1889
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1891
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1894
    .local v0, "action":I
    packed-switch v0, :pswitch_data_3c

    .line 1914
    :goto_16
    :pswitch_16
    return-void

    .line 1896
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1899
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1902
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerMove(Landroid/view/MotionEvent;)V

    goto :goto_16

    .line 1905
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1908
    :pswitch_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1894
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_2b
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_33
    .end packed-switch
.end method

.method public populateActivePointerIds([I)V
    .registers 6
    .param p1, "outPointerIds"    # [I

    .prologue
    .line 2050
    const/4 v2, 0x0

    .line 2051
    .local v2, "index":I
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .local v1, "idBits":I
    :goto_3
    if-eqz v1, :cond_13

    .line 2052
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 2053
    .local v0, "id":I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 2054
    aput v0, p1, v2

    .line 2055
    add-int/lit8 v2, v2, 0x1

    .line 2056
    goto :goto_3

    .line 2057
    .end local v0    # "id":I
    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2204
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2207
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v3, :cond_31

    .line 2209
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2211
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2214
    :cond_31
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    const-string v2, "\nActive pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2217
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    const/4 v1, 0x0

    :goto_48
    if-ge v1, v3, :cond_5b

    .line 2219
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2221
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 2224
    :cond_5b
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    const-string v2, "\nPrimary active pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryActivePointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2227
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasLastReceivedUpPointerActive()Z
    .registers 2

    .prologue
    .line 2040
    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    return v0
.end method
