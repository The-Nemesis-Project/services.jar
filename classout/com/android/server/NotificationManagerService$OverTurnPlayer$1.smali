.class Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

.field final synthetic val$this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Lcom/android/server/NotificationManagerService;)V
    .registers 3

    .prologue
    .line 3112
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->val$this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 6
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    const/4 v3, 0x0

    .line 3114
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 3132
    :goto_8
    return-void

    .line 3117
    :pswitch_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 3118
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_1a

    .line 3119
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_6b
    .catchall {:try_start_9 .. :try_end_1a} :catchall_42

    .line 3123
    :cond_1a
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3124
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3126
    :cond_33
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3128
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    :goto_3e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3123
    :catchall_42
    move-exception v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3124
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3126
    :cond_5c
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v2, v3}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3128
    const-string v2, "STATUSBAR-NotificationService"

    const-string v3, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    throw v1

    .line 3121
    :catch_6b
    move-exception v1

    .line 3123
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 3124
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3126
    :cond_85
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 3128
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    goto :goto_3e

    .line 3114
    nop

    :pswitch_data_92
    .packed-switch 0xa
        :pswitch_9
    .end packed-switch
.end method