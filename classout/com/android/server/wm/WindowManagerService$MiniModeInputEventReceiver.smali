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
    .line 918
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 919
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 920
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 39
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 924
    const/4 v7, 0x0

    .line 926
    .local v7, "handled":Z
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v33, v0

    if-eqz v33, :cond_347

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v33

    and-int/lit8 v33, v33, 0x2

    if-eqz v33, :cond_347

    .line 928
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v15, v0

    .line 929
    .local v15, "motionEvent":Landroid/view/MotionEvent;
    const/4 v7, 0x1

    .line 932
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawX()F

    move-result v31

    .line 933
    .local v31, "x":F
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawY()F

    move-result v32

    .line 934
    .local v32, "y":F
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getAction()I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_1e2

    move-result v6

    .line 936
    .local v6, "action":I
    if-eqz v6, :cond_2d

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1115
    .end local v6    # "action":I
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    .end local v31    # "x":F
    .end local v32    # "y":F
    :goto_2c
    return-void

    .line 940
    .restart local v6    # "action":I
    .restart local v15    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_1e2

    .line 942
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v29

    .line 944
    .local v29, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v33

    if-eqz v33, :cond_71

    const/16 v33, 0x1

    :goto_58
    move-object/from16 v0, v35

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v36

    move/from16 v4, v33

    # invokes: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v25

    .line 950
    .local v25, "targetWin":Lcom/android/server/wm/WindowState;
    if-nez v25, :cond_74

    .line 951
    monitor-exit v34
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_1df

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2c

    .line 944
    .end local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_71
    const/16 v33, 0x0

    goto :goto_58

    .line 954
    .restart local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    if-eqz v33, :cond_fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_fe

    .line 955
    const/4 v11, 0x0

    .line 956
    .local v11, "isChild":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_ab
    :goto_ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_c3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .line 957
    .local v30, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_ab

    .line 958
    const/4 v11, 0x1

    goto :goto_ab

    .line 961
    .end local v30    # "ws":Lcom/android/server/wm/WindowState;
    :cond_c3
    if-nez v11, :cond_fe

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_fe

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar()Z

    .line 967
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "isChild":Z
    :cond_fe
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v35, 0x834

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_126

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v35, 0x836

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_38c

    .line 970
    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 971
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 974
    .local v8, "i":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v19, "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v16, "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v17, Ljava/util/Stack;

    invoke-direct/range {v17 .. v17}, Ljava/util/Stack;-><init>()V

    .line 977
    .local v17, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 978
    .local v5, "N":I
    const/16 v27, 0x0

    .line 979
    .local v27, "topWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 980
    .local v21, "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v20, 0x0

    .line 981
    .local v20, "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 982
    .local v18, "subTargetWin":Lcom/android/server/wm/WindowState;
    const/16 v28, 0x0

    .line 983
    .local v28, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v13, v5, -0x1

    .local v13, "j":I
    :goto_15b
    if-ltz v13, :cond_346

    .line 985
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 987
    .restart local v28    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v35, 0x834

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_190

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v35, 0x836

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_190

    .line 983
    add-int/lit8 v13, v13, -0x1

    goto :goto_15b

    .line 993
    :cond_190
    move-object/from16 v27, v28

    .line 997
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_350

    .line 998
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 999
    .local v10, "id":I
    if-gez v10, :cond_1eb

    .line 1000
    const-string v33, "WindowManager"

    const-string v35, "    no targetWin in mWindows!!"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v27, 0x0

    .line 1007
    :goto_1af
    if-eqz v27, :cond_346

    .line 1011
    add-int/lit8 v22, v10, -0x1

    .line 1012
    .local v22, "subUnderWinIndex":I
    :goto_1b3
    if-ltz v22, :cond_1cb

    .line 1013
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1014
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1f1

    .line 1022
    :cond_1cb
    :goto_1cb
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->empty()Z

    move-result v33

    if-nez v33, :cond_1fe

    .line 1023
    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1024
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1cb

    .line 1110
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v10    # "id":I
    .end local v13    # "j":I
    .end local v16    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v20    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v22    # "subUnderWinIndex":I
    .end local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    .end local v29    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_1df
    move-exception v33

    monitor-exit v34
    :try_end_1e1
    .catchall {:try_start_74 .. :try_end_1e1} :catchall_1df

    :try_start_1e1
    throw v33
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e2

    .line 1113
    .end local v6    # "action":I
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    .end local v31    # "x":F
    .end local v32    # "y":F
    :catchall_1e2
    move-exception v33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v33

    .line 1004
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "i":I
    .restart local v10    # "id":I
    .restart local v13    # "j":I
    .restart local v15    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v16    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v20    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v27    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v28    # "win":Lcom/android/server/wm/WindowState;
    .restart local v29    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_1eb
    :try_start_1eb
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_1af

    .line 1017
    .restart local v22    # "subUnderWinIndex":I
    :cond_1f1
    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1020
    add-int/lit8 v22, v22, -0x1

    goto :goto_1b3

    .line 1026
    :cond_1fe
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    sub-int v23, v10, v33

    .line 1029
    .local v23, "subUpperWinIndex":I
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    :goto_20b
    move/from16 v0, v23

    if-gt v0, v5, :cond_225

    .line 1033
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1034
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_26b

    .line 1043
    :cond_225
    const-string v33, "WindowManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "subTargetWinList = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_247
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_27a

    .line 1045
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    sub-int v33, v33, v14

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1046
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    add-int/lit8 v14, v14, 0x1

    goto :goto_247

    .line 1037
    .end local v14    # "k":I
    :cond_26b
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1038
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 1050
    .restart local v14    # "k":I
    :cond_27a
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 1051
    .local v26, "topIndex":I
    :goto_282
    move/from16 v0, v26

    if-gt v0, v5, :cond_2a5

    .line 1052
    add-int/lit8 v33, v26, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1053
    .restart local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_2a5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2a5

    .line 1054
    move-object/from16 v20, v21

    .line 1055
    add-int/lit8 v26, v26, 0x1

    goto :goto_282

    .line 1060
    :cond_2a5
    if-eqz v20, :cond_2a9

    .line 1061
    move-object/from16 v27, v20

    .line 1065
    :cond_2a9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v33

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_2f5

    .line 1066
    const-string v33, "WindowManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "revSubTargetWinList.size() = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1068
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_2d9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_304

    .line 1069
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowState;

    .line 1070
    .local v24, "subWinAtList":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_2d9

    .line 1073
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v24    # "subWinAtList":Lcom/android/server/wm/WindowState;
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    # invokes: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1077
    :cond_304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowList;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 1110
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v10    # "id":I
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v16    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v20    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v22    # "subUnderWinIndex":I
    .end local v23    # "subUpperWinIndex":I
    .end local v26    # "topIndex":I
    .end local v27    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    :cond_346
    :goto_346
    monitor-exit v34
    :try_end_347
    .catchall {:try_start_1eb .. :try_end_347} :catchall_1df

    .line 1113
    .end local v6    # "action":I
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    .end local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v29    # "windows":Lcom/android/server/wm/WindowList;
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_2c

    .line 1088
    .restart local v5    # "N":I
    .restart local v6    # "action":I
    .restart local v8    # "i":I
    .restart local v13    # "j":I
    .restart local v15    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v16    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v20    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "targetWin":Lcom/android/server/wm/WindowState;
    .restart local v27    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .restart local v28    # "win":Lcom/android/server/wm/WindowState;
    .restart local v29    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_350
    :try_start_350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_346

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_346

    .line 1101
    .end local v5    # "N":I
    .end local v8    # "i":I
    .end local v13    # "j":I
    .end local v16    # "revSubTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "subTargetWin":Lcom/android/server/wm/WindowState;
    .end local v19    # "subTargetWinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v20    # "subTempTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v21    # "subTopWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v27    # "topWidgetWin":Lcom/android/server/wm/WindowState;
    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    :cond_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    if-eqz v33, :cond_346

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_346

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3f3
    .catchall {:try_start_350 .. :try_end_3f3} :catchall_1df

    goto/16 :goto_346
.end method
