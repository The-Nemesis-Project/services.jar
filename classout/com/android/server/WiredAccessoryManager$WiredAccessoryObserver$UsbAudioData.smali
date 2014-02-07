.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private format:I

.field private isSmartDock:Z

.field private isplayback:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate24:I

.field private samplingRate6:Ljava/lang/String;

.field private state:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V
    .registers 2

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p2, "x1"    # Lcom/android/server/WiredAccessoryManager$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    return-void
.end method


# virtual methods
.method public get24Format()I
    .registers 4

    .prologue
    const/4 v0, 0x4

    .line 420
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 421
    const/4 v0, 0x3

    .line 426
    :cond_9
    :goto_9
    return v0

    .line 423
    :cond_a
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v0, :cond_9

    .line 426
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlayback()Z
    .registers 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .registers 3
    .param p1, "ch"    # I

    .prologue
    .line 402
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 403
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    .line 405
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSamplingRate24()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate24:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    return v0
.end method

.method public getSupportedPCMFormat()I
    .registers 6

    .prologue
    const/16 v0, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 429
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-ne v1, v2, :cond_a

    .line 439
    :cond_9
    :goto_9
    return v0

    .line 432
    :cond_a
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-eq v1, v3, :cond_12

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-ne v1, v4, :cond_15

    .line 433
    :cond_12
    const/16 v0, 0x18

    goto :goto_9

    .line 435
    :cond_15
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_27

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_9

    .line 437
    :cond_27
    const/16 v0, 0x28

    goto :goto_9
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "channels"    # Ljava/lang/String;
    .param p3, "samplingRate2"    # Ljava/lang/String;
    .param p4, "samplingRate6"    # Ljava/lang/String;
    .param p5, "cardNumber"    # Ljava/lang/String;
    .param p6, "deviceNumber"    # Ljava/lang/String;
    .param p7, "isSmartDock"    # Z
    .param p8, "isplayback"    # Z
    .param p9, "format"    # I
    .param p10, "samplingRate24"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    .line 385
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    .line 387
    iput-object p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    .line 388
    iput-object p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    .line 389
    iput-object p6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    .line 390
    iput-boolean p7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    .line 391
    iput-boolean p8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    .line 392
    iput p9, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    .line 393
    iput p10, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate24:I

    .line 394
    return-void
.end method
