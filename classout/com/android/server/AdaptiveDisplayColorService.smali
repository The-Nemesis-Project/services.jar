.class public Lcom/android/server/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final BLUE:I

.field private final DEBUG:Z

.field private final GREEN:I

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final MSG_DISABLE_RGB_SENSOR:I

.field private final MSG_ENABLE_RGB_SENSOR:I

.field private final MSG_RGB_SENSOR_DEBOUNCED:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final RED:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final TRI:F

.field private mAdaptiveDisplayColorServiceEnable:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private final mContext:Landroid/content/Context;

.field private mCountSensorValue:I

.field private mDebounceRgbTime:J

.field private mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInScrContorlZone:Z

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMaxR:I

.field private mPrevBr:F

.field private mPrevContorlZone:I

.field private mPrevGr:F

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field private mPrevMaxR:I

.field private mPrevRr:F

.field private mPrevScrB:I

.field private mPrevScrG:I

.field private mPrevScrR:I

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mScrB:I

.field private mScrFileExists:Z

.field private mScrG:I

.field private mScrR:I

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

.field private mUseAdaptiveDisplayColorServiceConfig:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    const v3, 0x3eaaaaab

    const/4 v2, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    .line 52
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->TRI:F

    .line 53
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->RED:I

    .line 54
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->GREEN:I

    .line 55
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->BLUE:I

    .line 57
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_RGB_SENSOR_DEBOUNCED:I

    .line 58
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 59
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_ENABLE_RGB_SENSOR:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_DISABLE_RGB_SENSOR:I

    .line 62
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 64
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 65
    const-string v0, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 81
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 87
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 88
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 89
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 91
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 92
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 93
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 95
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevRr:F

    .line 96
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevGr:F

    .line 97
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevBr:F

    .line 99
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrR:I

    .line 100
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrG:I

    .line 101
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrB:I

    .line 103
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrR:I

    .line 104
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrG:I

    .line 105
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrB:I

    .line 107
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMaxR:I

    .line 108
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    .line 202
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$1;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 114
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    .line 119
    return-void
.end method

.method private TODO_If_receive_screen_off_intent()V
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v0, :cond_c

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 169
    :cond_c
    return-void
.end method

.method private TODO_If_receive_screen_on_intent()V
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v0, :cond_c

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 163
    :cond_c
    return-void
.end method

.method private TODO_If_setting_is_changed()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v1, :cond_1f

    .line 174
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_20

    move v1, v2

    :goto_16
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 179
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v1, :cond_22

    .line 180
    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 185
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1f
    :goto_1f
    return-void

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_20
    move v1, v3

    .line 175
    goto :goto_16

    .line 182
    :cond_22
    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/android/server/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->TODO_If_setting_is_changed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->debounceRgbSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AdaptiveDisplayColorService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    return-void
.end method

.method private debounceRgbSensor()V
    .registers 3

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->updateAmbientRgb(J)V

    .line 349
    return-void
.end method

.method private enableRgbSensor(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 191
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "StatFs returns null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_14
    const-string v1, "AdaptiveDisplayColorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRgbSensor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_3b

    .line 195
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 200
    :goto_3a
    return-void

    .line 197
    :cond_3b
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 198
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_3a
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v2, 0x0

    .line 436
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_39
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_53

    .line 446
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 447
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_60

    move-object v2, v3

    .line 456
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_38
    return-void

    .line 441
    :catch_39
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3a
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_52} :catch_53

    goto :goto_38

    .line 448
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_53
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/IOException;
    :goto_54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_38

    .line 452
    :catch_5b
    move-exception v1

    .line 453
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_60
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_54
.end method

.method private getRgbFromLightSensor()V
    .registers 6

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "raw":Ljava/lang/String;
    :try_start_1
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "rawDatas":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 232
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 233
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_39

    .line 237
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :goto_38
    return-void

    .line 234
    :catch_39
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x0

    .line 240
    const/4 v5, 0x0

    .line 241
    .local v5, "in":Ljava/io/InputStream;
    const/16 v0, 0x28

    .line 242
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v11, [B

    .line 243
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 244
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 246
    .local v7, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v11, :cond_12

    .line 247
    aput-byte v10, v1, v4

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 251
    :cond_12
    :try_start_12
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_41
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_51
    .catchall {:try_start_12 .. :try_end_1c} :catchall_7c

    .line 252
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    if-eqz v6, :cond_30

    .line 253
    :try_start_1e
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 254
    if-eqz v7, :cond_2d

    .line 255
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move-object v8, v9

    .line 257
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_30} :catch_92
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_8f
    .catchall {:try_start_1e .. :try_end_30} :catchall_8c

    .line 266
    :cond_30
    if-eqz v6, :cond_95

    .line 268
    :try_start_32
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v5, v6

    .line 274
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_36
    :goto_36
    return-object v8

    .line 269
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_37
    move-exception v3

    .line 270
    .local v3, "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 271
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_36

    .line 259
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_41
    move-exception v10

    .line 266
    :goto_42
    if-eqz v5, :cond_36

    .line 268
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_36

    .line 269
    :catch_48
    move-exception v3

    .line 270
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 262
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_51
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    const-string v10, "AdaptiveDisplayColorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_7c

    .line 266
    if-eqz v5, :cond_36

    .line 268
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_36

    .line 269
    :catch_73
    move-exception v3

    .line 270
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 266
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_7c
    move-exception v10

    :goto_7d
    if-eqz v5, :cond_82

    .line 268
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 271
    :cond_82
    :goto_82
    throw v10

    .line 269
    :catch_83
    move-exception v3

    .line 270
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 266
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_8c
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_7d

    .line 262
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_8f
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_52

    .line 259
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_92
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_42

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_95
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_36
.end method

.method private handleRgbSensorEvent(JIIII)V
    .registers 14
    .param p1, "time"    # J
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "lux"    # I

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-direct {p0, p6}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary(I)I

    move-result v6

    .line 279
    .local v6, "isInControlZone":I
    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v0, v6, :cond_1d

    .line 280
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 281
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastChangedRgbTime:J

    .line 282
    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 283
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 284
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v1, 0xbb8

    add-long/2addr v1, p1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 287
    :cond_1d
    if-ne v6, v3, :cond_27

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move-wide v4, p1

    .line 288
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AdaptiveDisplayColorService;->setAverageValue(IIIJ)V

    .line 290
    :cond_27
    return-void
.end method

.method private initRgbAverage()V
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 303
    return-void
.end method

.method private isInBoundary(I)I
    .registers 3
    .param p1, "lux"    # I

    .prologue
    .line 294
    const/16 v0, 0x32

    if-ge p1, v0, :cond_6

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private sendRgbAverage()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const v9, 0x461c4000

    .line 408
    const-string v6, "AdaptiveDisplayColorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAvgR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAvgG = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAvgB = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v9

    float-to-int v2, v6

    .line 412
    .local v2, "intAvgR":I
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v9

    float-to-int v1, v6

    .line 413
    .local v1, "intAvgG":I
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v9

    float-to-int v0, v6

    .line 415
    .local v0, "intAvgB":I
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 417
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v2, v6, :cond_5d

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v6, :cond_5d

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v6, :cond_8f

    .line 418
    :cond_5d
    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 419
    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 420
    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "str":Ljava/lang/String;
    if-eqz v2, :cond_8f

    if-eqz v1, :cond_8f

    if-eqz v0, :cond_8f

    .line 424
    const-string v6, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v6, v3}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v3    # "str":Ljava/lang/String;
    :cond_8f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 429
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 430
    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0xbb8

    add-long/2addr v7, v4

    invoke-virtual {v6, v10, v7, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 431
    return-void
.end method

.method private setAverageValue(IIIJ)V
    .registers 12
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "time"    # J

    .prologue
    .line 306
    add-int v4, p1, p2

    add-int v3, v4, p3

    .line 307
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 309
    .local v0, "ratioB":F
    int-to-float v4, p1

    int-to-float v5, v3

    div-float v2, v4, v5

    .line 310
    int-to-float v4, p2

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 311
    int-to-float v4, p3

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 313
    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    .line 314
    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v4, v1

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    .line 315
    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    .line 317
    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 318
    return-void
.end method

.method private updateAmbientRgb(J)V
    .registers 11
    .param p1, "time"    # J

    .prologue
    const/4 v7, 0x2

    const-wide/16 v5, 0xbb8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 352
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMaxR:I

    if-nez v2, :cond_29

    .line 353
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    if-eqz v2, :cond_11

    .line 354
    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    .line 355
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    .line 357
    :cond_11
    iget-wide v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    add-long v0, v2, v5

    .line 358
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_23

    .line 359
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrR:I

    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrG:I

    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrB:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->updateAutoRgb(III)V

    .line 386
    :goto_22
    return-void

    .line 361
    :cond_23
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_22

    .line 363
    .end local v0    # "debounceTime":J
    :cond_29
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMaxR:I

    if-ne v2, v3, :cond_4d

    .line 364
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    if-eq v2, v3, :cond_35

    .line 365
    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    .line 366
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    .line 368
    :cond_35
    iget-wide v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    add-long v0, v2, v5

    .line 369
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_47

    .line 370
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrR:I

    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrG:I

    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrB:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->updateAutoRgb(III)V

    goto :goto_22

    .line 372
    :cond_47
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_22

    .line 375
    .end local v0    # "debounceTime":J
    :cond_4d
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    if-eq v2, v7, :cond_55

    .line 376
    iput v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevMaxR:I

    .line 377
    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    .line 379
    :cond_55
    iget-wide v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    add-long v0, v2, v5

    .line 380
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_67

    .line 381
    iget v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrR:I

    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrG:I

    iget v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScrB:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->updateAutoRgb(III)V

    goto :goto_22

    .line 383
    :cond_67
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_22
.end method

.method private updateAutoRgb(III)V
    .registers 8
    .param p1, "scrR"    # I
    .param p2, "scrG"    # I
    .param p3, "scrB"    # I

    .prologue
    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDebounceRgbTime:J

    .line 390
    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrR:I

    if-ne v1, p1, :cond_13

    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrG:I

    if-ne v1, p2, :cond_13

    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrB:I

    if-ne v1, p3, :cond_13

    .line 404
    :goto_12
    return-void

    .line 393
    :cond_13
    iput p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrR:I

    .line 394
    iput p2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrG:I

    .line 395
    iput p3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevScrB:I

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "values":Ljava/lang/String;
    const-string v1, "AdaptiveDisplayColorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v1, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v1, v0}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method systemReady()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 122
    iput-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 123
    iput-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    .line 129
    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v1, :cond_3f

    .line 130
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 133
    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    .line 136
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->TODO_If_setting_is_changed()V

    .line 143
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_3f
    return-void
.end method
