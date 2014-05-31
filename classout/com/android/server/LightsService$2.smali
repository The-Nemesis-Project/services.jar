.class Lcom/android/server/LightsService$2;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 413
    monitor-enter p0

    .line 415
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 420
    :goto_6
    monitor-exit p0

    .line 421
    return-void

    .line 417
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-virtual {v0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    goto :goto_6

    .line 420
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 415
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
