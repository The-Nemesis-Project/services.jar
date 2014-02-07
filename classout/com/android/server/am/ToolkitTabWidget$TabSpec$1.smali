.class Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

.field final synthetic val$this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Lcom/android/server/am/ToolkitTabWidget;)V
    .registers 3

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iput-object p2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->val$this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # setter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z

    .line 310
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # getter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$300(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 292
    const-string v0, "ToolkitTabWidget"

    const-string v1, "This item is not deleted by host app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_10
    return-void

    .line 295
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # setter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0, v2}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z

    .line 296
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # setter for: Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->access$402(Lcom/android/server/am/ToolkitTabWidget;Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 297
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # invokes: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->showContextMenu()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$500(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    goto :goto_10
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    # getter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$200(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 274
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->setFocusItem(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
