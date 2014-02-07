.class Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->checkTaAndSendShutdownMessage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;)V
    .registers 2

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;->this$0:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 734
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 735
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 736
    .local v0, "powerState":I
    const-string v3, "ShutdownThread"

    const-string v4, "powerConnected = %b"

    new-array v5, v1, [Ljava/lang/Object;

    if-ne v0, v1, :cond_29

    :goto_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez v0, :cond_2b

    .line 738
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;->this$0:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->sendEmptyMessage(I)Z

    .line 742
    :goto_28
    return-void

    :cond_29
    move v1, v2

    .line 736
    goto :goto_13

    .line 740
    :cond_2b
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler$1;->this$0:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method
