.class Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$PickupPlayer$1;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$PickupPlayer$1;)V
    .registers 2

    .prologue
    .line 3021
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3024
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - mInCall is true, vibration will be returned."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :goto_13
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3034
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3035
    :cond_30
    return-void

    .line 3026
    :cond_31
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - mVibrator.vibrateImmVibe()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    # getter for: Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$4100(Lcom/android/server/NotificationManagerService$PickupPlayer;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 3029
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$4202(Lcom/android/server/NotificationManagerService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3030
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_13
.end method
