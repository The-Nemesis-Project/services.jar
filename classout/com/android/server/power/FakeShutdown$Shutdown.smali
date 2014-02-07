.class Lcom/android/server/power/FakeShutdown$Shutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shutdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/FakeShutdown;
    .param p2, "x1"    # Lcom/android/server/power/FakeShutdown$1;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Shutdown;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFakeShutdown, FAKE_STATE = DOWN_START"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    # getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 343
    const/4 v0, 0x1

    :try_start_f
    # setter for: Lcom/android/server/power/FakeShutdown;->sFakeState:I
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1002(I)I

    .line 344
    const-string v0, "sys.fakeShutdown.state"

    const-string v2, "power_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_de

    .line 347
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->prepareAutoPowerOffSound()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1400(Lcom/android/server/power/FakeShutdown;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v1

    # invokes: Lcom/android/server/power/FakeShutdown;->waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1500(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->killAllActivities()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1600(Lcom/android/server/power/FakeShutdown;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$802(Lcom/android/server/power/FakeShutdown;I)I

    .line 357
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$602(Lcom/android/server/power/FakeShutdown;I)I

    .line 360
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oldAirplaneMode"

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v0

    if-eq v0, v3, :cond_77

    .line 363
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(Landroid/content/Context;I)V
    invoke-static {v0, v3}, Lcom/android/server/power/FakeShutdown;->access$700(Landroid/content/Context;I)V

    .line 367
    :cond_77
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$800(Lcom/android/server/power/FakeShutdown;)I

    move-result v0

    if-ne v0, v3, :cond_93

    .line 368
    const-string v0, "FakeShutdown"

    const-string v1, "!@ [p9p9] Settings.Secure.putInt - BLUETOOTH_ON 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    :cond_93
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v1

    # invokes: Lcom/android/server/power/FakeShutdown;->waitForAnimEnd(Lcom/android/server/power/ShutdownDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1700(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v1, 0xa

    # invokes: Lcom/android/server/power/FakeShutdown;->waitForPhoneOff(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1800(Lcom/android/server/power/FakeShutdown;I)V

    .line 378
    # getter for: Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->playAutoPowerOffSound()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1900(Lcom/android/server/power/FakeShutdown;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v1, 0x1f4

    # invokes: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/server/power/FakeShutdown;->access$300(Lcom/android/server/power/FakeShutdown;IZ)V

    .line 384
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v1, 0x18

    # invokes: Lcom/android/server/power/FakeShutdown;->bookSilentShutdownAfterHours(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$2000(Lcom/android/server/power/FakeShutdown;I)V

    .line 385
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    .line 387
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->enableShutdownAgain()V

    .line 388
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    # invokes: Lcom/android/server/power/FakeShutdown;->powerManagerFakeShutdown()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2100(Lcom/android/server/power/FakeShutdown;)V

    .line 390
    const-string v0, "FakeShutdown"

    const-string v1, "!@shutdown finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 345
    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0
.end method
