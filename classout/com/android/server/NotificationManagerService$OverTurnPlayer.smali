.class Lcom/android/server/NotificationManagerService$OverTurnPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverTurnPlayer"
.end annotation


# instance fields
.field private mIsRegister:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionOn:Z

.field private mOverTurnOn:Z

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 3

    .prologue
    .line 3244
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3245
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->registerObs()V

    .line 3246
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->update()V

    .line 3248
    new-instance v0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;-><init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Lcom/android/server/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 3270
    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/NotificationManagerService$OverTurnPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    .prologue
    .line 3238
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->update()V

    return-void
.end method

.method private registerObs()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3297
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3298
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;-><init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3304
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer$3;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$5500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer$3;-><init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3310
    return-void
.end method

.method private update()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3313
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3314
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    .line 3315
    iget-boolean v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    if-eqz v1, :cond_23

    .line 3316
    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_26

    :goto_21
    iput-boolean v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mOverTurnOn:Z

    .line 3319
    :cond_23
    return-void

    :cond_24
    move v1, v3

    .line 3314
    goto :goto_13

    :cond_26
    move v2, v3

    .line 3316
    goto :goto_21
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .prologue
    .line 3273
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mOverTurnOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRegister()Z
    .registers 2

    .prologue
    .line 3277
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    return v0
.end method

.method public register()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3281
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    .line 3283
    .local v0, "mrm":Landroid/hardware/motion/MotionRecognitionManager;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 3284
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    .line 3285
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "Reg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    return-void
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 3289
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    .line 3291
    .local v0, "mrm":Landroid/hardware/motion/MotionRecognitionManager;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    .line 3293
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "UnReg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    return-void
.end method
