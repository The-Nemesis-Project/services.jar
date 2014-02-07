.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MINIMIZE_EXPANDED_ICON:I = 0x1

.field private static final MSG_MINIMIZE_STACKED_ICON:I = 0x2

.field private static final MSG_RELAUNCH_ALL_EXTERNAL_ACTIVITY:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 660
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 661
    .local v5, "size":I
    const/4 v4, 0x0

    .line 662
    .local v4, "shiftX":I
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_106

    .line 705
    :cond_e
    :goto_e
    return-void

    .line 664
    :pswitch_f
    if-eqz v5, :cond_e

    .line 667
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 668
    const/4 v4, 0x0

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    if-ge v0, v5, :cond_79

    .line 670
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 671
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 672
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_6f

    .line 673
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iget v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 674
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 676
    :cond_6f
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$700(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v7

    add-int/2addr v4, v7

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 678
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :cond_79
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->access$802(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_e

    .line 681
    .end local v0    # "i":I
    :pswitch_80
    if-eqz v5, :cond_e

    .line 684
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 685
    const/4 v4, 0x0

    .line 686
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9d
    if-ge v0, v5, :cond_ea

    .line 687
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 688
    .restart local v6    # "winInfo":Landroid/os/Bundle;
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 689
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_e0

    .line 690
    iget v7, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v7, v4

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 691
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 693
    :cond_e0
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$300(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v7

    add-int/2addr v4, v7

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 695
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :cond_ea
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->access$802(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto/16 :goto_e

    .line 698
    .end local v0    # "i":I
    :pswitch_f2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 699
    .local v2, "origId":J
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->relaunchAllExternalActivityLocked()V

    .line 700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e

    .line 662
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_f
        :pswitch_80
        :pswitch_f2
    .end packed-switch
.end method
