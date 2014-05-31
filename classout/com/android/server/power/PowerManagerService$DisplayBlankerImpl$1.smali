.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .registers 2

    .prologue
    .line 5094
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 5097
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5098
    :try_start_9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5099
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    .line 5101
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5200(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 5102
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 5103
    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5300(Z)V

    .line 5104
    const-string v1, "nativeSetInteractive(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5105
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 5107
    const-string v1, "mDisplayManagerService.blankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5108
    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5500(Z)V

    .line 5109
    const-string v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5111
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5602(Lcom/android/server/power/PowerManagerService;I)I

    .line 5113
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$5702(Lcom/android/server/power/PowerManagerService;J)J

    .line 5114
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5118
    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    const-string v1, "lcd"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 5143
    :goto_81
    monitor-exit v2

    .line 5144
    return-void

    .line 5124
    :cond_83
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 5125
    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5500(Z)V

    .line 5126
    const-string v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5127
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 5129
    const-string v1, "mDisplayManagerService.unblankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5130
    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5300(Z)V

    .line 5131
    const-string v1, "nativeSetInteractive(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5132
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "wakeUp() or wakeUpFromNative()"

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 5134
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5138
    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    const-string v1, "lcd"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_81

    .line 5143
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :catchall_e6
    move-exception v1

    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_9 .. :try_end_e8} :catchall_e6

    throw v1
.end method
