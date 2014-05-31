.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 614
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 637
    :goto_5
    return-void

    .line 620
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendUserActivity()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)V

    goto :goto_5

    .line 624
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendNextBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    goto :goto_5

    .line 628
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;)V

    goto :goto_5

    .line 633
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->forceReleaseScreenOnBlocker()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)V

    goto :goto_5

    .line 618
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
