.class final Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoPowerOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 4387
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4387
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 4390
    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] AutoPowerOffReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4394
    :try_start_f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    .line 4395
    .local v0, "isAutoPowerOff":Z
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_25

    .line 4396
    if-eqz v0, :cond_28

    .line 4397
    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] auto power off already. It\'s canceled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimer()V

    .line 4404
    :goto_24
    return-void

    .line 4395
    .end local v0    # "isAutoPowerOff":Z
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 4402
    .restart local v0    # "isAutoPowerOff":Z
    :cond_28
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4403
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    const-string v3, "AutoPowerOff"

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    invoke-static {v1, v4, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V

    goto :goto_24
.end method
