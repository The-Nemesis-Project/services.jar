.class Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Landroid/os/Handler;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, -0x1

    .line 357
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_a2

    .line 388
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 391
    :cond_9
    :goto_9
    return-void

    .line 359
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    new-instance v2, Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/smartclip/SmartClipView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$502(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView;

    .line 360
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->setDoubleTapStateBySettingMenu(Z)V

    .line 362
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 363
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x831

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 364
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 368
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 369
    const-string v1, "SPenGesture"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 372
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$302(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 373
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    goto :goto_9

    .line 380
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :pswitch_6d
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 381
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->setCroppingMode(I)V

    .line 382
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    goto/16 :goto_9

    .line 357
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6d
    .end packed-switch
.end method
