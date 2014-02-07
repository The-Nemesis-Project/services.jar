.class Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinearLayout"
.end annotation


# instance fields
.field private mBackgroundDrawableDirection:I

.field private mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1268
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    .line 1269
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1265
    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mBackgroundDrawableDirection:I

    .line 1270
    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setWillNotDraw(Z)V

    .line 1271
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 1292
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mBackgroundDrawableDirection:I

    packed-switch v0, :pswitch_data_50

    .line 1303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1304
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1310
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1311
    return-void

    .line 1294
    :pswitch_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1295
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1296
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    .line 1292
    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method setBackgroundDrawableDirection(I)V
    .registers 3
    .param p1, "direct"    # I

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mBackgroundDrawableDirection:I

    if-eq v0, p1, :cond_d

    .line 1284
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mBackgroundDrawableDirection:I

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->invalidate()V

    .line 1287
    :cond_d
    return-void
.end method

.method setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1273
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_5

    .line 1281
    :cond_4
    :goto_4
    return-void

    .line 1275
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1276
    .local v0, "padding":Landroid/graphics/Rect;
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1277
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1278
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setPadding(IIII)V

    goto :goto_4
.end method
