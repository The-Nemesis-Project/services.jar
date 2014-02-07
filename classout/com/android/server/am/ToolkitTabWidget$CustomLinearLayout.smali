.class Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinearLayout"
.end annotation


# instance fields
.field private mBackgroundDrawableDirection:I

.field private mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 456
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    .line 457
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 453
    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setWillNotDraw(Z)V

    .line 459
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 485
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 487
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 489
    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 493
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    packed-switch v0, :pswitch_data_50

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 505
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 506
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 507
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 511
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 512
    return-void

    .line 495
    :pswitch_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 498
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 499
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    .line 493
    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method public setBackgroundDrawableDirection(I)V
    .registers 3
    .param p1, "direct"    # I

    .prologue
    .line 478
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    if-eq v0, p1, :cond_9

    .line 479
    iput p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->invalidate()V

    .line 482
    :cond_9
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 462
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_7

    .line 475
    :cond_6
    :goto_6
    return-void

    .line 465
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 466
    .local v0, "padding":Landroid/graphics/Rect;
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getDrawableState()[I

    move-result-object v1

    .line 468
    .local v1, "state":[I
    if-eqz v1, :cond_19

    .line 469
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 471
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 472
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setPadding(IIII)V

    goto :goto_6
.end method
