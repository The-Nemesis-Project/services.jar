.class Lcom/android/server/wm/DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    .line 713
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 714
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 718
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_86

    .line 767
    :goto_5
    return-void

    .line 720
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 722
    .local v2, "bounds":Landroid/graphics/Region;
    :try_start_a
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/IMagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_84
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 726
    :goto_13
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_5

    :catchall_17
    move-exception v7

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    throw v7

    .line 730
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 731
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 732
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 733
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 734
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 736
    .local v1, "bottom":I
    :try_start_28
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v3, v6, v4, v1}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_82
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 740
    :goto_31
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_35
    move-exception v7

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v7

    .line 745
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_3a
    :try_start_3a
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/IMagnificationCallbacks;->onUserContextChanged()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_5

    .line 746
    :catch_44
    move-exception v7

    goto :goto_5

    .line 751
    :pswitch_46
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 753
    .local v5, "rotation":I
    :try_start_48
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/IMagnificationCallbacks;->onRotationChanged(I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_5

    .line 754
    :catch_52
    move-exception v7

    goto :goto_5

    .line 759
    .end local v5    # "rotation":I
    :pswitch_54
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 760
    :try_start_5d
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 761
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 762
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 764
    :cond_7d
    monitor-exit v8

    goto :goto_5

    :catchall_7f
    move-exception v7

    monitor-exit v8
    :try_end_81
    .catchall {:try_start_5d .. :try_end_81} :catchall_7f

    throw v7

    .line 737
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v6    # "top":I
    :catch_82
    move-exception v7

    goto :goto_31

    .line 723
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    .restart local v2    # "bounds":Landroid/graphics/Region;
    :catch_84
    move-exception v7

    goto :goto_13

    .line 718
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1c
        :pswitch_3a
        :pswitch_46
        :pswitch_54
    .end packed-switch
.end method
