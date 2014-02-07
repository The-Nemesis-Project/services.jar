.class Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field private finished:Z

.field private maxSleep:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 498
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_e

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    .line 525
    :goto_d
    return-void

    .line 501
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 502
    const-string v0, "ShutdownDialog"

    const-string v1, "frame load finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    goto :goto_d

    .line 508
    :cond_1e
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    if-eq v0, v1, :cond_73

    .line 509
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 512
    :try_start_56
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownDialog;->access$2302(Lcom/android/server/power/ShutdownDialog;I)I

    .line 513
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 514
    monitor-exit v1

    goto :goto_d

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_70

    throw v0

    .line 517
    :cond_73
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    if-eqz v0, :cond_7f

    .line 518
    const-string v0, "ShutdownDialog"

    const-string v1, "image draw finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 521
    :cond_7f
    const-string v0, "ShutdownDialog"

    const-string v1, "image buffer not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d
.end method
