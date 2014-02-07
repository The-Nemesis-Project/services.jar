.class Lcom/android/server/power/ShutdownDialog$StateDrawing;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDrawing"
.end annotation


# instance fields
.field imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

.field soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 347
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 349
    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .registers 3

    .prologue
    .line 367
    const-string v0, "ShutdownDialog"

    const-string v1, "animation finish wait"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$SoundThread;->checkRunning()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->checkRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public checkStart()Z
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "animPath"    # Ljava/lang/String;
    .param p2, "soundPath"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string v0, "ShutdownDialog"

    const-string v1, "can\'t prepare while draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 356
    new-instance v0, Lcom/android/server/power/ShutdownDialog$SoundThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    .line 357
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 358
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 360
    return-void
.end method
