.class Lcom/android/server/am/ToolkitManagerService$2;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"

# interfaces
.implements Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 2

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentsSizeChange(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # setter for: Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$702(Lcom/android/server/am/ToolkitManagerService;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1182
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1183
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$800(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1185
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x100

    # invokes: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    .line 1186
    return-void
.end method

.method public onFocusTabChange(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "bFocus"    # Z

    .prologue
    .line 1208
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 1209
    .local v0, "focusedItem":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    if-eqz p2, :cond_8

    .line 1210
    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->requestFocus()Z

    .line 1212
    :cond_8
    return-void
.end method

.method public onModeChange(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # setter for: Lcom/android/server/am/ToolkitManagerService;->mMode:I
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$1602(Lcom/android/server/am/ToolkitManagerService;I)I

    .line 1203
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x1000

    # invokes: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    .line 1204
    return-void
.end method

.method public onOrientationChange(I)V
    .registers 6
    .param p1, "orientation"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ToolkitManagerService;->access$500(Lcom/android/server/am/ToolkitManagerService;ILjava/lang/Object;I)V

    .line 1177
    return-void
.end method

.method public onTabItemChange(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "itemStatus"    # I

    .prologue
    const/4 v1, 0x1

    .line 1190
    if-ne p2, v1, :cond_22

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # invokes: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 1194
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # invokes: Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1400(Lcom/android/server/am/ToolkitManagerService;)V

    .line 1197
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # invokes: Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V

    .line 1198
    return-void
.end method

.method public onUiStatusChange(I)V
    .registers 4
    .param p1, "uiStatus"    # I

    .prologue
    .line 1160
    packed-switch p1, :pswitch_data_1e

    .line 1170
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # setter for: Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$1302(Lcom/android/server/am/ToolkitManagerService;I)I

    .line 1171
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x10

    # invokes: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    .line 1172
    return-void

    .line 1162
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$1200(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_3

    .line 1167
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$1200(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_3

    .line 1160
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
