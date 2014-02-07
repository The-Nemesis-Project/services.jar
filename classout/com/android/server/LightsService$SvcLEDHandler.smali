.class final Lcom/android/server/LightsService$SvcLEDHandler;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LightsService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/server/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/LightsService;

    .line 625
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 626
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 630
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 637
    :goto_5
    return-void

    .line 632
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/LightsService;

    # invokes: Lcom/android/server/LightsService;->handleForcedSvcLEDTask()V
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2700(Lcom/android/server/LightsService;)V

    goto :goto_5

    .line 630
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
