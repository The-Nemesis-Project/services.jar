.class Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabWidget$TabSpec;->showContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 2

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 435
    packed-switch p2, :pswitch_data_20

    .line 442
    :goto_3
    return-void

    .line 438
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->removeTab(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/server/am/ToolkitTabWidget;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ToolkitTabWidget;->access$1400(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;I)V

    goto :goto_3

    .line 435
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
