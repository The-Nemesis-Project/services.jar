.class final Lcom/android/server/power/ShutdownThread$3;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 390
    const-string v1, "coverOpen"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 391
    .local v0, "newCoverState":Z
    const-string v1, "ShutdownThread"

    const-string v2, "new cover state : %b"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    # getter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v1

    if-eq v1, v0, :cond_31

    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 393
    # invokes: Lcom/android/server/power/ShutdownThread;->restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    invoke-static {p1, v5}, Lcom/android/server/power/ShutdownThread;->access$300(Landroid/content/Context;Z)V

    .line 394
    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 396
    :cond_31
    # setter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 397
    return-void
.end method
