.class Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1703
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1704
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .prologue
    .line 1717
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .prologue
    .line 1724
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .prologue
    .line 1710
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1734
    shl-int v0, v1, p1

    .line 1735
    .local v0, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1664
    .local v0, "action":I
    packed-switch v0, :pswitch_data_58

    .line 1697
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 1667
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1668
    .local v2, "pointerId":I
    shl-int v1, v4, v2

    .line 1669
    .local v1, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    goto :goto_8

    .line 1674
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1675
    .restart local v2    # "pointerId":I
    shl-int v1, v4, v2

    .line 1676
    .restart local v1    # "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1677
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    if-nez v3, :cond_8

    .line 1678
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    goto :goto_8

    .line 1684
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :pswitch_39
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_42

    .line 1685
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1687
    :cond_42
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 1688
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v3, :cond_51

    .line 1689
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1691
    :cond_51
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_8

    .line 1664
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_1f
        :pswitch_39
        :pswitch_8
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1755
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1758
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    const/16 v2, 0x20

    if-ge v1, v2, :cond_32

    .line 1760
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2f

    .line 1761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1762
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1765
    :cond_32
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
