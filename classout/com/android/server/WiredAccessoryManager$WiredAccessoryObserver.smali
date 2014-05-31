.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final USB_AUDIO_DEVICE_UEVENT:Ljava/lang/String; = "MAJOR=116"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventUsbAudioObserver:Landroid/os/UEventObserver;

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private saveCHInfo:I

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 364
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    .line 602
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    .line 894
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    .line 488
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 489
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method private getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .registers 25
    .param p1, "state"    # I
    .param p2, "isPlayback"    # Z
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "deviceNumber"    # Ljava/lang/String;

    .prologue
    .line 668
    const/4 v15, 0x0

    .line 669
    .local v15, "nChannels":I
    const/16 v17, 0x0

    .line 670
    .local v17, "nSamplingRate2":I
    const/16 v18, 0x0

    .line 671
    .local v18, "nSamplingRate6":I
    const/4 v12, 0x0

    .line 672
    .local v12, "nSamplingRate24":I
    const/16 v16, 0x0

    .line 673
    .local v16, "nMaxSupportRate24":I
    const/4 v11, 0x0

    .line 674
    .local v11, "nSupportedFormat":I
    const/4 v9, 0x0

    .line 675
    .local v9, "isSmartdock":Z
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 676
    .local v2, "usbAudioData":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 678
    .local v19, "streamPath":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_2a1

    .line 679
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_29d

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 681
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v14, v3, :cond_29d

    .line 682
    new-instance v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 683
    .local v13, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    check-cast v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    .line 684
    .restart local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1100(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_1b6

    .line 700
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 702
    :cond_9e
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1ba

    .line 703
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    or-int/2addr v15, v3

    .line 704
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    .line 719
    :cond_b5
    :goto_b5
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 720
    or-int/lit8 v11, v11, 0x1

    .line 741
    :cond_c3
    :goto_c3
    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 742
    :cond_e7
    const v3, 0x2ee00

    if-le v12, v3, :cond_26c

    .line 743
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-eqz v16, :cond_267

    .line 745
    move/from16 v12, v16

    .line 760
    :cond_116
    :goto_116
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.channels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.format   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 2CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 6CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 24bit SamplingRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1b6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4a

    .line 705
    :cond_1ba
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1da

    .line 706
    or-int/lit8 v15, v15, 0x2

    .line 707
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    .line 708
    const v3, 0xbb80

    move/from16 v0, v17

    if-le v0, v3, :cond_b5

    .line 709
    const v17, 0xbb80

    goto/16 :goto_b5

    .line 711
    :cond_1da
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b5

    .line 712
    or-int/lit8 v15, v15, 0x20

    .line 713
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v18

    .line 714
    const v3, 0xbb80

    move/from16 v0, v18

    if-le v0, v3, :cond_b5

    .line 715
    const v18, 0xbb80

    goto/16 :goto_b5

    .line 721
    :cond_1fa
    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21e

    .line 722
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21a

    .line 723
    or-int/lit8 v15, v15, 0x2

    .line 724
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 726
    :cond_21a
    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_c3

    .line 727
    :cond_21e
    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_242

    .line 728
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23e

    .line 729
    or-int/lit8 v15, v15, 0x2

    .line 730
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 732
    :cond_23e
    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_c3

    .line 733
    :cond_242
    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 734
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_263

    .line 735
    or-int/lit8 v15, v15, 0x2

    .line 736
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 738
    :cond_263
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_c3

    .line 747
    :cond_267
    const v12, 0xbb80

    goto/16 :goto_116

    .line 749
    :cond_26c
    const/16 v3, 0x1f40

    if-ge v12, v3, :cond_295

    .line 750
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to 48K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const v12, 0xbb80

    goto/16 :goto_116

    .line 753
    :cond_295
    move/from16 v0, v16

    if-le v12, v0, :cond_116

    .line 754
    move/from16 v16, v12

    goto/16 :goto_116

    .line 772
    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v14    # "i":I
    :cond_29d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isSmartDockConnected()Z

    move-result v9

    .line 775
    :cond_2a1
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    .line 777
    return-object v2
.end method

.method private getFactoryMode()Z
    .registers 6

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 990
    .local v1, "userMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 995
    :goto_f
    if-eqz v1, :cond_28

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 996
    const/4 v2, 0x0

    .line 999
    :goto_1a
    return v2

    .line 991
    :catch_1b
    move-exception v0

    .line 992
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 993
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 998
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_28
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .registers 12
    .param p1, "rates"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "ratesOnlyDigit":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .local v3, "stRates":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 796
    .local v2, "samplingRate":I
    :cond_c
    :goto_c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 797
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 799
    const/4 v4, 0x0

    .line 801
    .local v4, "supportedSamplingRate":I
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 802
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6b

    const v6, 0xbb80

    if-le v4, v6, :cond_6b

    if-eqz v2, :cond_6b

    .line 803
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_45} :catch_46

    goto :goto_c

    .line 807
    :catch_46
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const v2, 0xbb80

    goto :goto_c

    .line 804
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6b
    if-ge v2, v4, :cond_c

    .line 805
    move v2, v4

    goto :goto_c

    .line 813
    .end local v4    # "supportedSamplingRate":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_6f
    return v2
.end method

.method private isFactorySim()Z
    .registers 6

    .prologue
    .line 1003
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1004
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 1005
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_25

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1007
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v3, 0x1

    .line 1010
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 547
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 548
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 549
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_22
    :goto_22
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 557
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :goto_36
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 573
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 574
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :goto_46
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hotshoe_mic"

    const/16 v3, 0x20

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 592
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_58
    return-object v0

    .line 551
    :cond_59
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 560
    :cond_63
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 577
    :cond_6d
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 578
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 579
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 581
    :cond_7e
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 582
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 583
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 585
    :cond_8f
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 595
    :cond_99
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have ext mic support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .registers 23
    .param p1, "streamPath"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v4, 0x0

    .line 819
    .local v4, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 820
    .local v9, "in":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 821
    const/4 v13, 0x1

    .line 822
    .local v13, "nReturn":I
    const/4 v12, 0x0

    .line 825
    .local v12, "mIsCapture":Z
    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_1ef
    .catchall {:try_start_d .. :try_end_14} :catchall_1ea

    .line 826
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4a

    .line 827
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3f} :catch_1f1
    .catchall {:try_start_14 .. :try_end_3f} :catchall_1ec

    .line 828
    const/16 v18, 0x0

    .line 876
    if-eqz v5, :cond_1f6

    const/4 v4, 0x0

    .line 877
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_44
    if-eqz v9, :cond_49

    :try_start_46
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_1df

    .line 882
    :cond_49
    :goto_49
    return v18

    .line 830
    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :cond_4a
    :try_start_4a
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_58} :catch_1f1
    .catchall {:try_start_4a .. :try_end_58} :catchall_1ec

    .line 831
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_58
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_61
    :goto_61
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "str":Ljava/lang/String;
    if-eqz v17, :cond_1c2

    .line 833
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 834
    .local v2, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz v12, :cond_1ad

    .line 837
    const/16 v18, 0x0

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z

    .line 841
    :goto_99
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a6

    .line 842
    const/4 v12, 0x1

    .line 844
    :cond_a6
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_61

    .line 846
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "flag":Ljava/lang/String;
    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_61

    .line 848
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1202(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_61

    .line 850
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .local v15, "stChannel":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 853
    .local v7, "flagChannel":Ljava/lang/String;
    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_61

    .line 854
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1302(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;I)I

    .line 855
    :cond_128
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_61

    .line 856
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .local v16, "stRates":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 859
    .local v8, "flagRates":Ljava/lang/String;
    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_128

    .line 860
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1402(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_17d} :catch_17f
    .catchall {:try_start_58 .. :try_end_17d} :catchall_1b6

    goto/16 :goto_61

    .line 871
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v6    # "flag":Ljava/lang/String;
    .end local v7    # "flagChannel":Ljava/lang/String;
    .end local v8    # "flagRates":Ljava/lang/String;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "stChannel":Ljava/util/StringTokenizer;
    .end local v16    # "stRates":Ljava/util/StringTokenizer;
    .end local v17    # "str":Ljava/lang/String;
    :catch_17f
    move-exception v11

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 872
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .local v11, "io":Ljava/io/IOException;
    :goto_182
    :try_start_182
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catchall {:try_start_182 .. :try_end_1a0} :catchall_1ea

    .line 873
    const/4 v13, 0x0

    .line 876
    if-eqz v4, :cond_1a4

    const/4 v4, 0x0

    .line 877
    :cond_1a4
    if-eqz v9, :cond_1a9

    :try_start_1a6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1da

    .end local v11    # "io":Ljava/io/IOException;
    :cond_1a9
    :goto_1a9
    move/from16 v18, v13

    .line 882
    goto/16 :goto_49

    .line 839
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1ad
    const/16 v18, 0x1

    :try_start_1af
    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b4} :catch_17f
    .catchall {:try_start_1af .. :try_end_1b4} :catchall_1b6

    goto/16 :goto_99

    .line 875
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v17    # "str":Ljava/lang/String;
    :catchall_1b6
    move-exception v18

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 876
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1b9
    if-eqz v4, :cond_1bc

    const/4 v4, 0x0

    .line 877
    :cond_1bc
    if-eqz v9, :cond_1c1

    :try_start_1be
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1d5

    .line 875
    :cond_1c1
    :goto_1c1
    throw v18

    .line 870
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1c2
    :try_start_1c2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1cb} :catch_17f
    .catchall {:try_start_1c2 .. :try_end_1cb} :catchall_1b6

    .line 876
    if-eqz v5, :cond_1f4

    const/4 v4, 0x0

    .line 877
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_1ce
    if-eqz v10, :cond_1d3

    :try_start_1d0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1e5

    :cond_1d3
    :goto_1d3
    move-object v9, v10

    .line 881
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1a9

    .line 878
    .end local v17    # "str":Ljava/lang/String;
    :catch_1d5
    move-exception v3

    .line 879
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c1

    .line 878
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "io":Ljava/io/IOException;
    :catch_1da
    move-exception v3

    .line 879
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a9

    .line 878
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "io":Ljava/io/IOException;
    :catch_1df
    move-exception v3

    .line 879
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_49

    .line 878
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_1e5
    move-exception v3

    .line 879
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d3

    .line 875
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catchall_1ea
    move-exception v18

    goto :goto_1b9

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catchall_1ec
    move-exception v18

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1b9

    .line 871
    :catch_1ef
    move-exception v11

    goto :goto_182

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catch_1f1
    move-exception v11

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_182

    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1f4
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_1ce

    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_1f6
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto/16 :goto_44
.end method

.method private parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x10000

    const/4 v4, 0x1

    const/high16 v8, 0x200000

    const/high16 v7, 0x100000

    const/high16 v6, 0x80000

    .line 1199
    and-int/lit16 v0, p1, 0xff

    .line 1201
    .local v0, "ch_info":I
    const/high16 v5, 0x70000

    and-int v1, p1, v5

    .line 1202
    .local v1, "format_info":I
    const/high16 v5, 0x3f80000

    and-int v3, p1, v5

    .line 1204
    .local v3, "sampleRate_info":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1d

    const/4 v2, 0x0

    .line 1205
    .local v2, "hdmiState":I
    :goto_17
    move p1, v2

    .line 1207
    if-nez v0, :cond_1f

    const-string v4, "NONE"

    .line 1257
    :goto_1c
    return-object v4

    .end local v2    # "hdmiState":I
    :cond_1d
    move v2, v4

    .line 1204
    goto :goto_17

    .line 1209
    .restart local v2    # "hdmiState":I
    :cond_1f
    if-ne p1, v4, :cond_7b

    .line 1210
    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 1214
    :cond_23
    :goto_23
    const/high16 v4, 0x40000

    and-int/2addr v4, v1

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_80

    .line 1215
    const/16 v1, 0x28

    .line 1221
    :goto_2c
    const/high16 v4, 0x2000000

    and-int/2addr v4, v3

    const/high16 v5, 0x2000000

    if-ne v4, v5, :cond_8a

    .line 1222
    const v3, 0x2ee00

    .line 1241
    :goto_36
    const/16 v4, 0x10

    if-ne v1, v4, :cond_46

    .line 1242
    const v4, 0xbb80

    if-le v3, v4, :cond_46

    .line 1243
    and-int v4, v3, v8

    if-ne v4, v8, :cond_c9

    .line 1244
    const v3, 0xbb80

    .line 1253
    :cond_46
    :goto_46
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendIntentToPopupUI(IIII)I

    move-result v0

    .line 1254
    const/4 v4, 0x2

    if-eq v0, v4, :cond_4f

    .line 1255
    const/16 v1, 0x10

    .line 1257
    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    .line 1211
    :cond_7b
    if-nez p1, :cond_23

    .line 1212
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    goto :goto_23

    .line 1216
    :cond_80
    and-int v4, v1, v9

    if-ne v4, v9, :cond_87

    .line 1217
    const/16 v1, 0x10

    goto :goto_2c

    .line 1219
    :cond_87
    const/16 v1, 0x10

    goto :goto_2c

    .line 1223
    :cond_8a
    const/high16 v4, 0x1000000

    and-int/2addr v4, v3

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_95

    .line 1224
    const v3, 0x2b110

    goto :goto_36

    .line 1225
    :cond_95
    const/high16 v4, 0x800000

    and-int/2addr v4, v3

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_a0

    .line 1226
    const v3, 0x17700

    goto :goto_36

    .line 1227
    :cond_a0
    const/high16 v4, 0x400000

    and-int/2addr v4, v3

    const/high16 v5, 0x400000

    if-ne v4, v5, :cond_ab

    .line 1228
    const v3, 0x15888

    goto :goto_36

    .line 1229
    :cond_ab
    and-int v4, v3, v8

    if-ne v4, v8, :cond_b3

    .line 1230
    const v3, 0xbb80

    goto :goto_36

    .line 1231
    :cond_b3
    and-int v4, v3, v7

    if-ne v4, v7, :cond_bc

    .line 1232
    const v3, 0xac44

    goto/16 :goto_36

    .line 1233
    :cond_bc
    and-int v4, v3, v6

    if-ne v4, v6, :cond_c4

    .line 1234
    const/16 v3, 0x7d00

    goto/16 :goto_36

    .line 1236
    :cond_c4
    const v3, 0xbb80

    goto/16 :goto_36

    .line 1245
    :cond_c9
    and-int v4, v3, v7

    if-ne v4, v7, :cond_d2

    .line 1246
    const v3, 0xac44

    goto/16 :goto_46

    .line 1247
    :cond_d2
    and-int v4, v3, v6

    if-ne v4, v6, :cond_da

    .line 1248
    const/16 v3, 0x7d00

    goto/16 :goto_46

    .line 1250
    :cond_da
    const v3, 0xbb80

    goto/16 :goto_46
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 781
    if-nez p1, :cond_5

    const-string v2, ""

    .line 788
    :goto_4
    return-object v2

    .line 782
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 783
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 784
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2a

    .line 785
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 783
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 788
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .registers 14
    .param p1, "hdmiState"    # I
    .param p2, "ch_info"    # I
    .param p3, "format_info"    # I
    .param p4, "sampleRate_info"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 929
    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hdmi_audio_output"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1602(Lcom/android/server/WiredAccessoryManager;I)I

    .line 932
    const/4 v1, 0x0

    .line 939
    .local v1, "voiceSettingValue":I
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_bf

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-ne v2, v6, :cond_bf

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getFactoryMode()Z

    move-result v2

    if-nez v2, :cond_bf

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isFactorySim()Z

    move-result v2

    if-nez v2, :cond_bf

    if-nez v1, :cond_bf

    .line 941
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent BroadCasting : android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP(state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channels:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sampleRate_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    if-eqz p1, :cond_a4

    .line 944
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 945
    .local v0, "intentToPopup":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 946
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v2, "AudioState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    const-string v2, "Audiochannels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    const-string v2, "AudioFormat"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v2, "AudioSampleRate"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 959
    :goto_9c
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_bc

    .line 984
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    :goto_a2
    monitor-exit p0

    return p2

    .line 953
    :cond_a4
    :try_start_a4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .restart local v0    # "intentToPopup":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v2, "channels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_bc

    goto :goto_9c

    .line 929
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    .end local v1    # "voiceSettingValue":I
    :catchall_bc
    move-exception v2

    monitor-exit p0

    throw v2

    .line 962
    .restart local v1    # "voiceSettingValue":I
    :cond_bf
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_cb

    :try_start_c3
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-eqz v2, :cond_cd

    :cond_cb
    if-ne v1, v7, :cond_ce

    .line 965
    :cond_cd
    const/4 p2, 0x2

    .line 967
    :cond_ce
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not show POPUP UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_dd
    .catchall {:try_start_c3 .. :try_end_dd} :catchall_bc

    goto :goto_a2
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 8
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 906
    const-string/jumbo v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string v1, "card"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v1, "device"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    const-string v1, "samplingRate2"

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    const-string v1, "samplingRate6"

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string/jumbo v1, "usb_headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v1, "issmartdock"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    const-string v1, "isplayback"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const-string v1, "24format"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    const-string/jumbo v1, "supportedformat"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    const-string v1, "samplingRate24"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 921
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issmartdock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isplayback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supporedformat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate24="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 1175
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 1176
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1178
    const-string v2, "ch_hdmi_audio"

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1179
    invoke-direct {p0, p3, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1180
    const-string v2, "NONE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1190
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_33
    :goto_33
    return-void

    .line 1183
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_34
    const/4 v2, -0x1

    if-ne p3, v2, :cond_48

    const/4 p3, 0x0

    .line 1186
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_33

    .line 1183
    :cond_48
    const/4 p3, 0x1

    goto :goto_38

    .line 1174
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateStateUSBDevice()V
    .registers 36

    .prologue
    .line 1076
    const-string v26, "/sys/class/sound"

    .line 1077
    .local v26, "source":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 1079
    .local v13, "fileList":[Ljava/io/File;
    const-string v4, ""

    .line 1080
    .local v4, "card":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1082
    .local v22, "newCard":Z
    const/4 v15, 0x0

    .line 1084
    .local v15, "in":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_13
    :try_start_13
    array-length v0, v13

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_60

    .line 1085
    aget-object v12, v13, v14

    .line 1086
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_196

    .line 1087
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1088
    .local v21, "name":Ljava/lang/String;
    const-string v32, "card"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_196

    const-string v32, "card0"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_196

    .line 1089
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "card Name is ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v4, v21

    .line 1091
    const/16 v22, 0x1

    .line 1097
    .end local v12    # "file":Ljava/io/File;
    .end local v21    # "name":Ljava/lang/String;
    :cond_60
    if-eqz v22, :cond_30d

    .line 1098
    new-instance v25, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v25, "path":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8b} :catch_18c
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_8b} :catch_2ec
    .catchall {:try_start_13 .. :try_end_8b} :catchall_2fd

    move-result-object v24

    .line 1101
    .local v24, "nodes":[Ljava/io/File;
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v16, v15

    .end local v15    # "in":Ljava/io/BufferedReader;
    .local v16, "in":Ljava/io/BufferedReader;
    :goto_90
    :try_start_90
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_30b

    .line 1102
    aget-object v23, v24, v18

    .line 1103
    .local v23, "node":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_323

    .line 1104
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1105
    .restart local v21    # "name":Ljava/lang/String;
    const-string v32, "pcm"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_bf

    const-string v32, "control"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_323

    .line 1106
    :cond_bf
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/uevent"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1107
    .local v31, "uePath":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v30, "ueNode":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_323

    .line 1109
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "uevent node ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ACTION=add\u0000DEVPATH="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1112
    .local v29, "ue":Ljava/lang/String;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/FileReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_147} :catch_31e
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_147} :catch_31a
    .catchall {:try_start_90 .. :try_end_147} :catchall_316

    .line 1113
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :goto_147
    :try_start_147
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "str":Ljava/lang/String;
    if-eqz v28, :cond_19a

    .line 1114
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1115
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "uevent contents ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_18b} :catch_18c
    .catch Ljava/lang/NullPointerException; {:try_start_147 .. :try_end_18b} :catch_2ec
    .catchall {:try_start_147 .. :try_end_18b} :catchall_2fd

    goto :goto_147

    .line 1157
    .end local v18    # "j":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "node":Ljava/io/File;
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :catch_18c
    move-exception v10

    .line 1158
    .local v10, "e":Ljava/io/IOException;
    :goto_18d
    :try_start_18d
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_190
    .catchall {:try_start_18d .. :try_end_190} :catchall_2fd

    .line 1163
    if-eqz v15, :cond_195

    .line 1164
    :try_start_192
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_309

    .line 1171
    .end local v10    # "e":Ljava/io/IOException;
    :cond_195
    :goto_195
    return-void

    .line 1084
    .restart local v12    # "file":Ljava/io/File;
    :cond_196
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 1117
    .end local v12    # "file":Ljava/io/File;
    .restart local v18    # "j":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "node":Ljava/io/File;
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    .restart local v28    # "str":Ljava/lang/String;
    .restart local v29    # "ue":Ljava/lang/String;
    .restart local v30    # "ueNode":Ljava/io/File;
    .restart local v31    # "uePath":Ljava/lang/String;
    :cond_19a
    :try_start_19a
    new-instance v11, Landroid/os/UEventObserver$UEvent;

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v11, "event":Landroid/os/UEventObserver$UEvent;
    const-string v32, "ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, "action":Ljava/lang/String;
    const-string v32, "DEVPATH"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1121
    .local v8, "devpath":Ljava/lang/String;
    const-string v32, "MAJOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1122
    .local v19, "major":Ljava/lang/String;
    const-string v32, "MINOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1123
    .local v20, "minor":Ljava/lang/String;
    const-string v32, "DEVNAME"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1124
    .local v7, "devname":Ljava/lang/String;
    const-string v5, "1"

    .line 1125
    .local v5, "cardNumber":Ljava/lang/String;
    const-string v6, "0"

    .line 1126
    .local v6, "deviceNumber":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1127
    .local v27, "state":I
    const/16 v17, 0x0

    .line 1129
    .local v17, "isPlayback":Z
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onUEvent(device) :: action = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MAJOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MINOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", DEVPATH = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DEVNAME = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string v32, "116"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e3

    .line 1133
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1134
    const-string/jumbo v32, "usb"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2e3

    const-string v32, "gadget"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2e3

    .line 1136
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_26a

    const-string v32, "c"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2e3

    .line 1137
    :cond_26a
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_276

    .line 1138
    const/16 v17, 0x1

    .line 1140
    :cond_276
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 1141
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " cardNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 1143
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " deviceNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string v32, "add"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e9

    .line 1145
    const/16 v27, 0x1

    .line 1148
    :goto_2d2
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_2e3} :catch_18c
    .catch Ljava/lang/NullPointerException; {:try_start_19a .. :try_end_2e3} :catch_2ec
    .catchall {:try_start_19a .. :try_end_2e3} :catchall_2fd

    .line 1101
    .end local v3    # "action":Ljava/lang/String;
    .end local v5    # "cardNumber":Ljava/lang/String;
    .end local v6    # "deviceNumber":Ljava/lang/String;
    .end local v7    # "devname":Ljava/lang/String;
    .end local v8    # "devpath":Ljava/lang/String;
    .end local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v17    # "isPlayback":Z
    .end local v19    # "major":Ljava/lang/String;
    .end local v20    # "minor":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "state":I
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :cond_2e3
    :goto_2e3
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v16, v15

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_90

    .line 1147
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v5    # "cardNumber":Ljava/lang/String;
    .restart local v6    # "deviceNumber":Ljava/lang/String;
    .restart local v7    # "devname":Ljava/lang/String;
    .restart local v8    # "devpath":Ljava/lang/String;
    .restart local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "isPlayback":Z
    .restart local v19    # "major":Ljava/lang/String;
    .restart local v20    # "minor":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v27    # "state":I
    .restart local v28    # "str":Ljava/lang/String;
    .restart local v29    # "ue":Ljava/lang/String;
    .restart local v30    # "ueNode":Ljava/io/File;
    .restart local v31    # "uePath":Ljava/lang/String;
    :cond_2e9
    const/16 v27, 0x0

    goto :goto_2d2

    .line 1159
    .end local v3    # "action":Ljava/lang/String;
    .end local v5    # "cardNumber":Ljava/lang/String;
    .end local v6    # "deviceNumber":Ljava/lang/String;
    .end local v7    # "devname":Ljava/lang/String;
    .end local v8    # "devpath":Ljava/lang/String;
    .end local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v17    # "isPlayback":Z
    .end local v18    # "j":I
    .end local v19    # "major":Ljava/lang/String;
    .end local v20    # "minor":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "node":Ljava/io/File;
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .end local v27    # "state":I
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :catch_2ec
    move-exception v10

    .line 1160
    .local v10, "e":Ljava/lang/NullPointerException;
    :goto_2ed
    :try_start_2ed
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2f0
    .catchall {:try_start_2ed .. :try_end_2f0} :catchall_2fd

    .line 1163
    if-eqz v15, :cond_195

    .line 1164
    :try_start_2f2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2f5
    .catch Ljava/io/IOException; {:try_start_2f2 .. :try_end_2f5} :catch_2f7

    goto/16 :goto_195

    .line 1166
    :catch_2f7
    move-exception v10

    .line 1168
    .local v10, "e":Ljava/io/IOException;
    :goto_2f8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_195

    .line 1162
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_2fd
    move-exception v32

    .line 1163
    :goto_2fe
    if-eqz v15, :cond_303

    .line 1164
    :try_start_300
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_303} :catch_304

    .line 1162
    :cond_303
    :goto_303
    throw v32

    .line 1166
    :catch_304
    move-exception v10

    .line 1168
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_303

    .line 1166
    :catch_309
    move-exception v10

    goto :goto_2f8

    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :cond_30b
    move-object/from16 v15, v16

    .line 1163
    .end local v16    # "in":Ljava/io/BufferedReader;
    .end local v18    # "j":I
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :cond_30d
    if-eqz v15, :cond_195

    .line 1164
    :try_start_30f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_312
    .catch Ljava/io/IOException; {:try_start_30f .. :try_end_312} :catch_314

    goto/16 :goto_195

    .line 1166
    :catch_314
    move-exception v10

    goto :goto_2f8

    .line 1162
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :catchall_316
    move-exception v32

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2fe

    .line 1159
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_31a
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2ed

    .line 1157
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_31e
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_18d

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "node":Ljava/io/File;
    :cond_323
    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2e3
.end method

.method private final declared-synchronized update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 7
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 887
    monitor-enter p0

    const/16 v0, 0x1f4

    .line 888
    .local v0, "delay":I
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 892
    monitor-exit p0

    return-void

    .line 887
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method init()V
    .registers 13

    .prologue
    .line 492
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 493
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "init()"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 496
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a7

    .line 497
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_88

    .line 498
    .local v7, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const/4 v3, 0x0

    .line 501
    .local v3, "file":Ljava/io/FileReader;
    :try_start_26
    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2f} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_8b
    .catchall {:try_start_26 .. :try_end_2f} :catchall_a0

    .line 502
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_32
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 503
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 505
    .local v1, "curState":I
    if-lez v1, :cond_55

    .line 506
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_55} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_ef
    .catchall {:try_start_32 .. :try_end_55} :catchall_ec

    .line 515
    :cond_55
    if-eqz v4, :cond_5a

    .line 516
    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_e6
    .catchall {:try_start_57 .. :try_end_5a} :catchall_88

    :cond_5a
    :goto_5a
    move-object v3, v4

    .line 496
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 508
    :catch_5e
    move-exception v2

    .line 509
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5f
    :try_start_5f
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found while attempting to determine initial switch state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_a0

    .line 515
    if-eqz v3, :cond_5b

    .line 516
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_88

    goto :goto_5b

    .line 518
    :catch_83
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/IOException;
    :try_start_84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 528
    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "i":I
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_88
    move-exception v8

    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_88

    throw v8

    .line 511
    .restart local v0    # "buffer":[C
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v5    # "i":I
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_8b
    move-exception v2

    .line 512
    .local v2, "e":Ljava/lang/Exception;
    :goto_8c
    :try_start_8c
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_a0

    .line 515
    if-eqz v3, :cond_5b

    .line 516
    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catchall {:try_start_97 .. :try_end_9a} :catchall_88

    goto :goto_5b

    .line 518
    :catch_9b
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/IOException;
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_88

    goto :goto_5b

    .line 514
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v8

    .line 515
    :goto_a1
    if-eqz v3, :cond_a6

    .line 516
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_e1
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_88

    .line 514
    :cond_a6
    :goto_a6
    :try_start_a6
    throw v8

    .line 527
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_a7
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateUSBDevice()V

    .line 528
    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_88

    .line 533
    const/4 v5, 0x0

    :goto_ac
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_d9

    .line 534
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 535
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DEVPATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 538
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_d9
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v9, "MAJOR=116"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 539
    return-void

    .line 518
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_e1
    move-exception v2

    .line 520
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 518
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v1    # "curState":I
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_e6
    move-exception v2

    .line 520
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_88

    goto/16 :goto_5a

    .line 514
    .end local v1    # "curState":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catchall_ec
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_a1

    .line 511
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_ef
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_8c

    .line 508
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_f2
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto/16 :goto_5f
.end method

.method public isSmartDockConnected()Z
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1016
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-array v1, v12, [C

    .line 1018
    .local v1, "buffer":[C
    const-string/jumbo v0, "sys/class/sec/switch/adc"

    .line 1019
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1020
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1022
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_14
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_62
    .catchall {:try_start_14 .. :try_end_19} :catchall_74

    .line 1023
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1c
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 1024
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 1025
    if-le v7, v8, :cond_3d

    .line 1026
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 1029
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_2e
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_33} :catch_90
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_8d
    .catchall {:try_start_1c .. :try_end_33} :catchall_8a

    move-result v10

    if-eqz v10, :cond_45

    .line 1038
    if-eqz v6, :cond_3b

    .line 1039
    :try_start_38
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_80

    :cond_3b
    :goto_3b
    move-object v5, v6

    .line 1047
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3c
    return v8

    .line 1028
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_3d
    :try_start_3d
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_43} :catch_90
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_8d
    .catchall {:try_start_3d .. :try_end_43} :catchall_8a

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_2e

    .line 1038
    :cond_45
    if-eqz v6, :cond_4a

    .line 1039
    :try_start_47
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_85

    :cond_4a
    :goto_4a
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4b
    :goto_4b
    move v8, v9

    .line 1047
    goto :goto_3c

    .line 1032
    :catch_4d
    move-exception v4

    .line 1033
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4e
    :try_start_4e
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_74

    .line 1038
    if-eqz v5, :cond_4b

    .line 1039
    :try_start_59
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4b

    .line 1041
    :catch_5d
    move-exception v4

    .line 1043
    .local v4, "e":Ljava/io/IOException;
    :goto_5e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 1034
    .end local v4    # "e":Ljava/io/IOException;
    :catch_62
    move-exception v4

    .line 1035
    .local v4, "e":Ljava/lang/Exception;
    :goto_63
    :try_start_63
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_74

    .line 1038
    if-eqz v5, :cond_4b

    .line 1039
    :try_start_6e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_4b

    .line 1041
    :catch_72
    move-exception v4

    goto :goto_5e

    .line 1037
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v8

    .line 1038
    :goto_75
    if-eqz v5, :cond_7a

    .line 1039
    :try_start_77
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 1037
    :cond_7a
    :goto_7a
    throw v8

    .line 1041
    :catch_7b
    move-exception v4

    .line 1043
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 1041
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_80
    move-exception v4

    .line 1043
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 1041
    .end local v4    # "e":Ljava/io/IOException;
    :catch_85
    move-exception v4

    .line 1043
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 1037
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catchall_8a
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_75

    .line 1034
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8d
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_63

    .line 1032
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_90
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_4e
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1053
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Headset UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1058
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_56

    .line 1059
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isHeadphoneEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1061
    :try_start_35
    const-string v5, "DEVPATH"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "devPath":Ljava/lang/String;
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "name":Ljava/lang/String;
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1064
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_52} :catch_5a

    .line 1065
    :try_start_52
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1066
    monitor-exit v6

    .line 1073
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_56
    :goto_56
    return-void

    .line 1066
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "state":I
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    :try_start_59
    throw v5
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5a} :catch_5a

    .line 1067
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_5a
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse switch state from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method
