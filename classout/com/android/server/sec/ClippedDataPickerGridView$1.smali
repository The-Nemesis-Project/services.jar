.class Lcom/android/server/sec/ClippedDataPickerGridView$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerGridView;->getAnim(III)Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

.field final synthetic val$currIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerGridView;I)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    iput p2, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->val$currIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->val$currIndex:I

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_12

    .line 106
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z

    .line 108
    :cond_12
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView$1;->this$0:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z

    .line 94
    return-void
.end method
