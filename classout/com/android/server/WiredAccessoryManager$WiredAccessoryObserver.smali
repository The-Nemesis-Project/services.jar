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

.field private static final CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

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
    .line 454
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 352
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 451
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    .line 569
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    .line 818
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    .line 455
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 456
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 328
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
    .line 328
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method private getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .registers 24
    .param p1, "state"    # I
    .param p2, "isPlayback"    # Z
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "deviceNumber"    # Ljava/lang/String;

    .prologue
    .line 638
    const/4 v15, 0x0

    .line 639
    .local v15, "nChannels":I
    const/16 v16, 0x0

    .line 640
    .local v16, "nSamplingRate2":I
    const/16 v17, 0x0

    .line 641
    .local v17, "nSamplingRate6":I
    const/4 v12, 0x0

    .line 642
    .local v12, "nSamplingRate24":I
    const/4 v11, 0x0

    .line 643
    .local v11, "nSupportedFormat":I
    const/4 v9, 0x0

    .line 644
    .local v9, "isSmartdock":Z
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 645
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

    move-result-object v18

    .line 646
    .local v18, "streamPath":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_14d

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_149

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 649
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v14, v3, :cond_149

    .line 650
    new-instance v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 651
    .local v13, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    check-cast v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    .line 652
    .restart local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1100(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_c1

    .line 668
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 669
    :cond_90
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c4

    .line 670
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    or-int/2addr v15, v3

    .line 671
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v16

    .line 684
    :cond_a7
    :goto_a7
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 685
    or-int/lit8 v11, v11, 0x1

    .line 699
    :cond_b5
    :goto_b5
    const v3, 0x2ee00

    if-gt v12, v3, :cond_be

    const/16 v3, 0x1f40

    if-ge v12, v3, :cond_c1

    .line 700
    :cond_be
    const v12, 0xbb80

    .line 649
    :cond_c1
    add-int/lit8 v14, v14, 0x1

    goto :goto_48

    .line 672
    :cond_c4
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e3

    .line 673
    or-int/lit8 v15, v15, 0x2

    .line 674
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v16

    .line 675
    const v3, 0xbb80

    move/from16 v0, v16

    if-le v0, v3, :cond_a7

    .line 676
    const v16, 0xbb80

    goto :goto_a7

    .line 677
    :cond_e3
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a7

    .line 678
    or-int/lit8 v15, v15, 0x20

    .line 679
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    .line 680
    const v3, 0xbb80

    move/from16 v0, v17

    if-le v0, v3, :cond_a7

    .line 681
    const v17, 0xbb80

    goto :goto_a7

    .line 686
    :cond_102
    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 687
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_122

    .line 688
    or-int/lit8 v15, v15, 0x2

    .line 689
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 691
    :cond_122
    or-int/lit8 v11, v11, 0x2

    goto :goto_b5

    .line 692
    :cond_125
    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 693
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_145

    .line 694
    or-int/lit8 v15, v15, 0x2

    .line 695
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 697
    :cond_145
    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_b5

    .line 705
    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v14    # "i":I
    :cond_149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isSmartDockConnected()Z

    move-result v9

    .line 707
    :cond_14d
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    .line 708
    return-object v2
.end method

.method private getFactoryMode()Z
    .registers 6

    .prologue
    .line 911
    const/4 v1, 0x0

    .line 913
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

    .line 918
    :goto_f
    if-eqz v1, :cond_28

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 919
    const/4 v2, 0x0

    .line 922
    :goto_1a
    return v2

    .line 914
    :catch_1b
    move-exception v0

    .line 915
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 916
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 921
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_28
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .registers 12
    .param p1, "rates"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "ratesOnlyDigit":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .local v3, "stRates":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 725
    .local v2, "samplingRate":I
    :cond_c
    :goto_c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 726
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 728
    const/4 v4, 0x0

    .line 730
    .local v4, "supportedSamplingRate":I
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 731
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6b

    const v6, 0xbb80

    if-le v4, v6, :cond_6b

    if-eqz v2, :cond_6b

    .line 732
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " not supported SamplingRate : "

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

    .line 736
    :catch_46
    move-exception v0

    .line 737
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

    .line 738
    const v2, 0xbb80

    goto :goto_c

    .line 733
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6b
    if-ge v2, v4, :cond_c

    .line 734
    move v2, v4

    goto :goto_c

    .line 742
    .end local v4    # "supportedSamplingRate":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_6f
    return v2
.end method

.method private isFactorySim()Z
    .registers 6

    .prologue
    .line 926
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 927
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 928
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_25

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 930
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v3, 0x1

    .line 933
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

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 514
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 515
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_22
    :goto_22
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 524
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 525
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :goto_35
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 540
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 541
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_45
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hotshoe_mic"

    const/16 v3, 0x20

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 559
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_57
    return-object v0

    .line 518
    :cond_58
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 527
    :cond_62
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 544
    :cond_6c
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 545
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 546
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 548
    :cond_7d
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 549
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 552
    :cond_8e
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 562
    :cond_98
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have ext mic support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .registers 23
    .param p1, "streamPath"    # Ljava/lang/String;

    .prologue
    .line 747
    const/4 v4, 0x0

    .line 748
    .local v4, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 749
    .local v9, "in":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 750
    const/4 v13, 0x1

    .line 751
    .local v13, "nReturn":I
    const/4 v12, 0x0

    .line 754
    .local v12, "mIsCapture":Z
    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_19e
    .catchall {:try_start_d .. :try_end_14} :catchall_199

    .line 755
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_47

    .line 756
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "the "

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
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_1a0
    .catchall {:try_start_14 .. :try_end_3e} :catchall_19b

    .line 757
    const/16 v18, 0x0

    .line 800
    if-eqz v5, :cond_1a5

    const/4 v4, 0x0

    .line 801
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_43
    if-eqz v9, :cond_46

    :try_start_45
    throw v9
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_18e

    .line 806
    :cond_46
    :goto_46
    return v18

    .line 759
    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :cond_47
    :try_start_47
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_1a0
    .catchall {:try_start_47 .. :try_end_55} :catchall_19b

    .line 760
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :cond_55
    :goto_55
    :try_start_55
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "str":Ljava/lang/String;
    if-eqz v17, :cond_17a

    .line 761
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 763
    .local v2, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    if-eqz v12, :cond_165

    .line 764
    const/16 v18, 0x0

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z

    .line 768
    :goto_6f
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7c

    .line 769
    const/4 v12, 0x1

    .line 771
    :cond_7c
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_55

    .line 773
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, "flag":Ljava/lang/String;
    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 775
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1202(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_55

    .line 777
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .local v15, "stChannel":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, "flagChannel":Ljava/lang/String;
    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 780
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1302(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;I)I

    .line 781
    :cond_e0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_55

    .line 782
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    .local v16, "stRates":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 784
    .local v8, "flagRates":Ljava/lang/String;
    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e0

    .line 785
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1402(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parseAccInfo() audio info rate : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_135} :catch_137
    .catchall {:try_start_55 .. :try_end_135} :catchall_16e

    goto/16 :goto_55

    .line 795
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v6    # "flag":Ljava/lang/String;
    .end local v7    # "flagChannel":Ljava/lang/String;
    .end local v8    # "flagRates":Ljava/lang/String;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "stChannel":Ljava/util/StringTokenizer;
    .end local v16    # "stRates":Ljava/util/StringTokenizer;
    .end local v17    # "str":Ljava/lang/String;
    :catch_137
    move-exception v11

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 796
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .local v11, "io":Ljava/io/IOException;
    :goto_13a
    :try_start_13a
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
    :try_end_158
    .catchall {:try_start_13a .. :try_end_158} :catchall_199

    .line 797
    const/4 v13, 0x0

    .line 800
    if-eqz v4, :cond_15c

    const/4 v4, 0x0

    .line 801
    :cond_15c
    if-eqz v9, :cond_161

    :try_start_15e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_189

    .end local v11    # "io":Ljava/io/IOException;
    :cond_161
    :goto_161
    move/from16 v18, v13

    .line 806
    goto/16 :goto_46

    .line 766
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_165
    const/16 v18, 0x1

    :try_start_167
    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16c} :catch_137
    .catchall {:try_start_167 .. :try_end_16c} :catchall_16e

    goto/16 :goto_6f

    .line 799
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v17    # "str":Ljava/lang/String;
    :catchall_16e
    move-exception v18

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 800
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_171
    if-eqz v4, :cond_174

    const/4 v4, 0x0

    .line 801
    :cond_174
    if-eqz v9, :cond_179

    :try_start_176
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_184

    .line 799
    :cond_179
    :goto_179
    throw v18

    .line 800
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_17a
    if-eqz v5, :cond_1a3

    const/4 v4, 0x0

    .line 801
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_17d
    if-eqz v10, :cond_182

    :try_start_17f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_194

    :cond_182
    :goto_182
    move-object v9, v10

    .line 805
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_161

    .line 802
    .end local v17    # "str":Ljava/lang/String;
    :catch_184
    move-exception v3

    .line 803
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_179

    .line 802
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "io":Ljava/io/IOException;
    :catch_189
    move-exception v3

    .line 803
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_161

    .line 802
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "io":Ljava/io/IOException;
    :catch_18e
    move-exception v3

    .line 803
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_46

    .line 802
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_194
    move-exception v3

    .line 803
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_182

    .line 799
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catchall_199
    move-exception v18

    goto :goto_171

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catchall_19b
    move-exception v18

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_171

    .line 795
    :catch_19e
    move-exception v11

    goto :goto_13a

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catch_1a0
    move-exception v11

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_13a

    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_1a3
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_17d

    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_1a5
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto/16 :goto_43
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 711
    if-nez p1, :cond_5

    const-string v2, ""

    .line 718
    :goto_4
    return-object v2

    .line 712
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 713
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 714
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2a

    .line 715
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 713
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 718
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

    .line 853
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

    .line 856
    const/4 v1, 0x0

    .line 863
    .local v1, "voiceSettingValue":I
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_be

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-ne v2, v6, :cond_be

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getFactoryMode()Z

    move-result v2

    if-nez v2, :cond_be

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isFactorySim()Z

    move-result v2

    if-nez v2, :cond_be

    if-nez v1, :cond_be

    .line 865
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

    .line 867
    if-eqz p1, :cond_a4

    .line 868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v0, "intentToPopup":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 870
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v2, "AudioState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    const-string v2, "Audiochannels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    const-string v2, "AudioFormat"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    const-string v2, "AudioSampleRate"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 884
    :goto_9c
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_bb

    .line 907
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    :goto_a2
    monitor-exit p0

    return p2

    .line 878
    :cond_a4
    :try_start_a4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .restart local v0    # "intentToPopup":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    const-string v2, "channels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_bb

    goto :goto_9c

    .line 853
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    .end local v1    # "voiceSettingValue":I
    :catchall_bb
    move-exception v2

    monitor-exit p0

    throw v2

    .line 887
    .restart local v1    # "voiceSettingValue":I
    :cond_be
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_ca

    :try_start_c2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-eqz v2, :cond_cc

    :cond_ca
    if-ne v1, v7, :cond_cd

    .line 889
    :cond_cc
    const/4 p2, 0x2

    .line 891
    :cond_cd
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not show POPUP UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_dc
    .catchall {:try_start_c2 .. :try_end_dc} :catchall_bb

    goto :goto_a2
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 8
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 827
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 830
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string v1, "card"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    const-string v1, "device"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    const-string v1, "samplingRate2"

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v1, "samplingRate6"

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const-string v1, "usb_headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v1, "issmartdock"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 838
    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string v1, "isplayback"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const-string v1, "24format"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v1, "supportedformat"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v1, "samplingRate24"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 845
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state:"

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

    .line 849
    return-void
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 1088
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_38

    .line 1089
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 1090
    .local v6, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 1092
    const-string v7, "ch_hdmi_audio"

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 1093
    and-int/lit16 v1, p3, 0xff

    .line 1094
    .local v1, "ch_info":I
    const/high16 v7, 0x70000

    and-int v2, p3, v7

    .line 1095
    .local v2, "format_info":I
    const/high16 v7, 0x3f80000

    and-int v5, p3, v7

    .line 1100
    .local v5, "sampleRate_info":I
    const/4 v7, -0x1

    if-ne p3, v7, :cond_39

    const/4 v3, 0x0

    .line 1101
    .local v3, "hdmiState":I
    :goto_35
    move p3, v3

    .line 1102
    if-nez v1, :cond_3b

    .line 1148
    .end local v1    # "ch_info":I
    .end local v2    # "format_info":I
    .end local v3    # "hdmiState":I
    .end local v5    # "sampleRate_info":I
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_38
    :goto_38
    return-void

    .line 1100
    .restart local v1    # "ch_info":I
    .restart local v2    # "format_info":I
    .restart local v5    # "sampleRate_info":I
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_39
    const/4 v3, 0x1

    goto :goto_35

    .line 1103
    .restart local v3    # "hdmiState":I
    :cond_3b
    const/4 v7, 0x1

    if-ne p3, v7, :cond_a2

    .line 1104
    iput v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 1107
    :cond_40
    :goto_40
    const/high16 v7, 0x40000

    and-int/2addr v7, v2

    const/high16 v8, 0x40000

    if-ne v7, v8, :cond_a7

    .line 1108
    const/16 v2, 0x28

    .line 1112
    :cond_49
    :goto_49
    const/high16 v7, 0x2000000

    and-int/2addr v7, v5

    const/high16 v8, 0x2000000

    if-ne v7, v8, :cond_53

    .line 1113
    const v5, 0x2ee00

    .line 1114
    :cond_53
    const/high16 v7, 0x1000000

    and-int/2addr v7, v5

    const/high16 v8, 0x1000000

    if-ne v7, v8, :cond_b1

    .line 1115
    const v5, 0x2af80

    .line 1137
    :cond_5d
    :goto_5d
    invoke-direct {p0, p3, v1, v2, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendIntentToPopupUI(IIII)I

    move-result v1

    .line 1138
    const/4 v7, 0x2

    if-eq v1, v7, :cond_66

    .line 1139
    const/16 v2, 0x10

    .line 1140
    :cond_66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "chPlusedName":Ljava/lang/String;
    move-object p2, v0

    .line 1144
    .end local v0    # "chPlusedName":Ljava/lang/String;
    .end local v1    # "ch_info":I
    .end local v2    # "format_info":I
    .end local v3    # "hdmiState":I
    .end local v5    # "sampleRate_info":I
    :cond_92
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->access$1800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v8

    invoke-virtual {v6, v8, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v8

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v7, p2, v8}, Lcom/android/server/WiredAccessoryManager;->access$1900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_38

    .line 1105
    .restart local v1    # "ch_info":I
    .restart local v2    # "format_info":I
    .restart local v3    # "hdmiState":I
    .restart local v5    # "sampleRate_info":I
    :cond_a2
    if-nez p3, :cond_40

    .line 1106
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    goto :goto_40

    .line 1109
    :cond_a7
    const/high16 v7, 0x10000

    and-int/2addr v7, v2

    const/high16 v8, 0x10000

    if-ne v7, v8, :cond_49

    .line 1110
    const/16 v2, 0x10

    goto :goto_49

    .line 1116
    :cond_b1
    const/high16 v7, 0x800000

    and-int/2addr v7, v5

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_bc

    .line 1117
    const v5, 0x17700

    goto :goto_5d

    .line 1118
    :cond_bc
    const/high16 v7, 0x400000

    and-int/2addr v7, v5

    const/high16 v8, 0x400000

    if-ne v7, v8, :cond_c7

    .line 1119
    const v5, 0x157c0

    goto :goto_5d

    .line 1120
    :cond_c7
    const/high16 v7, 0x200000

    and-int/2addr v7, v5

    const/high16 v8, 0x200000

    if-ne v7, v8, :cond_d2

    .line 1121
    const v5, 0xbb80

    goto :goto_5d

    .line 1122
    :cond_d2
    const/high16 v7, 0x100000

    and-int/2addr v7, v5

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_dd

    .line 1123
    const v5, 0xac44

    goto :goto_5d

    .line 1124
    :cond_dd
    const/high16 v7, 0x80000

    and-int/2addr v7, v5

    const/high16 v8, 0x80000

    if-ne v7, v8, :cond_5d

    .line 1125
    const/16 v5, 0x7d00

    goto/16 :goto_5d

    .line 1088
    .end local v1    # "ch_info":I
    .end local v2    # "format_info":I
    .end local v3    # "hdmiState":I
    .end local v5    # "sampleRate_info":I
    :cond_e8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private updateStateUSBDevice()V
    .registers 36

    .prologue
    .line 991
    const-string v26, "/sys/class/sound"

    .line 992
    .local v26, "source":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 993
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 994
    .local v13, "fileList":[Ljava/io/File;
    const-string v4, ""

    .line 995
    .local v4, "card":Ljava/lang/String;
    const/16 v22, 0x0

    .line 997
    .local v22, "newCard":Z
    const/4 v15, 0x0

    .line 999
    .local v15, "in":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_13
    :try_start_13
    array-length v0, v13

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_60

    .line 1000
    aget-object v12, v13, v14

    .line 1001
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_194

    .line 1002
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1003
    .local v21, "name":Ljava/lang/String;
    const-string v32, "card"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_194

    const-string v32, "card0"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_194

    .line 1004
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

    .line 1005
    move-object/from16 v4, v21

    .line 1006
    const/16 v22, 0x1

    .line 1012
    .end local v12    # "file":Ljava/io/File;
    .end local v21    # "name":Ljava/lang/String;
    :cond_60
    if-eqz v22, :cond_30a

    .line 1013
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

    .line 1014
    .local v25, "path":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8b} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_8b} :catch_2e9
    .catchall {:try_start_13 .. :try_end_8b} :catchall_2fa

    move-result-object v24

    .line 1016
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

    if-ge v0, v1, :cond_308

    .line 1017
    aget-object v23, v24, v18

    .line 1018
    .local v23, "node":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_320

    .line 1019
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1020
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

    if-eqz v32, :cond_320

    .line 1021
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

    .line 1022
    .local v31, "uePath":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v30, "ueNode":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_320

    .line 1024
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "uevent node ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
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

    .line 1027
    .local v29, "ue":Ljava/lang/String;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/FileReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_146} :catch_31b
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_146} :catch_317
    .catchall {:try_start_90 .. :try_end_146} :catchall_313

    .line 1028
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :goto_146
    :try_start_146
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "str":Ljava/lang/String;
    if-eqz v28, :cond_198

    .line 1029
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

    .line 1030
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "uevent contents ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_189} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_146 .. :try_end_189} :catch_2e9
    .catchall {:try_start_146 .. :try_end_189} :catchall_2fa

    goto :goto_146

    .line 1071
    .end local v18    # "j":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "node":Ljava/io/File;
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :catch_18a
    move-exception v10

    .line 1072
    .local v10, "e":Ljava/io/IOException;
    :goto_18b
    :try_start_18b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_2fa

    .line 1077
    if-eqz v15, :cond_193

    .line 1078
    :try_start_190
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_306

    .line 1085
    .end local v10    # "e":Ljava/io/IOException;
    :cond_193
    :goto_193
    return-void

    .line 999
    .restart local v12    # "file":Ljava/io/File;
    :cond_194
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 1032
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
    :cond_198
    :try_start_198
    new-instance v11, Landroid/os/UEventObserver$UEvent;

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v11, "event":Landroid/os/UEventObserver$UEvent;
    const-string v32, "ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1035
    .local v3, "action":Ljava/lang/String;
    const-string v32, "DEVPATH"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1036
    .local v8, "devpath":Ljava/lang/String;
    const-string v32, "MAJOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1037
    .local v19, "major":Ljava/lang/String;
    const-string v32, "MINOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1038
    .local v20, "minor":Ljava/lang/String;
    const-string v32, "DEVNAME"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1039
    .local v7, "devname":Ljava/lang/String;
    const-string v5, "1"

    .line 1040
    .local v5, "cardNumber":Ljava/lang/String;
    const-string v6, "0"

    .line 1041
    .local v6, "deviceNumber":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1042
    .local v27, "state":I
    const/16 v17, 0x0

    .line 1044
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

    .line 1045
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

    .line 1047
    const-string v32, "116"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    .line 1048
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1049
    const-string v32, "usb"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    const-string v32, "gadget"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2e0

    .line 1051
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_267

    const-string v32, "c"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    .line 1052
    :cond_267
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_273

    .line 1053
    const/16 v17, 0x1

    .line 1054
    :cond_273
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 1055
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

    .line 1056
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 1057
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

    .line 1058
    const-string v32, "add"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e6

    .line 1059
    const/16 v27, 0x1

    .line 1062
    :goto_2cf
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    :try_end_2e0
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_2e0} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_198 .. :try_end_2e0} :catch_2e9
    .catchall {:try_start_198 .. :try_end_2e0} :catchall_2fa

    .line 1016
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
    :cond_2e0
    :goto_2e0
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v16, v15

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_90

    .line 1061
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
    :cond_2e6
    const/16 v27, 0x0

    goto :goto_2cf

    .line 1073
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
    :catch_2e9
    move-exception v10

    .line 1074
    .local v10, "e":Ljava/lang/NullPointerException;
    :goto_2ea
    :try_start_2ea
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2ed
    .catchall {:try_start_2ea .. :try_end_2ed} :catchall_2fa

    .line 1077
    if-eqz v15, :cond_193

    .line 1078
    :try_start_2ef
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2f2
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_2f2} :catch_2f4

    goto/16 :goto_193

    .line 1080
    :catch_2f4
    move-exception v10

    .line 1082
    .local v10, "e":Ljava/io/IOException;
    :goto_2f5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_193

    .line 1076
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_2fa
    move-exception v32

    .line 1077
    :goto_2fb
    if-eqz v15, :cond_300

    .line 1078
    :try_start_2fd
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2fd .. :try_end_300} :catch_301

    .line 1076
    :cond_300
    :goto_300
    throw v32

    .line 1080
    :catch_301
    move-exception v10

    .line 1082
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_300

    .line 1080
    :catch_306
    move-exception v10

    goto :goto_2f5

    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :cond_308
    move-object/from16 v15, v16

    .line 1077
    .end local v16    # "in":Ljava/io/BufferedReader;
    .end local v18    # "j":I
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :cond_30a
    if-eqz v15, :cond_193

    .line 1078
    :try_start_30c
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_30f} :catch_311

    goto/16 :goto_193

    .line 1080
    :catch_311
    move-exception v10

    goto :goto_2f5

    .line 1076
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :catchall_313
    move-exception v32

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2fb

    .line 1073
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_317
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2ea

    .line 1071
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_31b
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_18b

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "node":Ljava/io/File;
    :cond_320
    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_2e0
.end method

.method private final declared-synchronized update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 7
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 811
    monitor-enter p0

    const/16 v0, 0x1f4

    .line 812
    .local v0, "delay":I
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 813
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 816
    monitor-exit p0

    return-void

    .line 811
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method init()V
    .registers 13

    .prologue
    .line 459
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 460
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "init()"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 463
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a7

    .line 464
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_88

    .line 465
    .local v7, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const/4 v3, 0x0

    .line 468
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

    .line 469
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_32
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 470
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

    .line 472
    .local v1, "curState":I
    if-lez v1, :cond_55

    .line 473
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_55} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_ef
    .catchall {:try_start_32 .. :try_end_55} :catchall_ec

    .line 482
    :cond_55
    if-eqz v4, :cond_5a

    .line 483
    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_e6
    .catchall {:try_start_57 .. :try_end_5a} :catchall_88

    :cond_5a
    :goto_5a
    move-object v3, v4

    .line 463
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 475
    :catch_5e
    move-exception v2

    .line 476
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

    .line 482
    if-eqz v3, :cond_5b

    .line 483
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_88

    goto :goto_5b

    .line 485
    :catch_83
    move-exception v2

    .line 487
    .local v2, "e":Ljava/io/IOException;
    :try_start_84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 495
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

    .line 478
    .restart local v0    # "buffer":[C
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v5    # "i":I
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_8b
    move-exception v2

    .line 479
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

    .line 482
    if-eqz v3, :cond_5b

    .line 483
    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catchall {:try_start_97 .. :try_end_9a} :catchall_88

    goto :goto_5b

    .line 485
    :catch_9b
    move-exception v2

    .line 487
    .local v2, "e":Ljava/io/IOException;
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_88

    goto :goto_5b

    .line 481
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v8

    .line 482
    :goto_a1
    if-eqz v3, :cond_a6

    .line 483
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_e1
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_88

    .line 481
    :cond_a6
    :goto_a6
    :try_start_a6
    throw v8

    .line 494
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_a7
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateUSBDevice()V

    .line 495
    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_88

    .line 500
    const/4 v5, 0x0

    :goto_ac
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_d9

    .line 501
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 502
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

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 505
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_d9
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v9, "MAJOR=116"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 506
    return-void

    .line 485
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_e1
    move-exception v2

    .line 487
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 485
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v1    # "curState":I
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_e6
    move-exception v2

    .line 487
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_88

    goto/16 :goto_5a

    .line 481
    .end local v1    # "curState":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catchall_ec
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_a1

    .line 478
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_ef
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_8c

    .line 475
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

    .line 939
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-array v1, v12, [C

    .line 941
    .local v1, "buffer":[C
    const-string v0, "sys/class/sec/switch/adc"

    .line 942
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 943
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 945
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_13
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_61
    .catchall {:try_start_13 .. :try_end_18} :catchall_73

    .line 946
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1b
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 947
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 948
    if-le v7, v8, :cond_3c

    .line 949
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 952
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_2d
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_32} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_32} :catch_8c
    .catchall {:try_start_1b .. :try_end_32} :catchall_89

    move-result v10

    if-eqz v10, :cond_44

    .line 961
    if-eqz v6, :cond_3a

    .line 962
    :try_start_37
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_7f

    :cond_3a
    :goto_3a
    move-object v5, v6

    .line 970
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3b
    return v8

    .line 951
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_42} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_8c
    .catchall {:try_start_3c .. :try_end_42} :catchall_89

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_2d

    .line 961
    :cond_44
    if-eqz v6, :cond_49

    .line 962
    :try_start_46
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_84

    :cond_49
    :goto_49
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4a
    :goto_4a
    move v8, v9

    .line 970
    goto :goto_3b

    .line 955
    :catch_4c
    move-exception v4

    .line 956
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4d
    :try_start_4d
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_73

    .line 961
    if-eqz v5, :cond_4a

    .line 962
    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_4a

    .line 964
    :catch_5c
    move-exception v4

    .line 966
    .local v4, "e":Ljava/io/IOException;
    :goto_5d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 957
    .end local v4    # "e":Ljava/io/IOException;
    :catch_61
    move-exception v4

    .line 958
    .local v4, "e":Ljava/lang/Exception;
    :goto_62
    :try_start_62
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_73

    .line 961
    if-eqz v5, :cond_4a

    .line 962
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_4a

    .line 964
    :catch_71
    move-exception v4

    goto :goto_5d

    .line 960
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v8

    .line 961
    :goto_74
    if-eqz v5, :cond_79

    .line 962
    :try_start_76
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 960
    :cond_79
    :goto_79
    throw v8

    .line 964
    :catch_7a
    move-exception v4

    .line 966
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 964
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_7f
    move-exception v4

    .line 966
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 964
    .end local v4    # "e":Ljava/io/IOException;
    :catch_84
    move-exception v4

    .line 966
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 960
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catchall_89
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_74

    .line 957
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8c
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_62

    .line 955
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8f
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_4d
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 976
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :try_start_1e
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "devPath":Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, "name":Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 982
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_3b} :catch_43

    .line 983
    :try_start_3b
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 984
    monitor-exit v5

    .line 988
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_3f
    return-void

    .line 984
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "state":I
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    :try_start_42
    throw v4
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_43} :catch_43

    .line 985
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_43
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
