.class Lcom/android/server/am/ToolkitTabDialog$3;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 2

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$3;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 513
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    .line 514
    .local v0, "av":Lcom/android/server/am/ToolkitTabDialog$ArrowView;
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog$3;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->getMode()I

    move-result v2

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->scroll(I)V
    invoke-static {v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->access$400(Lcom/android/server/am/ToolkitTabDialog;I)V

    .line 515
    return-void
.end method
