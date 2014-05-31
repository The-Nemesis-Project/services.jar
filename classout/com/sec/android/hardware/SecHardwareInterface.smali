.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_EMAIL_MODE:I = 0xa

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final READING_MODE_PATH:Ljava/lang/String; = "sys.dnle.readingmode"

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 180
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 181
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 558
    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    .line 607
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static CabcDaemonConnect()V
    .registers 0

    .prologue
    .line 210
    return-void
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 214
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_2f

    .line 219
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 220
    .local v3, "send_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 221
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 224
    const/16 v4, 0x64

    new-array v2, v4, [B

    .line 225
    .local v2, "recv_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 226
    .local v1, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_2a

    .line 237
    .end local v1    # "len":I
    .end local v2    # "recv_buf":[B
    .end local v3    # "send_buf":[B
    :goto_29
    return-void

    .line 229
    :catch_2a
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2f
    sput-boolean v5, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_29
.end method

.method private static IsCabcDaemonConnected()Z
    .registers 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method private static _setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 293
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .registers 5
    .param p0, "enable"    # Z

    .prologue
    .line 676
    const/4 v1, 0x1

    .line 679
    .local v1, "ret":Z
    if-eqz p0, :cond_11

    .line 682
    :try_start_3
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,1"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 696
    :goto_b
    return v1

    .line 683
    :catch_c
    move-exception v0

    .line 684
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b

    .line 689
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_11
    :try_start_11
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,0"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_b

    .line 690
    :catch_1a
    move-exception v0

    .line 691
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public static enableGloveMode(Z)Z
    .registers 6
    .param p0, "enable"    # Z

    .prologue
    .line 642
    const/4 v2, 0x1

    .line 643
    .local v2, "ret":Z
    const/4 v0, 0x1

    .line 646
    .local v0, "con":Z
    if-nez p0, :cond_21

    .line 651
    :try_start_4
    const-string v3, "/sys/class/sec/sec_touchkey/glove_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_1c

    move-result v2

    .line 662
    :goto_c
    :try_start_c
    const-string v4, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_23

    const-string v3, "glove_mode,1"

    :goto_12
    invoke-static {v4, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_26

    move-result v0

    .line 668
    :goto_16
    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    .line 671
    :goto_1b
    return v2

    .line 652
    :catch_1c
    move-exception v1

    .line 654
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_c

    .line 658
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_21
    const/4 v2, 0x1

    goto :goto_c

    .line 662
    :cond_23
    :try_start_23
    const-string v3, "glove_mode,0"
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_12

    .line 663
    :catch_26
    move-exception v1

    .line 665
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 668
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2b
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static enableHandgripEvent(Z)Z
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 632
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_b

    const-string v1, "handgrip_enable,1"

    :goto_6
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 637
    :goto_a
    return v1

    .line 632
    :cond_b
    const-string v1, "handgrip_enable,0"
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_6

    .line 633
    :catch_e
    move-exception v0

    .line 634
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 637
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static enableHoverEvent(Z)Z
    .registers 4
    .param p0, "enable"    # Z

    .prologue
    .line 620
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_b

    const-string v1, "hover_enable,1"

    :goto_6
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 625
    :goto_a
    return v1

    .line 620
    :cond_b
    const-string v1, "hover_enable,0"
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_6

    .line 621
    :catch_e
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 625
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 701
    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getEPenType()I
    .registers 11

    .prologue
    const/4 v7, -0x1

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, -0x1

    .line 572
    .local v6, "type":I
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_44
    .catchall {:try_start_3 .. :try_end_14} :catchall_53

    .line 579
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_6b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_68

    move-result v6

    .line 592
    if-eqz v1, :cond_66

    .line 593
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_62

    .line 594
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_21
    const/4 v0, 0x0

    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_22
    :goto_22
    move v7, v6

    .line 601
    :cond_23
    :goto_23
    return v7

    .line 574
    :catch_24
    move-exception v2

    .line 575
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_44
    .catchall {:try_start_25 .. :try_end_28} :catchall_53

    .line 592
    if-eqz v0, :cond_23

    .line 593
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_60

    .line 594
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2d
    const/4 v0, 0x0

    goto :goto_23

    .line 580
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2f
    move-exception v5

    .line 581
    .local v5, "ne":Ljava/lang/NumberFormatException;
    :try_start_30
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 582
    if-eqz v1, :cond_6e

    .line 583
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_6b
    .catchall {:try_start_30 .. :try_end_38} :catchall_68

    .line 584
    const/4 v0, 0x0

    .line 592
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_39
    if-eqz v0, :cond_23

    .line 593
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2d

    .line 596
    :catch_3f
    move-exception v4

    .line 597
    .end local v5    # "ne":Ljava/lang/NumberFormatException;
    .local v4, "ie":Ljava/io/IOException;
    :goto_40
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 588
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_44
    move-exception v3

    .line 589
    .local v3, "ee":Ljava/io/IOException;
    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 592
    if-eqz v0, :cond_22

    .line 593
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_21

    .line 596
    :catch_4e
    move-exception v4

    .line 597
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 591
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ie":Ljava/io/IOException;
    :catchall_53
    move-exception v7

    .line 592
    :goto_54
    if-eqz v0, :cond_5a

    .line 593
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    .line 594
    const/4 v0, 0x0

    .line 591
    :cond_5a
    :goto_5a
    throw v7

    .line 596
    :catch_5b
    move-exception v4

    .line 597
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 596
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_60
    move-exception v4

    goto :goto_40

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_62
    move-exception v4

    .line 597
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "ie":Ljava/io/IOException;
    :cond_66
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_22

    .line 591
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_68
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_54

    .line 588
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6b
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_45

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "ne":Ljava/lang/NumberFormatException;
    :cond_6e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_39
.end method

.method private static isReadingMode()Z
    .registers 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public static setAmoledACL(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 253
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setAmoledVideoGamma(Z)Z
    .registers 2
    .param p0, "videomode"    # Z

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "app"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 378
    const/4 v5, 0x0

    .line 383
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    const/4 v3, 0x0

    .line 389
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_17
    new-array v0, v6, [B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_19} :catch_37

    .line 392
    .local v0, "buffer":[B
    :try_start_19
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_37

    .line 398
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    if-eqz p1, :cond_44

    .line 399
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_28
    aput-byte v7, v0, v6

    .line 403
    :goto_2a
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 404
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_4a

    move-object v3, v4

    .line 413
    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_31
    return-void

    .line 393
    .restart local v0    # "buffer":[B
    :catch_32
    move-exception v1

    .line 394
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_31

    .line 405
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_37
    move-exception v1

    .line 406
    .local v1, "e":Ljava/io/IOException;
    :goto_38
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 409
    :catch_3f
    move-exception v2

    .line 410
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 401
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_44
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_47
    aput-byte v7, v0, v6
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 405
    :catch_4a
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_38
.end method

.method public static setBatteryUse(IZ)V
    .registers 4
    .param p0, "module"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_2e

    .line 84
    :goto_3
    return-void

    .line 61
    :pswitch_4
    :try_start_4
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 81
    :catch_a
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_f
    :try_start_f
    const-string/jumbo v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 67
    :pswitch_16
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 70
    :pswitch_1c
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 73
    :pswitch_22
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 76
    :pswitch_28
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_a

    goto :goto_3

    .line 59
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .registers 2
    .param p0, "enable"    # I

    .prologue
    .line 611
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 562
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .registers 7
    .param p0, "handtype"    # I

    .prologue
    .line 530
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 531
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 537
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 542
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-nez p0, :cond_2b

    .line 543
    const/16 v5, 0x30

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 546
    :cond_14
    :goto_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_34

    move-object v2, v3

    .line 555
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 538
    :catch_19
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 547
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 550
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 551
    :catch_26
    move-exception v1

    .line 552
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 544
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2b
    const/4 v5, 0x1

    if-ne p0, v5, :cond_14

    .line 545
    const/16 v5, 0x31

    :try_start_30
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_14

    .line 547
    :catch_34
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .registers 7
    .param p0, "max_freq"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 423
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 429
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 434
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 435
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_2b

    move-object v2, v3

    .line 444
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 430
    :catch_19
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 436
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 439
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 440
    :catch_26
    move-exception v1

    .line 441
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setPlayVideoSpeed(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 419
    return-void
.end method

.method private static setReadingMode(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 309
    if-eqz p0, :cond_2

    .line 314
    :cond_2
    return-void
.end method

.method public static setTconUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 346
    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .registers 9
    .param p0, "level"    # I

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 479
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v5, " "

    .line 483
    .local v5, "modelname":Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 485
    :cond_13
    const-string/jumbo v6, "sys/class/leds/leds-sec/brightness"

    .line 497
    .local v6, "path":Ljava/lang/String;
    :goto_16
    :try_start_16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, "fl":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_24

    .line 499
    const-string/jumbo v6, "sys/class/camera/rear/rear_flash"

    .line 501
    :cond_24
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_29} :catch_9d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_29} :catch_9b
    .catchall {:try_start_16 .. :try_end_29} :catchall_87

    .line 503
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-lez p0, :cond_5c

    const/16 v7, 0xf

    if-ge p0, v7, :cond_5c

    .line 505
    :try_start_2f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "lLevel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_36} :catch_64
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_7a
    .catchall {:try_start_2f .. :try_end_36} :catchall_98

    .line 519
    .end local v4    # "lLevel":Ljava/lang/String;
    :goto_36
    if-eqz v3, :cond_3b

    .line 521
    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_93

    :cond_3b
    :goto_3b
    move-object v2, v3

    .line 527
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_3c
    :goto_3c
    return-void

    .line 486
    .end local v6    # "path":Ljava/lang/String;
    :cond_3d
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_55

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_55

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 490
    :cond_55
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_16

    .line 493
    .end local v6    # "path":Ljava/lang/String;
    :cond_58
    const-string/jumbo v6, "sys/class/camera/flash/rear_flash"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_16

    .line 507
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_5c
    if-nez p0, :cond_74

    .line 509
    :try_start_5e
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_63} :catch_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_7a
    .catchall {:try_start_5e .. :try_end_63} :catchall_98

    goto :goto_36

    .line 514
    :catch_64
    move-exception v0

    move-object v2, v3

    .line 515
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_87

    .line 519
    if-eqz v2, :cond_3c

    .line 521
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_3c

    .line 522
    :catch_6f
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    :goto_70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_74
    :try_start_74
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_79} :catch_64
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_7a
    .catchall {:try_start_74 .. :try_end_79} :catchall_98

    goto :goto_36

    .line 516
    :catch_7a
    move-exception v0

    move-object v2, v3

    .line 517
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_87

    .line 519
    if-eqz v2, :cond_3c

    .line 521
    :try_start_81
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_3c

    .line 522
    :catch_85
    move-exception v0

    goto :goto_70

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_87
    move-exception v7

    :goto_88
    if-eqz v2, :cond_8d

    .line 521
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 519
    :cond_8d
    :goto_8d
    throw v7

    .line 522
    :catch_8e
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8d

    .line 522
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_93
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_98
    move-exception v7

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_88

    .line 516
    .end local v1    # "fl":Ljava/io/File;
    :catch_9b
    move-exception v0

    goto :goto_7c

    .line 514
    :catch_9d
    move-exception v0

    goto :goto_66
.end method

.method public static setTorchLight(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 454
    if-eqz p0, :cond_8

    .line 455
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 459
    :goto_7
    return-void

    .line 457
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_7
.end method

.method public static setTouchJitterFilter(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .registers 4
    .param p0, "enable"    # Z
    .param p1, "result"    # [I

    .prologue
    .line 353
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    :goto_5
    invoke-static {v1, v0, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeNegative(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 336
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeOutDoor(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 327
    const-string v1, "/sys/class/mdnie/mdnie/outdoor"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeReadingMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 275
    if-nez p0, :cond_b

    .line 276
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    .line 280
    :goto_6
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    return v0

    .line 278
    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    goto :goto_6
.end method

.method public static setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 284
    invoke-static {}, Lcom/sec/android/hardware/SecHardwareInterface;->isReadingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    goto :goto_7
.end method

.method public static setmDNIeUserMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 319
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v2, 0x0

    .line 100
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 106
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 107
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 118
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 101
    :catch_1d
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 108
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 112
    :catch_2a
    move-exception v1

    .line 113
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 122
    const/4 v2, 0x0

    .line 126
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 132
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 144
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 127
    :catch_19
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 134
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 138
    :catch_26
    move-exception v1

    .line 139
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 152
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    .line 164
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    .line 175
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_c2
    return v5

    .line 159
    :catch_c3
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    .line 161
    goto :goto_c2

    .line 166
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_c9
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    :goto_ca
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    .line 173
    goto :goto_c2

    .line 170
    :catch_d2
    move-exception v1

    .line 171
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca
.end method
