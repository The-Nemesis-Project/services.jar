.class Lcom/android/server/smartclip/GestureEffectManager$1$1;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/GestureEffectManager$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/smartclip/GestureEffectManager$1;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/GestureEffectManager$1;)V
    .registers 2

    .prologue
    .line 2873
    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2901
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 2880
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2881
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2883
    :cond_16
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    packed-switch v0, :pswitch_data_4c

    .line 2893
    :goto_1d
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$500(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2894
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 2896
    :cond_30
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$502(Lcom/android/server/smartclip/GestureEffectManager;Z)Z

    .line 2897
    return-void

    .line 2885
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/16 v1, 0x52

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_1d

    .line 2888
    :pswitch_43
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1$1;->this$1:Lcom/android/server/smartclip/GestureEffectManager$1;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_1d

    .line 2883
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_43
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2905
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2876
    return-void
.end method
