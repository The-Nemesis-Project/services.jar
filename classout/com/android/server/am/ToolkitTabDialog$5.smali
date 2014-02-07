.class Lcom/android/server/am/ToolkitTabDialog$5;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"

# interfaces
.implements Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
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
    .line 1024
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "bFocus"    # Z

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->notifyFocusTabChange(Ljava/lang/Object;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->access$500(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;Z)V

    .line 1029
    return-void
.end method

.method public onLongPressItem()V
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    .line 1058
    return-void
.end method

.method public onTabItemChange(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "itemStatus"    # I

    .prologue
    .line 1033
    packed-switch p2, :pswitch_data_10

    .line 1039
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->access$700(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;I)V

    .line 1040
    return-void

    .line 1036
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabDialog;->access$600(Lcom/android/server/am/ToolkitTabDialog;)V

    goto :goto_3

    .line 1033
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onToggle()V
    .registers 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # getter for: Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabDialog;->access$800(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 1052
    :goto_9
    return-void

    .line 1046
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9

    .line 1049
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$5;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9

    .line 1044
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method
