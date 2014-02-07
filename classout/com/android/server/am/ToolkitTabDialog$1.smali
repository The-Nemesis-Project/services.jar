.class Lcom/android/server/am/ToolkitTabDialog$1;
.super Landroid/view/OrientationEventListener;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V
    .registers 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$1;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$1;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_9

    .line 373
    :cond_8
    :goto_8
    return-void

    .line 369
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$1;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # getter for: Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ToolkitTabDialog;->access$000(Lcom/android/server/am/ToolkitTabDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 370
    .local v0, "orentation":I
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$1;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # getter for: Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I
    invoke-static {v1}, Lcom/android/server/am/ToolkitTabDialog;->access$100(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 371
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$1;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->notifyOrientationChange(I)V
    invoke-static {v1, v0}, Lcom/android/server/am/ToolkitTabDialog;->access$200(Lcom/android/server/am/ToolkitTabDialog;I)V

    goto :goto_8
.end method
