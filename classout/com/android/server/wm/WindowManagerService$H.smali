.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_FREEZE_TIMEOUT:I = 0x64

.field public static final ACTIVITY_UNFREEZE:I = 0x65

.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATOR_WHAT_OFFSET:I = 0x186a0

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CLEAR_PENDING_ACTIONS:I = 0x186a2

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final NOTIFY_SYSTEMUI_UPDATED:I = 0x3e9

.field public static final OTHER_APP_TOUCHED:I = 0x3e8

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SET_TRANSPARENT_REGION:I = 0x186a1

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 9071
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9072
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9079
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_794

    .line 9617
    :cond_7
    :goto_7
    return-void

    .line 9083
    :sswitch_8
    const/16 v18, 0x0

    .line 9084
    .local v18, "focusDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v17, 0x0

    .line 9086
    .local v17, "focusChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9087
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    .line 9088
    .local v21, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 9089
    .local v24, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_31

    .line 9090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v18

    .line 9093
    :cond_31
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_46

    if-eqz v18, :cond_46

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayContent;->getFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_46

    .line 9096
    monitor-exit v3

    goto :goto_7

    .line 9113
    .end local v21    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v24    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_43

    throw v2

    .line 9098
    .restart local v21    # "lastFocus":Lcom/android/server/wm/WindowState;
    .restart local v24    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_46
    :try_start_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 9101
    if-eqz v24, :cond_6f

    if-eqz v21, :cond_6f

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 9106
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-ne v2, v4, :cond_6f

    .line 9108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9109
    const/16 v21, 0x0

    .line 9113
    :cond_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_46 .. :try_end_70} :catchall_43

    .line 9114
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_80

    if-eqz v18, :cond_131

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayContent;->getFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_131

    .line 9118
    :cond_80
    if-eqz v24, :cond_c1

    .line 9120
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 9123
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusWindow(Lcom/android/server/wm/WindowState;)V

    .line 9126
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    and-int/lit8 v39, v2, 0xf

    .line 9127
    .local v39, "zoneInfo":I
    if-eqz v39, :cond_ba

    .line 9128
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9129
    .local v25, "notifyFocusIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9133
    .end local v25    # "notifyFocusIntent":Landroid/content/Intent;
    :cond_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)V

    .line 9137
    .end local v39    # "zoneInfo":I
    :cond_c1
    const/16 v19, 0x0

    .line 9138
    .local v19, "focusWindowForOtherDisplay":Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_117

    .line 9139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 9140
    .local v15, "displayCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_d1
    move/from16 v0, v20

    if-ge v0, v15, :cond_117

    .line 9141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/DisplayContent;

    .line 9142
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_114

    .line 9143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowByDisplay(I)Lcom/android/server/wm/WindowState;

    move-result-object v19

    .line 9144
    if-eqz v19, :cond_114

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_114

    .line 9147
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/server/wm/DisplayContent;->setFocusWindow(Lcom/android/server/wm/WindowState;)V

    .line 9148
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 9140
    :cond_114
    add-int/lit8 v20, v20, 0x1

    goto :goto_d1

    .line 9155
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayCount":I
    .end local v20    # "i":I
    :cond_117
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_131

    if-eqz v21, :cond_131

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_131

    .line 9159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 9164
    .end local v19    # "focusWindowForOtherDisplay":Lcom/android/server/wm/WindowState;
    :cond_131
    # getter for: Lcom/android/server/wm/WindowManagerService;->mbEnableHoveringUI:Z
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v2, :cond_7

    .line 9165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto/16 :goto_7

    .line 9174
    .end local v17    # "focusChanged":Z
    .end local v18    # "focusDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v21    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v24    # "newFocus":Lcom/android/server/wm/WindowState;
    :sswitch_150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9175
    :try_start_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 9176
    .local v22, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 9177
    monitor-exit v3
    :try_end_16b
    .catchall {:try_start_157 .. :try_end_16b} :catchall_18c

    .line 9179
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 9180
    .local v12, "N":I
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_171
    move/from16 v0, v20

    if-ge v0, v12, :cond_7

    .line 9182
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 9180
    add-int/lit8 v20, v20, 0x1

    goto :goto_171

    .line 9177
    .end local v12    # "N":I
    .end local v20    # "i":I
    .end local v22    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_18c
    move-exception v2

    :try_start_18d
    monitor-exit v3
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    throw v2

    .line 9187
    :sswitch_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9188
    :try_start_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 9189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 9190
    monitor-exit v3

    goto/16 :goto_7

    :catchall_1a7
    move-exception v2

    monitor-exit v3
    :try_end_1a9
    .catchall {:try_start_196 .. :try_end_1a9} :catchall_1a7

    throw v2

    .line 9194
    :sswitch_1aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 9195
    .local v38, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v29, v0

    .line 9197
    .local v29, "sd":Lcom/android/server/wm/StartingData;
    if-eqz v29, :cond_7

    .line 9205
    const/16 v33, 0x0

    .line 9207
    .local v33, "view":Landroid/view/View;
    :try_start_1bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v29

    iget v10, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    move-object/from16 v0, v38

    iget v11, v0, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1e9} :catch_231

    move-result-object v33

    .line 9214
    :goto_1ea
    if-eqz v33, :cond_246

    .line 9215
    const/4 v13, 0x0

    .line 9217
    .local v13, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9218
    :try_start_1f4
    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_200

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_23c

    .line 9221
    :cond_200
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_211

    .line 9226
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 9227
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 9228
    const/4 v13, 0x1

    .line 9238
    :cond_211
    :goto_211
    monitor-exit v3
    :try_end_212
    .catchall {:try_start_1f4 .. :try_end_212} :catchall_243

    .line 9240
    if-eqz v13, :cond_7

    .line 9242
    :try_start_214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v33

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_223} :catch_225

    goto/16 :goto_7

    .line 9243
    :catch_225
    move-exception v16

    .line 9244
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 9210
    .end local v13    # "abort":Z
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_231
    move-exception v16

    .line 9211
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ea

    .line 9231
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v13    # "abort":Z
    :cond_23c
    :try_start_23c
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_211

    .line 9238
    :catchall_243
    move-exception v2

    monitor-exit v3
    :try_end_245
    .catchall {:try_start_23c .. :try_end_245} :catchall_243

    throw v2

    .line 9250
    .end local v13    # "abort":Z
    :cond_246
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 9251
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 9252
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 9253
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_7

    .line 9259
    .end local v29    # "sd":Lcom/android/server/wm/StartingData;
    .end local v33    # "view":Landroid/view/View;
    .end local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_25c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 9260
    .restart local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v32, 0x0

    .line 9261
    .local v32, "token":Landroid/os/IBinder;
    const/16 v33, 0x0

    .line 9262
    .restart local v33    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9267
    :try_start_26f
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_295

    .line 9268
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 9269
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v32, v0

    .line 9270
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 9271
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 9272
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 9273
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 9275
    :cond_295
    monitor-exit v3
    :try_end_296
    .catchall {:try_start_26f .. :try_end_296} :catchall_2b3

    .line 9276
    if-eqz v33, :cond_7

    .line 9278
    :try_start_298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_2a5
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2a5} :catch_2a7

    goto/16 :goto_7

    .line 9279
    :catch_2a7
    move-exception v16

    .line 9280
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 9275
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_2b3
    move-exception v2

    :try_start_2b4
    monitor-exit v3
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b3

    throw v2

    .line 9286
    .end local v32    # "token":Landroid/os/IBinder;
    .end local v33    # "view":Landroid/view/View;
    .end local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_2b6
    const/16 v32, 0x0

    .line 9287
    .restart local v32    # "token":Landroid/os/IBinder;
    const/16 v33, 0x0

    .line 9289
    .restart local v33    # "view":Landroid/view/View;
    :goto_2ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9290
    :try_start_2c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 9291
    .restart local v12    # "N":I
    if-gtz v12, :cond_2d3

    .line 9292
    monitor-exit v3

    goto/16 :goto_7

    .line 9311
    .end local v12    # "N":I
    :catchall_2d0
    move-exception v2

    monitor-exit v3
    :try_end_2d2
    .catchall {:try_start_2c1 .. :try_end_2d2} :catchall_2d0

    throw v2

    .line 9294
    .restart local v12    # "N":I
    :cond_2d3
    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 9301
    .restart local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_2e9

    .line 9302
    monitor-exit v3

    goto :goto_2ba

    .line 9305
    :cond_2e9
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 9306
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v32, v0

    .line 9307
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 9308
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 9309
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 9310
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 9311
    monitor-exit v3
    :try_end_30a
    .catchall {:try_start_2d3 .. :try_end_30a} :catchall_2d0

    .line 9314
    :try_start_30a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_317} :catch_318

    goto :goto_2ba

    .line 9315
    :catch_318
    move-exception v16

    .line 9316
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ba

    .line 9322
    .end local v12    # "N":I
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v32    # "token":Landroid/os/IBinder;
    .end local v33    # "view":Landroid/view/View;
    .end local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_323
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 9327
    .restart local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_32b
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_332
    .catch Landroid/os/RemoteException; {:try_start_32b .. :try_end_332} :catch_334

    goto/16 :goto_7

    .line 9328
    :catch_334
    move-exception v2

    goto/16 :goto_7

    .line 9333
    .end local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_337
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/wm/AppWindowToken;

    .line 9335
    .restart local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_35d

    const/16 v27, 0x1

    .line 9336
    .local v27, "nowVisible":Z
    :goto_347
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_360

    const/16 v26, 0x1

    .line 9343
    .local v26, "nowGone":Z
    :goto_34f
    if-eqz v27, :cond_363

    .line 9344
    :try_start_351
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_7

    .line 9348
    :catch_35a
    move-exception v2

    goto/16 :goto_7

    .line 9335
    .end local v26    # "nowGone":Z
    .end local v27    # "nowVisible":Z
    :cond_35d
    const/16 v27, 0x0

    goto :goto_347

    .line 9336
    .restart local v27    # "nowVisible":Z
    :cond_360
    const/16 v26, 0x0

    goto :goto_34f

    .line 9346
    .restart local v26    # "nowGone":Z
    :cond_363
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_36a
    .catch Landroid/os/RemoteException; {:try_start_351 .. :try_end_36a} :catch_35a

    goto/16 :goto_7

    .line 9354
    .end local v26    # "nowGone":Z
    .end local v27    # "nowVisible":Z
    .end local v38    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_36c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9355
    :try_start_373
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v37

    .line 9357
    .local v37, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    .line 9358
    .restart local v20    # "i":I
    :cond_386
    :goto_386
    if-lez v20, :cond_3cd

    .line 9359
    add-int/lit8 v20, v20, -0x1

    .line 9360
    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wm/WindowState;

    .line 9361
    .local v34, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v34

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_386

    .line 9362
    const/4 v2, 0x0

    move-object/from16 v0, v34

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 9363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v34

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 9365
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_386

    .line 9369
    .end local v20    # "i":I
    .end local v34    # "w":Lcom/android/server/wm/WindowState;
    .end local v37    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_3ca
    move-exception v2

    monitor-exit v3
    :try_end_3cc
    .catchall {:try_start_373 .. :try_end_3cc} :catchall_3ca

    throw v2

    .line 9368
    .restart local v20    # "i":I
    .restart local v37    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3cd
    :try_start_3cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 9369
    monitor-exit v3
    :try_end_3d5
    .catchall {:try_start_3cd .. :try_end_3d5} :catchall_3ca

    goto/16 :goto_7

    .line 9374
    .end local v20    # "i":I
    .end local v37    # "windows":Lcom/android/server/wm/WindowList;
    :sswitch_3d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9375
    :try_start_3de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_412

    .line 9377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 9378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 9382
    :cond_412
    monitor-exit v3

    goto/16 :goto_7

    :catchall_415
    move-exception v2

    monitor-exit v3
    :try_end_417
    .catchall {:try_start_3de .. :try_end_417} :catchall_415

    throw v2

    .line 9387
    :sswitch_418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 9389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 9391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_7

    .line 9397
    :sswitch_459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9400
    :try_start_460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_472

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_481

    .line 9403
    :cond_472
    const/16 v2, 0xf

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 9404
    monitor-exit v3

    goto/16 :goto_7

    .line 9411
    :catchall_47e
    move-exception v2

    monitor-exit v3
    :try_end_480
    .catchall {:try_start_460 .. :try_end_480} :catchall_47e

    throw v2

    .line 9408
    :cond_481
    :try_start_481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_48c

    .line 9409
    monitor-exit v3

    goto/16 :goto_7

    .line 9411
    :cond_48c
    monitor-exit v3
    :try_end_48d
    .catchall {:try_start_481 .. :try_end_48d} :catchall_47e

    .line 9412
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_7

    .line 9417
    :sswitch_496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_7

    .line 9422
    :sswitch_49f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9423
    :try_start_4a6
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 9425
    .restart local v20    # "i":I
    :cond_4b7
    :goto_4b7
    if-lez v20, :cond_4fa

    .line 9426
    add-int/lit8 v20, v20, -0x1

    .line 9427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/AppWindowToken;

    .line 9428
    .local v31, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_4b7

    .line 9429
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    goto :goto_4b7

    .line 9433
    .end local v20    # "i":I
    .end local v31    # "tok":Lcom/android/server/wm/AppWindowToken;
    :catchall_4f7
    move-exception v2

    monitor-exit v3
    :try_end_4f9
    .catchall {:try_start_4a6 .. :try_end_4f9} :catchall_4f7

    throw v2

    .restart local v20    # "i":I
    :cond_4fa
    :try_start_4fa
    monitor-exit v3
    :try_end_4fb
    .catchall {:try_start_4fa .. :try_end_4fb} :catchall_4f7

    goto/16 :goto_7

    .line 9438
    .end local v20    # "i":I
    :sswitch_4fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9439
    :try_start_504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_522

    .line 9440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 9441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 9442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    .line 9444
    :cond_522
    monitor-exit v3

    goto/16 :goto_7

    :catchall_525
    move-exception v2

    monitor-exit v3
    :try_end_527
    .catchall {:try_start_504 .. :try_end_527} :catchall_525

    throw v2

    .line 9450
    :sswitch_528
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: ACTIVITY_FREEZE_TIMEOUT (mActivityFreezingScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9452
    :try_start_553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    if-eqz v2, :cond_569

    .line 9453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    .line 9454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    .line 9456
    :cond_569
    monitor-exit v3

    goto/16 :goto_7

    :catchall_56c
    move-exception v2

    monitor-exit v3
    :try_end_56e
    .catchall {:try_start_553 .. :try_end_56e} :catchall_56c

    throw v2

    .line 9461
    :sswitch_56f
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: ACTIVITY_UNFREEZE (mActivityFreezingScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9463
    :try_start_59a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    if-eqz v2, :cond_5b0

    .line 9464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mActivityFreezingScreen:Z

    .line 9465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)V

    .line 9467
    :cond_5b0
    monitor-exit v3

    goto/16 :goto_7

    :catchall_5b3
    move-exception v2

    monitor-exit v3
    :try_end_5b5
    .catchall {:try_start_59a .. :try_end_5b5} :catchall_5b3

    throw v2

    .line 9473
    :sswitch_5b6
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_7

    .line 9479
    :sswitch_5c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9481
    :try_start_5d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1602(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 9482
    monitor-exit v3
    :try_end_5e0
    .catchall {:try_start_5d7 .. :try_end_5e0} :catchall_5e9

    .line 9483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_7

    .line 9482
    :catchall_5e9
    move-exception v2

    :try_start_5ea
    monitor-exit v3
    :try_end_5eb
    .catchall {:try_start_5ea .. :try_end_5eb} :catchall_5e9

    throw v2

    .line 9489
    :sswitch_5ec
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/IBinder;

    .line 9493
    .local v35, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9495
    :try_start_5fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_626

    .line 9496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 9497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 9499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 9501
    :cond_626
    monitor-exit v3

    goto/16 :goto_7

    :catchall_629
    move-exception v2

    monitor-exit v3
    :try_end_62b
    .catchall {:try_start_5fb .. :try_end_62b} :catchall_629

    throw v2

    .line 9506
    .end local v35    # "win":Landroid/os/IBinder;
    :sswitch_62c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/IBinder;

    .line 9510
    .restart local v35    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9512
    :try_start_63b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_655

    .line 9513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 9514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 9516
    :cond_655
    monitor-exit v3

    goto/16 :goto_7

    :catchall_658
    move-exception v2

    monitor-exit v3
    :try_end_65a
    .catchall {:try_start_63b .. :try_end_65a} :catchall_658

    throw v2

    .line 9521
    .end local v35    # "win":Landroid/os/IBinder;
    :sswitch_65b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_7

    .line 9528
    :sswitch_664
    :try_start_664
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wm/WindowState;

    .line 9529
    .local v36, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_7

    .line 9533
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v23

    .line 9534
    .local v23, "mws":Lcom/android/server/am/MultiWindowManagerService;
    if-eqz v23, :cond_7

    .line 9535
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v2, v2, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_686

    .line 9536
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/MultiWindowManagerService;->setMinimizeStackedIcon()V

    .line 9538
    :cond_686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v30

    .line 9539
    .local v30, "taskId":I
    if-gez v30, :cond_6ab

    .line 9540
    # getter for: Lcom/android/server/wm/WindowManagerService;->DEBUG_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9541
    const-string v2, "WindowManager"

    const-string v3, "taskId is not exist. do nothing for MW"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 9547
    .end local v23    # "mws":Lcom/android/server/am/MultiWindowManagerService;
    .end local v30    # "taskId":I
    .end local v36    # "windowState":Lcom/android/server/wm/WindowState;
    :catch_6a8
    move-exception v2

    goto/16 :goto_7

    .line 9545
    .restart local v23    # "mws":Lcom/android/server/am/MultiWindowManagerService;
    .restart local v30    # "taskId":I
    .restart local v36    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move/from16 v0, v30

    invoke-interface {v2, v0, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_6b8
    .catch Landroid/os/RemoteException; {:try_start_664 .. :try_end_6b8} :catch_6a8
    .catch Ljava/lang/NullPointerException; {:try_start_664 .. :try_end_6b8} :catch_6ba

    goto/16 :goto_7

    .line 9548
    .end local v23    # "mws":Lcom/android/server/am/MultiWindowManagerService;
    .end local v30    # "taskId":I
    .end local v36    # "windowState":Lcom/android/server/wm/WindowState;
    :catch_6ba
    move-exception v2

    goto/16 :goto_7

    .line 9555
    :sswitch_6bd
    :try_start_6bd
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v23

    .line 9556
    .restart local v23    # "mws":Lcom/android/server/am/MultiWindowManagerService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/MultiWindowManagerService;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->resizeArrangedWindow(ILandroid/graphics/Point;)V
    :try_end_6cf
    .catch Landroid/os/RemoteException; {:try_start_6bd .. :try_end_6cf} :catch_6d1

    goto/16 :goto_7

    .line 9557
    .end local v23    # "mws":Lcom/android/server/am/MultiWindowManagerService;
    :catch_6d1
    move-exception v2

    goto/16 :goto_7

    .line 9563
    :sswitch_6d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_7

    .line 9569
    :sswitch_6dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9570
    :try_start_6e4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/util/Pair;

    .line 9571
    .local v28, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71c

    .line 9573
    monitor-exit v3

    goto/16 :goto_7

    .line 9575
    .end local v28    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :catchall_719
    move-exception v2

    monitor-exit v3
    :try_end_71b
    .catchall {:try_start_6e4 .. :try_end_71b} :catchall_719

    throw v2

    .restart local v28    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_71c
    :try_start_71c
    monitor-exit v3
    :try_end_71d
    .catchall {:try_start_71c .. :try_end_71d} :catchall_719

    .line 9577
    :try_start_71d
    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_727
    .catch Landroid/os/RemoteException; {:try_start_71d .. :try_end_727} :catch_729

    goto/16 :goto_7

    .line 9578
    :catch_729
    move-exception v2

    goto/16 :goto_7

    .line 9584
    .end local v28    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :sswitch_72c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_7

    .line 9590
    :sswitch_73d
    :try_start_73d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_747
    .catch Landroid/os/RemoteException; {:try_start_73d .. :try_end_747} :catch_749

    goto/16 :goto_7

    .line 9591
    :catch_749
    move-exception v2

    goto/16 :goto_7

    .line 9597
    :sswitch_74c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9598
    :try_start_753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayAddedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;I)V

    .line 9599
    monitor-exit v3

    goto/16 :goto_7

    :catchall_761
    move-exception v2

    monitor-exit v3
    :try_end_763
    .catchall {:try_start_753 .. :try_end_763} :catchall_761

    throw v2

    .line 9603
    :sswitch_764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9604
    :try_start_76b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;I)V

    .line 9605
    monitor-exit v3

    goto/16 :goto_7

    :catchall_779
    move-exception v2

    monitor-exit v3
    :try_end_77b
    .catchall {:try_start_76b .. :try_end_77b} :catchall_779

    throw v2

    .line 9609
    :sswitch_77c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9610
    :try_start_783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2100(Lcom/android/server/wm/WindowManagerService;I)V

    .line 9611
    monitor-exit v3

    goto/16 :goto_7

    :catchall_791
    move-exception v2

    monitor-exit v3
    :try_end_793
    .catchall {:try_start_783 .. :try_end_793} :catchall_791

    throw v2

    .line 9079
    :sswitch_data_794
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_150
        0x4 -> :sswitch_18f
        0x5 -> :sswitch_1aa
        0x6 -> :sswitch_25c
        0x7 -> :sswitch_2b6
        0x8 -> :sswitch_337
        0x9 -> :sswitch_323
        0xb -> :sswitch_36c
        0xd -> :sswitch_3d7
        0xe -> :sswitch_418
        0xf -> :sswitch_459
        0x10 -> :sswitch_496
        0x11 -> :sswitch_49f
        0x12 -> :sswitch_5b6
        0x13 -> :sswitch_5c6
        0x14 -> :sswitch_5ec
        0x15 -> :sswitch_62c
        0x16 -> :sswitch_65b
        0x17 -> :sswitch_6d4
        0x18 -> :sswitch_6dd
        0x19 -> :sswitch_72c
        0x1a -> :sswitch_73d
        0x1b -> :sswitch_74c
        0x1c -> :sswitch_764
        0x1d -> :sswitch_77c
        0x1e -> :sswitch_4fd
        0x64 -> :sswitch_528
        0x65 -> :sswitch_56f
        0x3e8 -> :sswitch_664
        0x3e9 -> :sswitch_6bd
    .end sparse-switch
.end method
