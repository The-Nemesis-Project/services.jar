.class Lcom/android/server/power/FakeShutdown$1;
.super Landroid/content/BroadcastReceiver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/FakeShutdown;->waitForIntentBrDone(Landroid/content/Intent;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$1;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 681
    const-string v0, "FakeShutdown"

    const-string v1, "wait for intent broadcast done"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$1;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2200(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 688
    :goto_f
    return-void

    .line 685
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$1;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2200(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 686
    :try_start_17
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$1;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2200(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 687
    monitor-exit v1

    goto :goto_f

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_22

    throw v0
.end method
