.class Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;II)V
    .registers 4
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 1609
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 1610
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 1625
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->run()V

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1629
    :cond_c
    return-void
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .registers 4

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1618
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2100(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1634
    return-void
.end method
