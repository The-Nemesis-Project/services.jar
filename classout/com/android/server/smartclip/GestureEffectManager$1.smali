.class Lcom/android/server/smartclip/GestureEffectManager$1;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/GestureEffectManager;

.field final synthetic val$isDownGesture:Z

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/GestureEffectManager;ZI)V
    .registers 4

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iput-boolean p2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$isDownGesture:Z

    iput p3, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3033
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x42480000

    const/4 v2, 0x4

    .line 2950
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$isDownGesture:Z

    if-eqz v0, :cond_ea

    .line 2951
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2952
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2953
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 2955
    iget v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    packed-switch v0, :pswitch_data_126

    .line 2968
    :goto_33
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2969
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40a00000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 2971
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2972
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager$1$1;-><init>(Lcom/android/server/smartclip/GestureEffectManager$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3029
    :goto_8d
    return-void

    .line 2957
    :pswitch_8e
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2958
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_33

    .line 2961
    :pswitch_ad
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2962
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto/16 :goto_33

    .line 3009
    :cond_ea
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 3010
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3012
    :cond_fb
    iget v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    packed-switch v0, :pswitch_data_12e

    .line 3024
    :goto_100
    :pswitch_100
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$500(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 3025
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 3027
    :cond_10f
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$502(Lcom/android/server/smartclip/GestureEffectManager;Z)Z

    goto/16 :goto_8d

    .line 3014
    :pswitch_117
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/16 v1, 0x52

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_100

    .line 3017
    :pswitch_11f
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_100

    .line 2955
    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_ad
    .end packed-switch

    .line 3012
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_117
        :pswitch_11f
        :pswitch_100
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3037
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$000(Lcom/android/server/smartclip/GestureEffectManager;)Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->playVibrator()V

    .line 2946
    return-void
.end method
