.class Lcom/android/server/am/ToolkitTabDialog$GestureListener;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 2

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Lcom/android/server/am/ToolkitTabDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ToolkitTabDialog;
    .param p2, "x1"    # Lcom/android/server/am/ToolkitTabDialog$1;

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog$GestureListener;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1183
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/16 v7, 0x19

    .line 1186
    const/4 v3, 0x0

    .line 1187
    .local v3, "rt":Z
    const/16 v0, 0x19

    .line 1188
    .local v0, "DELTA":I
    const/4 v1, 0x0

    .local v1, "dx":I
    const/4 v2, 0x0

    .line 1190
    .local v2, "dy":I
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # getter for: Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z
    invoke-static {v5}, Lcom/android/server/am/ToolkitTabDialog;->access$1200(Lcom/android/server/am/ToolkitTabDialog;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1246
    :goto_11
    return v4

    .line 1195
    :cond_12
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # getter for: Lcom/android/server/am/ToolkitTabDialog;->mGravity:I
    invoke-static {v5}, Lcom/android/server/am/ToolkitTabDialog;->access$1300(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v5

    sparse-switch v5, :sswitch_data_ce

    :cond_1b
    :goto_1b
    move v4, v3

    .line 1246
    goto :goto_11

    .line 1197
    :sswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 1198
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    .line 1199
    if-le v1, v7, :cond_41

    .line 1200
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    .line 1204
    :cond_3a
    :goto_3a
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    .line 1205
    const/4 v3, 0x1

    goto :goto_1b

    .line 1201
    :cond_41
    if-ge v1, v7, :cond_3a

    .line 1202
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_3a

    .line 1209
    :sswitch_49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 1210
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    .line 1211
    if-le v1, v7, :cond_6d

    .line 1212
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    .line 1216
    :cond_66
    :goto_66
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    .line 1217
    const/4 v3, 0x1

    goto :goto_1b

    .line 1213
    :cond_6d
    if-ge v1, v7, :cond_66

    .line 1214
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_66

    .line 1222
    :sswitch_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 1223
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    .line 1224
    if-le v2, v7, :cond_99

    .line 1225
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    .line 1229
    :cond_92
    :goto_92
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    .line 1230
    const/4 v3, 0x1

    goto :goto_1b

    .line 1226
    :cond_99
    if-ge v2, v7, :cond_92

    .line 1227
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_92

    .line 1234
    :sswitch_a1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 1235
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    .line 1236
    if-le v2, v7, :cond_c6

    .line 1237
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    .line 1241
    :cond_be
    :goto_be
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    # invokes: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    .line 1242
    const/4 v3, 0x1

    goto/16 :goto_1b

    .line 1238
    :cond_c6
    if-ge v2, v7, :cond_be

    .line 1239
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_be

    .line 1195
    :sswitch_data_ce
    .sparse-switch
        0x3 -> :sswitch_1d
        0x5 -> :sswitch_49
        0x30 -> :sswitch_75
        0x50 -> :sswitch_a1
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1250
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 1253
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1257
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1260
    const/4 v0, 0x0

    return v0
.end method
