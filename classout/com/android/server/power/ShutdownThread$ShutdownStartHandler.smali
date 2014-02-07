.class Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutdownStartHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 708
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->context:Landroid/content/Context;

    .line 710
    return-void
.end method


# virtual methods
.method checkTaAndSendShutdownMessage(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 731
    new-instance v0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;-><init>(Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 744
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 714
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 728
    :goto_5
    return-void

    .line 717
    :pswitch_6
    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$702(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog;

    .line 718
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Lcom/android/server/power/ShutdownDialog;

    move-result-object v0

    const-string v1, "/system/media/warmdown.qmg"

    const-string v2, "/system/media/audio/ui/Tab.ogg"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Lcom/android/server/power/ShutdownDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 721
    const-string v0, "ShutdownThread"

    const-string v1, "mNeedFake, start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v0, Lcom/android/server/power/FakeShutdown;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->context:Landroid/content/Context;

    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Lcom/android/server/power/ShutdownDialog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;)V

    invoke-virtual {v0}, Lcom/android/server/power/FakeShutdown;->shutdown()V

    goto :goto_5

    .line 725
    :pswitch_38
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->normalShutdown(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$800(Landroid/content/Context;)V

    goto :goto_5

    .line 714
    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_6
        :pswitch_38
    .end packed-switch
.end method
