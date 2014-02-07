.class Lcom/android/server/am/ToolkitTabDialog$GuideView;
.super Landroid/view/View;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideView"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1065
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    .line 1066
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1067
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080920

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1073
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mShowing:Z

    .line 1074
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1089
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1090
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mShowing:Z

    .line 1091
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mShowing:Z

    if-nez v0, :cond_27

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Binder;

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mShowing:Z

    .line 1085
    :goto_26
    return-void

    .line 1083
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$GuideView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_26
.end method
