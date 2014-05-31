.class final Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 323
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 343
    :goto_5
    return-void

    .line 329
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->debounceRgbSensor()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$600(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 332
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$700(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 335
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$800(Lcom/android/server/AdaptiveDisplayColorService;Z)V

    goto :goto_5

    .line 338
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$800(Lcom/android/server/AdaptiveDisplayColorService;Z)V

    goto :goto_5

    .line 327
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method
