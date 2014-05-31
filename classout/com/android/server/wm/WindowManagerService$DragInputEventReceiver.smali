.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 696
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 697
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 701
    const/4 v4, 0x0

    .line 703
    .local v4, "handled":Z
    :try_start_1
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_3e

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3e

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_3e

    .line 706
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    .line 707
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 708
    .local v2, "endDrag":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 709
    .local v6, "newX":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 710
    .local v7, "newY":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_42

    const/4 v3, 0x1

    .line 712
    .local v3, "externalDisplay":Z
    :goto_27
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_7e

    .line 740
    :goto_2e
    :pswitch_2e
    if-eqz v2, :cond_3d

    .line 743
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_55
    .catchall {:try_start_1 .. :try_end_35} :catchall_73

    .line 744
    :try_start_35
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 745
    monitor-exit v9
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_7a

    .line 748
    :cond_3d
    const/4 v4, 0x1

    .line 753
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :cond_3e
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 755
    :goto_41
    return-void

    .line 710
    .restart local v2    # "endDrag":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_42
    const/4 v3, 0x0

    goto :goto_27

    .line 720
    .restart local v3    # "externalDisplay":Z
    :pswitch_44
    :try_start_44
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_55
    .catchall {:try_start_44 .. :try_end_49} :catchall_73

    .line 722
    :try_start_49
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    .line 723
    monitor-exit v9

    goto :goto_2e

    :catchall_52
    move-exception v8

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    :try_start_54
    throw v8
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_73

    .line 750
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catch_55
    move-exception v1

    .line 751
    .local v1, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v8, "WindowManager"

    const-string v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_73

    .line 753
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_41

    .line 729
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :pswitch_61
    :try_start_61
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_55
    .catchall {:try_start_61 .. :try_end_66} :catchall_73

    .line 730
    :try_start_66
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v2

    .line 731
    monitor-exit v9

    goto :goto_2e

    :catchall_70
    move-exception v8

    monitor-exit v9
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_70

    :try_start_72
    throw v8
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_55
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 753
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catchall_73
    move-exception v8

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8

    .line 736
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :pswitch_78
    const/4 v2, 0x1

    goto :goto_2e

    .line 745
    :catchall_7a
    move-exception v8

    :try_start_7b
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v8
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7d} :catch_55
    .catchall {:try_start_7c .. :try_end_7d} :catchall_73

    .line 712
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_61
        :pswitch_44
        :pswitch_78
    .end packed-switch
.end method
