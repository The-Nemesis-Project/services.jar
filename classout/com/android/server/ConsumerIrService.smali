.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:I

.field private final mHalLock:Ljava/lang/Object;

.field private mLEDTimer:Ljava/util/Timer;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private resultSelfTest:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 76
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 79
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 82
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 87
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 88
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v1, :cond_54

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_48
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v1, :cond_54

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ConsumerIrService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConsumerIrService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method private blinkLED(I)V
    .registers 6
    .param p1, "period"    # I

    .prologue
    .line 162
    const-string v0, "ConsumerIrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkLED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->stopBlinkLED()V

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 166
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 167
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/ConsumerIrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ConsumerIrService$1;-><init>(Lcom/android/server/ConsumerIrService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 173
    :cond_34
    return-void
.end method

.method private static native halGetCarrierFrequencies(I)[I
.end method

.method private static native halOpen()I
.end method

.method private static native halTransmit(II[I)I
.end method

.method private stopBlinkLED()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 180
    :cond_c
    return-void
.end method

.method private swtichLED(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 188
    .local v1, "fwLED":Ljava/io/FileWriter;
    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_54
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_31
    .catchall {:try_start_2 .. :try_end_9} :catchall_3d

    .line 189
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .local v2, "fwLED":Ljava/io/FileWriter;
    if-eqz p1, :cond_1b

    .line 190
    :try_start_b
    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 193
    :goto_10
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_13} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_51
    .catchall {:try_start_b .. :try_end_13} :catchall_4e

    .line 194
    const/4 v3, 0x1

    .line 200
    if-eqz v2, :cond_19

    .line 202
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_49

    :cond_19
    :goto_19
    move-object v1, v2

    .line 208
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :cond_1a
    :goto_1a
    return v3

    .line 192
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_1b
    :try_start_1b
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_51
    .catchall {:try_start_1b .. :try_end_20} :catchall_4e

    goto :goto_10

    .line 195
    :catch_21
    move-exception v0

    move-object v1, v2

    .line 196
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3d

    .line 200
    if-eqz v1, :cond_1a

    .line 202
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1a

    .line 203
    :catch_2c
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/io/IOException;
    :goto_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 197
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_31
    move-exception v0

    .line 198
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 200
    if-eqz v1, :cond_1a

    .line 202
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_1a

    .line 203
    :catch_3b
    move-exception v0

    goto :goto_2d

    .line 200
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_3d
    move-exception v4

    :goto_3e
    if-eqz v1, :cond_43

    .line 202
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 200
    :cond_43
    :goto_43
    throw v4

    .line 203
    :catch_44
    move-exception v0

    .line 204
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 203
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_49
    move-exception v0

    .line 204
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 200
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_3e

    .line 197
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_51
    move-exception v0

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_32

    .line 195
    :catch_54
    move-exception v0

    goto :goto_23
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v0, :cond_c

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_c
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 150
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_12
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 155
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_18
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v0}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getSelfTestResult()I
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 214
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_6
    iget v0, p0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    monitor-exit v1

    return v0

    .line 217
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasIrEmitter()Z
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.TRANSMIT_IR"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_14

    .line 111
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Requires TRANSMIT_IR permission"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 114
    :cond_14
    const-wide/16 v8, 0x0

    .line 115
    .local v8, "totalXmitTime":J
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 116
    move-object/from16 v2, p3

    .local v2, "arr$":[I
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1f
    if-ge v4, v5, :cond_32

    aget v7, v2, v4

    .line 117
    .local v7, "slice":I
    if-gtz v7, :cond_2d

    .line 118
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Non-positive IR slice"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 120
    :cond_2d
    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 123
    .end local v7    # "slice":I
    :cond_32
    const-wide/32 v10, 0x1e8480

    cmp-long v10, v8, v10

    if-lez v10, :cond_41

    .line 124
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "IR pattern too long"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 127
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v11

    .line 131
    :try_start_49
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/ConsumerIrService;->mHal:I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v10, v0, v1}, Lcom/android/server/ConsumerIrService;->halTransmit(II[I)I

    move-result v3

    .line 133
    .local v3, "err":I
    if-gez v3, :cond_6f

    .line 134
    const-string v10, "ConsumerIrService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error transmitting: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_6f
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v8

    move/from16 v0, p2

    int-to-long v14, v0

    div-long/2addr v12, v14

    long-to-int v6, v12

    .line 138
    .local v6, "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;->blinkLED(I)V

    .line 139
    if-nez v3, :cond_82

    .line 140
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 143
    :cond_82
    monitor-exit v11

    .line 144
    return-void

    .line 143
    .end local v3    # "err":I
    .end local v6    # "period":I
    :catchall_84
    move-exception v10

    monitor-exit v11
    :try_end_86
    .catchall {:try_start_49 .. :try_end_86} :catchall_84

    throw v10
.end method
