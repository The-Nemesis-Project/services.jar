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
    .line 713
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    .line 714
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 715
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 719
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_8e

    .line 768
    :goto_5
    return-void

    .line 721
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 723
    .local v2, "bounds":Landroid/graphics/Region;
    :try_start_a
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/IMagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_17
    .catchall {:try_start_a .. :try_end_13} :catchall_1c

    .line 727
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_5

    .line 724
    :catch_17
    move-exception v7

    .line 727
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_5

    :catchall_1c
    move-exception v7

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    throw v7

    .line 731
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 732
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 733
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 734
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 735
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 737
    .local v1, "bottom":I
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v3, v6, v4, v1}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_3a
    .catchall {:try_start_2d .. :try_end_36} :catchall_3f

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    .line 738
    :catch_3a
    move-exception v7

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_3f
    move-exception v7

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v7

    .line 746
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_44
    :try_start_44
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/IMagnificationCallbacks;->onUserContextChanged()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_5

    .line 747
    :catch_4e
    move-exception v7

    goto :goto_5

    .line 752
    :pswitch_50
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 754
    .local v5, "rotation":I
    :try_start_52
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/IMagnificationCallbacks;->onRotationChanged(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_5

    .line 755
    :catch_5c
    move-exception v7

    goto :goto_5

    .line 760
    .end local v5    # "rotation":I
    :pswitch_5e
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 761
    :try_start_67
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 762
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 763
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 765
    :cond_87
    monitor-exit v8

    goto/16 :goto_5

    :catchall_8a
    move-exception v7

    monitor-exit v8
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_8a

    throw v7

    .line 719
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
        :pswitch_44
        :pswitch_50
        :pswitch_5e
    .end packed-switch
.end method
