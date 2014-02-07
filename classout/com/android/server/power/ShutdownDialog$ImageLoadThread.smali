.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation


# instance fields
.field private final coverBrReceiver:Landroid/content/BroadcastReceiver;

.field private coverStateDirty:Z

.field private coverStateOpen:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 382
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;-><init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    return p1
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .registers 10
    .param p1, "normalQmg"    # Lcom/android/server/power/LibQmg;
    .param p2, "coverQmg"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 435
    move-object v2, p1

    .line 436
    .local v2, "qmg":Lcom/android/server/power/LibQmg;
    if-eqz p2, :cond_7

    .line 437
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    .line 440
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 441
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 442
    const-string v3, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x1

    .line 444
    .local v1, "len":I
    :goto_23
    if-lez v1, :cond_99

    .line 445
    if-eqz p2, :cond_2f

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v3, :cond_2f

    .line 446
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    .line 449
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_40} :catch_91

    move-result v1

    .line 454
    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load frame: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 457
    :try_start_60
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3, v5}, Lcom/android/server/power/ShutdownDialog;->access$2102(Lcom/android/server/power/ShutdownDialog;I)I

    .line 458
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_8e

    move-result v5

    if-ne v3, v5, :cond_8c

    .line 460
    :try_start_81
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_8c} :catch_a2
    .catchall {:try_start_81 .. :try_end_8c} :catchall_8e

    .line 465
    :cond_8c
    :goto_8c
    :try_start_8c
    monitor-exit v4

    goto :goto_23

    :catchall_8e
    move-exception v3

    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_8e

    throw v3

    .line 450
    :catch_91
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ShutdownDialog"

    const-string v4, "qmgLoadFrame return < 0"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    :cond_99
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    .line 468
    if-eqz p2, :cond_a1

    .line 469
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    .line 471
    :cond_a1
    return-void

    .line 461
    :catch_a2
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a3
    const-string v3, "ShutdownDialog"

    const-string v5, "InterruptedException"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_8e

    goto :goto_8c
.end method

.method private registerCoverReceiver()V
    .registers 4

    .prologue
    .line 391
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, "coverFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method private unRegisterCoverReceiver()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    return-void
.end method

.method private whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;
    .registers 8
    .param p1, "current"    # Lcom/android/server/power/LibQmg;
    .param p2, "normal"    # Lcom/android/server/power/LibQmg;
    .param p3, "cover"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    .line 476
    .local v0, "coverStateOpen":Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 477
    if-eqz v0, :cond_9

    if-eq p1, p2, :cond_d

    :cond_9
    if-nez v0, :cond_f

    if-ne p1, p3, :cond_f

    :cond_d
    move-object v1, p1

    .line 488
    .end local p1    # "current":Lcom/android/server/power/LibQmg;
    .local v1, "current":Lcom/android/server/power/LibQmg;
    :goto_e
    return-object v1

    .line 481
    .end local v1    # "current":Lcom/android/server/power/LibQmg;
    .restart local p1    # "current":Lcom/android/server/power/LibQmg;
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getCurrentFrame()I

    move-result v2

    .line 482
    .local v2, "frameNum":I
    if-eqz v0, :cond_1b

    .line 483
    move-object p1, p2

    .line 487
    :cond_16
    :goto_16
    invoke-virtual {p1, v2}, Lcom/android/server/power/LibQmg;->setCurrentFrame(I)I

    move-object v1, p1

    .line 488
    .end local p1    # "current":Lcom/android/server/power/LibQmg;
    .restart local v1    # "current":Lcom/android/server/power/LibQmg;
    goto :goto_e

    .line 484
    .end local v1    # "current":Lcom/android/server/power/LibQmg;
    .restart local p1    # "current":Lcom/android/server/power/LibQmg;
    :cond_1b
    if-nez v0, :cond_16

    .line 485
    move-object p1, p3

    goto :goto_16
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->registerCoverReceiver()V

    .line 405
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    :goto_d
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 408
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    .line 409
    .local v2, "qmg":Lcom/android/server/power/LibQmg;
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 410
    .local v0, "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v2, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 411
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 412
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 413
    const/4 v2, 0x0

    .line 414
    const/4 v0, 0x0

    goto :goto_d

    .line 418
    .end local v0    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v2    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_49
    iput-boolean v5, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    .line 419
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/shutdownloop.qmg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 420
    .local v1, "loopFileExists":Z
    :goto_56
    if-eqz v1, :cond_8f

    .line 421
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string v4, "//system/media/shutdownloop.qmg"

    # invokes: Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 422
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    .line 423
    .restart local v2    # "qmg":Lcom/android/server/power/LibQmg;
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 424
    .restart local v0    # "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v2, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 425
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 427
    const/4 v2, 0x0

    .line 428
    const/4 v0, 0x0

    goto :goto_56

    .line 430
    .end local v0    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v2    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_8f
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->unRegisterCoverReceiver()V

    .line 432
    return-void
.end method
