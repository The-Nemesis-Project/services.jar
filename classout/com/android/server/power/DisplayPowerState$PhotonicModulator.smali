.class final Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_ON:Z


# instance fields
.field private mActualBacklight:I

.field private mActualOn:Z

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingOn:Z

.field private mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private final mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 331
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 337
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 338
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 339
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    .line 340
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 344
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 379
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerState$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 331
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 371
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChangeInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public setState(ZI)Z
    .registers 7
    .param p1, "on"    # Z
    .param p2, "backlight"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v0, :cond_4a

    .line 349
    :cond_b
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 350
    const-string v0, "DisplayPowerState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting new screen state: on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", backlight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_33
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 355
    iput p2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 357
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v0, :cond_4a

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 360
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 362
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 365
    :cond_4a
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    monitor-exit v1

    return v0

    .line 366
    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method
