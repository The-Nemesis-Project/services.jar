.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1200
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1201
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 44
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1205
    const/4 v9, 0x0

    .line 1207
    .local v9, "handled":Z
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v38, v0

    if-eqz v38, :cond_516

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-eqz v38, :cond_516

    .line 1209
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    .line 1210
    .local v20, "motionEvent":Landroid/view/MotionEvent;
    const/4 v9, 0x1

    .line 1213
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawX()F

    move-result v36

    .line 1214
    .local v36, "x":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawY()F

    move-result v37

    .line 1215
    .local v37, "y":F
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_1f3

    move-result v6

    .line 1217
    .local v6, "action":I
    if-eqz v6, :cond_2e

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1484
    .end local v6    # "action":I
    .end local v20    # "motionEvent":Landroid/view/MotionEvent;
    .end local v36    # "x":F
    .end local v37    # "y":F
    :goto_2d
    return-void

    .line 1221
    .restart local v6    # "action":I
    .restart local v20    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v36    # "x":F
    .restart local v37    # "y":F
    :cond_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    monitor-enter v39
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_1f3

    .line 1223
    const/16 v34, 0x0

    .line 1225
    .local v34, "windows":Lcom/android/server/wm/WindowList;
    const/16 v30, 0x0

    .line 1233
    .local v30, "targetWin":Lcom/android/server/wm/WindowState;
    :try_start_3f
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    .line 1234
    .local v8, "displayId":I
    if-eqz v8, :cond_73

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v40

    # invokes: Lcom/android/server/wm/WindowManagerService;->findTargetWindowOnDisplay(IFFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v8, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;IFFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object v30

    .line 1236
    if-eqz v30, :cond_73

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    .line 1241
    :cond_73
    if-eqz v30, :cond_77

    if-nez v34, :cond_9f

    .line 1242
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    if-eqz v8, :cond_aa

    const/16 v38, 0x1

    :goto_91
    move-object/from16 v0, v40

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v41

    move/from16 v4, v38

    # invokes: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v30

    .line 1246
    :cond_9f
    if-nez v30, :cond_ad

    .line 1247
    monitor-exit v39
    :try_end_a2
    .catchall {:try_start_3f .. :try_end_a2} :catchall_1f0

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2d

    .line 1243
    :cond_aa
    const/16 v38, 0x0

    goto :goto_91

    .line 1248
    :cond_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_10d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_10d

    .line 1249
    const/4 v14, 0x0

    .line 1250
    .local v14, "isChild":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_e4
    :goto_e4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_fc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowState;

    .line 1251
    .local v35, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_e4

    .line 1252
    const/4 v14, 0x1

    goto :goto_e4

    .line 1255
    .end local v35    # "ws":Lcom/android/server/wm/WindowState;
    :cond_fc
    if-nez v14, :cond_10d

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar()Z

    .line 1260
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "isChild":Z
    :cond_10d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x834

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_135

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x836

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_39f

    .line 1263
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1264
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 1267
    .local v10, "i":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v24, "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .local v21, "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 1270
    .local v22, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 1271
    .local v5, "N":I
    const/16 v32, 0x0

    .line 1272
    .local v32, "topWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v26, 0x0

    .line 1273
    .local v26, "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v25, 0x0

    .line 1274
    .local v25, "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v23, 0x0

    .line 1275
    .local v23, "subTargetWin":Lcom/android/server/wm/WindowState;
    const/16 v33, 0x0

    .line 1276
    .local v33, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v16, v5, -0x1

    .local v16, "j":I
    :goto_16a
    if-ltz v16, :cond_359

    .line 1278
    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "win":Lcom/android/server/wm/WindowState;
    check-cast v33, Lcom/android/server/wm/WindowState;

    .line 1280
    .restart local v33    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x834

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_1a1

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x836

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_1a1

    .line 1276
    add-int/lit8 v16, v16, -0x1

    goto :goto_16a

    .line 1286
    :cond_1a1
    move-object/from16 v32, v33

    .line 1290
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_363

    .line 1291
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1292
    .local v12, "id":I
    if-gez v12, :cond_1fc

    .line 1293
    const-string v38, "WindowManager"

    const-string v40, "    no targetWin in mWindows!!"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/16 v32, 0x0

    .line 1300
    :goto_1c0
    if-eqz v32, :cond_359

    .line 1304
    add-int/lit8 v27, v12, -0x1

    .line 1305
    .local v27, "subUnderWinIndex":I
    :goto_1c4
    if-ltz v27, :cond_1dc

    .line 1306
    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1307
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_202

    .line 1315
    :cond_1dc
    :goto_1dc
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->empty()Z

    move-result v38

    if-nez v38, :cond_20f

    .line 1316
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1317
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    .line 1424
    .end local v5    # "N":I
    .end local v8    # "displayId":I
    .end local v10    # "i":I
    .end local v12    # "id":I
    .end local v16    # "j":I
    .end local v21    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v24    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v25    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "subUnderWinIndex":I
    .end local v32    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v33    # "win":Lcom/android/server/wm/WindowState;
    :catchall_1f0
    move-exception v38

    monitor-exit v39
    :try_end_1f2
    .catchall {:try_start_ad .. :try_end_1f2} :catchall_1f0

    :try_start_1f2
    throw v38
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f3

    .line 1482
    .end local v6    # "action":I
    .end local v20    # "motionEvent":Landroid/view/MotionEvent;
    .end local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v34    # "windows":Lcom/android/server/wm/WindowList;
    .end local v36    # "x":F
    .end local v37    # "y":F
    :catchall_1f3
    move-exception v38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v38

    .line 1297
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "displayId":I
    .restart local v10    # "i":I
    .restart local v12    # "id":I
    .restart local v16    # "j":I
    .restart local v20    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v21    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v22    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v24    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v25    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v32    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v33    # "win":Lcom/android/server/wm/WindowState;
    .restart local v34    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v36    # "x":F
    .restart local v37    # "y":F
    :cond_1fc
    :try_start_1fc
    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_1c0

    .line 1310
    .restart local v27    # "subUnderWinIndex":I
    :cond_202
    invoke-virtual/range {v22 .. v23}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1313
    add-int/lit8 v27, v27, -0x1

    goto :goto_1c4

    .line 1319
    :cond_20f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    sub-int v28, v12, v38

    .line 1322
    .local v28, "subUpperWinIndex":I
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    :goto_21c
    move/from16 v0, v28

    if-gt v0, v5, :cond_236

    .line 1326
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1327
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_27e

    .line 1336
    :cond_236
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "subTargetWinList = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_258
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_28d

    .line 1338
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    sub-int v38, v38, v17

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1339
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    add-int/lit8 v17, v17, 0x1

    goto :goto_258

    .line 1330
    .end local v17    # "k":I
    :cond_27e
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1331
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    .line 1343
    .restart local v17    # "k":I
    :cond_28d
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    .line 1344
    .local v31, "topIndex":I
    :goto_295
    move/from16 v0, v31

    if-gt v0, v5, :cond_2b8

    .line 1345
    add-int/lit8 v38, v31, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1346
    .restart local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    if-eqz v26, :cond_2b8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2b8

    .line 1347
    move-object/from16 v25, v26

    .line 1348
    add-int/lit8 v31, v31, 0x1

    goto :goto_295

    .line 1353
    :cond_2b8
    if-eqz v25, :cond_2bc

    .line 1354
    move-object/from16 v32, v25

    .line 1358
    :cond_2bc
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-le v0, v1, :cond_308

    .line 1359
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "revSubTargetWinList.size() = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1361
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_2ec
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_317

    .line 1362
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    .line 1363
    .local v29, "subWinAtList":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_2ec

    .line 1366
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v29    # "subWinAtList":Lcom/android/server/wm/WindowState;
    :cond_308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1370
    :cond_317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    # invokes: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowList;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1424
    .end local v5    # "N":I
    .end local v10    # "i":I
    .end local v12    # "id":I
    .end local v16    # "j":I
    .end local v17    # "k":I
    .end local v21    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v24    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v25    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "subUnderWinIndex":I
    .end local v28    # "subUpperWinIndex":I
    .end local v31    # "topIndex":I
    .end local v32    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v33    # "win":Lcom/android/server/wm/WindowState;
    :cond_359
    :goto_359
    monitor-exit v39
    :try_end_35a
    .catchall {:try_start_1fc .. :try_end_35a} :catchall_1f0

    .line 1482
    .end local v6    # "action":I
    .end local v8    # "displayId":I
    .end local v20    # "motionEvent":Landroid/view/MotionEvent;
    .end local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v34    # "windows":Lcom/android/server/wm/WindowList;
    .end local v36    # "x":F
    .end local v37    # "y":F
    :cond_35a
    :goto_35a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2d

    .line 1381
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "displayId":I
    .restart local v10    # "i":I
    .restart local v16    # "j":I
    .restart local v20    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v21    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v22    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v24    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v25    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v32    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v33    # "win":Lcom/android/server/wm/WindowState;
    .restart local v34    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v36    # "x":F
    .restart local v37    # "y":F
    :cond_363
    :try_start_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_359

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_359

    .line 1394
    .end local v5    # "N":I
    .end local v10    # "i":I
    .end local v16    # "j":I
    .end local v21    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v23    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v24    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v25    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v26    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v32    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v33    # "win":Lcom/android/server/wm/WindowState;
    :cond_39f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_406

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_406

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1403
    :cond_406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v38, v0

    if-eqz v38, :cond_359

    .line 1404
    if-eqz v30, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_359

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v38, v0

    const/high16 v40, 0x800000

    and-int v38, v38, v40

    if-eqz v38, :cond_46f

    const/4 v13, 0x1

    .line 1407
    .local v13, "ignoreOtherAppTouched":Z
    :goto_443
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    if-eqz v38, :cond_465

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_465

    if-eqz v13, :cond_471

    .line 1408
    :cond_465
    monitor-exit v39
    :try_end_466
    .catchall {:try_start_363 .. :try_end_466} :catchall_1f0

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2d

    .line 1405
    .end local v13    # "ignoreOtherAppTouched":Z
    :cond_46f
    const/4 v13, 0x0

    goto :goto_443

    .line 1410
    .restart local v13    # "ignoreOtherAppTouched":Z
    :cond_471
    :try_start_471
    # getter for: Lcom/android/server/wm/WindowManagerService;->DEBUG_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1000()Z

    move-result v38

    if-eqz v38, :cond_4da

    .line 1411
    const-string v38, "WindowManager"

    const-string v40, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "targetWin >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mCurrentFocus >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_4da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 1419
    .local v19, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_514
    .catchall {:try_start_471 .. :try_end_514} :catchall_1f0

    goto/16 :goto_359

    .line 1425
    .end local v6    # "action":I
    .end local v8    # "displayId":I
    .end local v13    # "ignoreOtherAppTouched":Z
    .end local v19    # "m":Landroid/os/Message;
    .end local v20    # "motionEvent":Landroid/view/MotionEvent;
    .end local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v34    # "windows":Lcom/android/server/wm/WindowList;
    .end local v36    # "x":F
    .end local v37    # "y":F
    :cond_516
    :try_start_516
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/KeyEvent;

    move/from16 v38, v0

    if-eqz v38, :cond_35a

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    monitor-enter v39
    :try_end_52b
    .catchall {:try_start_516 .. :try_end_52b} :catchall_1f3

    .line 1427
    :try_start_52b
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object/from16 v18, v0

    .line 1428
    .local v18, "keyEvent":Landroid/view/KeyEvent;
    const/16 v34, 0x0

    .line 1429
    .restart local v34    # "windows":Lcom/android/server/wm/WindowList;
    const/16 v30, 0x0

    .line 1431
    .restart local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    const/4 v9, 0x1

    .line 1433
    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    .line 1435
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_552

    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_552

    .line 1438
    monitor-exit v39
    :try_end_549
    .catchall {:try_start_52b .. :try_end_549} :catchall_6ef

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2d

    .line 1442
    :cond_552
    :try_start_552
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v8

    .line 1443
    .restart local v8    # "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowByDisplay(I)Lcom/android/server/wm/WindowState;

    move-result-object v30

    .line 1444
    if-eqz v30, :cond_57c

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    .line 1448
    :cond_57c
    if-eqz v30, :cond_580

    if-nez v34, :cond_58a

    .line 1449
    :cond_580
    monitor-exit v39
    :try_end_581
    .catchall {:try_start_552 .. :try_end_581} :catchall_6ef

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2d

    .line 1451
    :cond_58a
    :try_start_58a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_5f1

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_5f1

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1460
    :cond_5f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6ec

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_6ec

    .line 1462
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    if-eqz v38, :cond_631

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_63b

    .line 1463
    :cond_631
    monitor-exit v39
    :try_end_632
    .catchall {:try_start_58a .. :try_end_632} :catchall_6ef

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2d

    .line 1465
    :cond_63b
    :try_start_63b
    # getter for: Lcom/android/server/wm/WindowManagerService;->DEBUG_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1000()Z

    move-result v38

    if-eqz v38, :cond_6b2

    .line 1466
    const-string v38, "WindowManager"

    const-string v40, "[SideSync Key]otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "targetWin >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_6b2

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mCurrentFocus >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_6b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 1474
    .restart local v19    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    .end local v19    # "m":Landroid/os/Message;
    :cond_6ec
    monitor-exit v39

    goto/16 :goto_35a

    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v8    # "displayId":I
    .end local v18    # "keyEvent":Landroid/view/KeyEvent;
    .end local v30    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v34    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6ef
    move-exception v38

    monitor-exit v39
    :try_end_6f1
    .catchall {:try_start_63b .. :try_end_6f1} :catchall_6ef

    :try_start_6f1
    throw v38
    :try_end_6f2
    .catchall {:try_start_6f1 .. :try_end_6f2} :catchall_1f3
.end method
