.class final Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 195
    :goto_5
    return-void

    .line 171
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_5

    .line 174
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$100(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_5

    .line 177
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$200(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_5

    .line 180
    :pswitch_1c
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerService;->access$300(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_5

    .line 183
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$400(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_5

    .line 186
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$500(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_5

    .line 189
    :pswitch_32
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_5

    .line 192
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_5

    .line 169
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_39
    .end packed-switch
.end method
