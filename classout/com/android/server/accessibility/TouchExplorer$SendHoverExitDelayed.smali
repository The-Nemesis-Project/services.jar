.class Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 3

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    const-string v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1569
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1570
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1571
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1557
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1558
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1560
    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1575
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1578
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1549
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1550
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1551
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1552
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2900(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1553
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    const/16 v3, 0xa

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$3000(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_4d

    .line 1591
    :goto_d
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1592
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1593
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1595
    :cond_2b
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1596
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1597
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1599
    :cond_49
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1600
    return-void

    .line 1588
    :catch_4d
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "TouchExplorer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
