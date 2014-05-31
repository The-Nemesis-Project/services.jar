.class public abstract Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AbsAirViewOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$AirViewObserver;,
        Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;,
        Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SSRMv2:AirViewOnOff"

.field public static final WINDOW_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final WINDOW_ORIENTATION_NONE:I = 0x0

.field public static final WINDOW_ORIENTATION_PORTRAIT:I = 0x1

.field private static mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;


# instance fields
.field final AIR_VIEW_TAG_NAME:Ljava/lang/String;

.field FPS_SYSFS_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final TSP_PATH:Ljava/lang/String;

.field final TSP_RESULT_PATH:Ljava/lang/String;

.field final TYPE_FINGER_ALL_OFF:I

.field final TYPE_FINGER_ALL_ON:I

.field final TYPE_FINGER_HANDGRIP_ON:I

.field final TYPE_FINGER_HOVER_ON:I

.field mAirViewOnPackagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

.field mForceUpdateSysfs:Z

.field mForegroundPackageName:Ljava/lang/String;

.field mFpsSysfsTableInit:Z

.field mIsAirViewAppOnFg:Z

.field mLastAirViewStatus:I

.field mLastFps:I

.field mLastHandGripEnable:I

.field mLastHoverEnable:I

.field mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

.field mTSPSysfsWritable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 50
    iput v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TYPE_FINGER_ALL_OFF:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TYPE_FINGER_HOVER_ON:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TYPE_FINGER_HANDGRIP_ON:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TYPE_FINGER_ALL_ON:I

    .line 79
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    .line 170
    iput v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastAirViewStatus:I

    .line 172
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    .line 174
    iput v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastFps:I

    .line 196
    iput v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHoverEnable:I

    .line 198
    iput v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHandGripEnable:I

    .line 246
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    .line 319
    const-string v0, "com.sec.android.airview.HOVER"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->AIR_VIEW_TAG_NAME:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    .line 450
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    .line 480
    const-string v0, "/sys/class/sec/tsp/cmd"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TSP_PATH:Ljava/lang/String;

    .line 482
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->TSP_RESULT_PATH:Ljava/lang/String;

    .line 484
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    .line 491
    new-instance v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    .line 638
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->checkTSPCmdSysfs()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->registerWhiteList()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->createDynamicFPSTable()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    if-nez v0, :cond_1e

    .line 65
    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->isPenHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->isFingerHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 66
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "getInstance:: AirViewOnOffForDual"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/AirViewOnOffForDual;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    .line 76
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    return-object v0

    .line 68
    :cond_21
    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->isFingerHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 69
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "getInstance:: AirViewOnOff"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/android/server/ssrm/fgapps/AirViewOnOff;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/AirViewOnOff;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    goto :goto_1e

    .line 72
    :cond_36
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "getInstance:: AirViewOnOffDummy"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/android/server/ssrm/fgapps/AirViewOnOffDummy;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/AirViewOnOffDummy;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    goto :goto_1e
.end method

.method public static isFingerHoverSupported()Z
    .registers 1

    .prologue
    .line 821
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    return v0
.end method

.method public static isPenHoverSupported()Z
    .registers 2

    .prologue
    .line 816
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sec_epen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    .local v0, "pen":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;)I
.end method

.method checkFPS(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "temp"    # Ljava/lang/String;
    .param p2, "fps"    # I

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 250
    const-string v1, "SSRMv2:AirViewOnOff"

    const-string v3, "FPS found in look up"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    .local v0, "sysfsfps":I
    const-string v1, "SSRMv2:AirViewOnOff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS found in look up sysfps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-ne p2, v0, :cond_38

    .line 254
    const/4 v1, 0x1

    .line 259
    .end local v0    # "sysfsfps":I
    :goto_37
    return v1

    .restart local v0    # "sysfsfps":I
    :cond_38
    move v1, v2

    .line 256
    goto :goto_37

    .end local v0    # "sysfsfps":I
    :cond_3a
    move v1, v2

    .line 259
    goto :goto_37
.end method

.method checkTSPCmdSysfs()V
    .registers 3

    .prologue
    .line 487
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    .line 489
    return-void

    .line 488
    :cond_17
    const/4 v1, 0x0

    goto :goto_14
.end method

.method createDynamicFPSTable()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 455
    const-string v3, "SSRMv2:AirViewOnOff"

    const-string/jumbo v4, "updating lookup hash"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v4, "j6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 478
    :cond_19
    :goto_19
    return-void

    .line 461
    :cond_1a
    sget-object v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v3, :cond_19

    .line 462
    const-string v0, "/sys/class/lcd/panel/fps_change"

    .line 463
    .local v0, "QUALCOMM_FPS_PATH":Ljava/lang/String;
    const-string v1, "/sys/class/graphics/fb0/lcdfreq/level"

    .line 465
    .local v1, "SLSI_FPS_PATH":Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v3}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "sysfsPath":Ljava/lang/String;
    const-string v3, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 467
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "60hz, div=3"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "40hz, div=5"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "48hz, div=8"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    goto :goto_19

    .line 471
    :cond_54
    const-string v3, "/sys/class/lcd/panel/fps_change"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 472
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "42"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "51"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    goto :goto_19
.end method

.method disableFingerHover()V
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHoverEnable:I

    if-eqz v0, :cond_15

    .line 216
    const-string v0, "hover_enable,0"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHoverEnable:I

    .line 220
    :cond_15
    return-void
.end method

.method disableHandGrip()V
    .registers 3

    .prologue
    .line 231
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHandGripEnable:I

    if-eqz v0, :cond_15

    .line 232
    const-string v0, "handgrip_enable,0"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHandGripEnable:I

    .line 236
    :cond_15
    return-void
.end method

.method protected discoverAndRegisterPackagesWithFingerHoverIntentFilter(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 364
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 368
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$2;-><init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 397
    return-void
.end method

.method enableFingerHover()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 223
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHoverEnable:I

    if-eq v0, v2, :cond_15

    .line 224
    const-string v0, "hover_enable,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iput v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHoverEnable:I

    .line 228
    :cond_15
    return-void
.end method

.method enableHandGrip()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 239
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHandGripEnable:I

    if-eq v0, v2, :cond_15

    .line 240
    const-string v0, "handgrip_enable,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "SSRMv2:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iput v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastHandGripEnable:I

    .line 244
    :cond_15
    return-void
.end method

.method public onFgAppChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "isAirViewOnApp":Z
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 834
    const/4 v0, 0x1

    .line 837
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eq v0, v1, :cond_1c

    .line 838
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    .line 839
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 842
    :cond_1c
    const-string v1, "com.sec.android.app.launcher"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 843
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setPhoneDialerVisible(Z)V

    .line 844
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setContactDialerVisible(Z)V

    .line 846
    :cond_30
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 850
    return-void
.end method

.method public onFrameRateUpdate(ILjava/lang/String;)V
    .registers 5
    .param p1, "fps"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;-><init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 87
    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    if-nez v10, :cond_a

    .line 168
    :cond_9
    :goto_9
    return-void

    .line 91
    :cond_a
    const-string v1, "ResponseAxT9Info"

    .line 92
    .local v1, "RESPONSE_AXT9INFO":Ljava/lang/String;
    const-string v0, "AxT9IME.isVisibleWindow"

    .line 94
    .local v0, "IS_VISIBLE_WINDOW":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "action":Ljava/lang/String;
    const-string v10, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 98
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setStatusBar(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_9

    .line 100
    :cond_25
    const-string v10, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 101
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setStatusBar(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_9

    .line 103
    :cond_36
    const-string v10, "com.samsung.cover.OPEN"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 104
    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    const-string v11, "coverOpen"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4f

    :goto_48
    invoke-virtual {v10, v8}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setClearCover(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_9

    :cond_4f
    move v8, v9

    .line 104
    goto :goto_48

    .line 106
    :cond_51
    const-string v10, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 107
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setMultiWindow(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_9

    .line 109
    :cond_68
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    .line 110
    new-instance v9, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-direct {v9, p0, p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;-><init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    .line 112
    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 114
    .local v4, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 115
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 119
    :cond_8f
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->discoverAndRegisterPackagesWithFingerHoverIntentFilter(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 120
    .end local v4    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_94
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updatePackagesWithFingerHoverIntentFilter(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 122
    :cond_a1
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 123
    const-string v9, "SSRMv2:AirViewOnOff"

    const-string v10, "onReceive:: Intent.ACTION_SCREEN_ON"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 127
    .restart local v4    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 128
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 129
    iget v9, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastAirViewStatus:I

    if-ne v9, v8, :cond_cb

    .line 130
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    .line 132
    :cond_cb
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_9

    .line 134
    .end local v4    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_d0
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 135
    const-string v8, "SSRMv2:AirViewOnOff"

    const-string v10, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static {v8, v10}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 138
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setPatternLockVisible(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_9

    .line 140
    :cond_ee
    const-string v8, "ResponseAxT9Info"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 141
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    const-string v10, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setSIP(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_9

    .line 143
    :cond_106
    const-string v8, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_116

    const-string v8, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    .line 144
    :cond_116
    const-string v8, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "statusName":Ljava/lang/String;
    const-string v8, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 146
    .local v7, "statusValue":Z
    const-string v8, "PackageName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "packageName":Ljava/lang/String;
    const-string v8, "Browser_showMain"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 149
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v7}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setBrowserMainPage(Z)V

    .line 161
    :cond_135
    :goto_135
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_9

    .line 150
    :cond_13a
    const-string v8, "Phone_dialer"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_178

    .line 151
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Phone_dialer = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v8, "com.android.contacts"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_172

    .line 153
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v7}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setContactDialerVisible(Z)V

    goto :goto_135

    .line 155
    :cond_172
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v7}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setPhoneDialerVisible(Z)V

    goto :goto_135

    .line 157
    :cond_178
    const-string v8, "Lockscreen_patternLock"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_135

    .line 158
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lockscreen_patternLock = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v7}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setPatternLockVisible(Z)V

    goto :goto_135

    .line 162
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "statusName":Ljava/lang/String;
    .end local v7    # "statusValue":Z
    :cond_19e
    const-string v8, "com.samsung.pen.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 163
    const-string v8, "penInsert"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 165
    .local v3, "isPenInsert":Z
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v8, v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setPenAttached(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_9
.end method

.method protected registerWhiteList()V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 325
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Email"

    const-string v2, "com.android.email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Messaging"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music"

    const-string v2, "com.samsung.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Player"

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "My files"

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "New Internet"

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S Memo"

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S-Planner"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Story ablum"

    const-string v2, "com.samsung.android.app.episodes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video (hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Allshare play"

    const-string v2, "com.sec.pcw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON"

    const-string v2, "com.sec.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON V"

    const-string v2, "com.coolots.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Clock Package"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Group play"

    const-string v2, "com.samsung.groupcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kids mode"

    const-string v2, "com.samsung.kidsmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kies cast"

    const-string v2, "com.sec.android.app.podcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Prism store"

    const-string v2, "com.sec.everglades"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S health"

    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video editor"

    const-string v2, "com.sec.android.app.ve"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice"

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice recorder"

    const-string v2, "com.sec.android.app.voicerecorder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "color blind"

    const-string v2, "com.samsung.android.app.colorblind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Remote view finder"

    const-string v2, "com.sec.android.app.remoteviewfinder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "SamsungApps"

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "sbrowsertry"

    const-string v2, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Live Share"

    const-string v2, "com.sec.android.app.mediasync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Books"

    const-string v2, "com.sec.readershub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Learning"

    const-string v2, "com.sec.msc.learninghub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music 3.1"

    const-string v2, "com.samsung.musichub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Games"

    const-string v2, "com.sec.android.app.gamehub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method declared-synchronized sendHoverCommand(I)V
    .registers 3
    .param p1, "newType"    # I

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->disableFingerHover()V

    .line 202
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->disableHandGrip()V

    .line 204
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 205
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->enableFingerHover()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    .line 212
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 206
    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 207
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->enableHandGrip()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_d

    .line 201
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_19
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 209
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->enableFingerHover()V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->enableHandGrip()V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_16

    goto :goto_d
.end method

.method public setMultiverseEnable(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setGripVolumeDown(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 317
    return-void
.end method

.method public setWindowOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 305
    if-ne p1, v1, :cond_d

    .line 306
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLandscape(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 312
    :cond_c
    :goto_c
    return-void

    .line 308
    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 309
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->setLandscape(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_c
.end method

.method updateAirViewStatus()V
    .registers 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    if-nez v1, :cond_d

    .line 183
    const-string v1, "SSRMv2:AirViewOnOff"

    const-string/jumbo v2, "updateAirViewStatus:: mSettingsAirView or mSettingsAirView is null."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_c
    :goto_c
    return-void

    .line 186
    :cond_d
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;->printDebug()V

    .line 187
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;->printDebug()V

    .line 188
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$SettingsAirViewInfo;)I

    move-result v0

    .line 189
    .local v0, "newAirViewStatus":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastAirViewStatus:I

    if-ne v1, v0, :cond_27

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    if-eqz v1, :cond_c

    .line 190
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->sendHoverCommand(I)V

    .line 191
    iput v0, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastAirViewStatus:I

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    goto :goto_c
.end method

.method updateAirViewStatus(I)V
    .registers 2
    .param p1, "fps"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mLastFps:I

    .line 178
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 179
    return-void
.end method

.method protected updatePackagesWithFingerHoverIntentFilter(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x200

    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "intentData":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "refinedPkg":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v0, v5, v8

    .line 404
    .local v0, "addedPackage":Ljava/lang/String;
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_PACKAGE_ADDED :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-eqz v0, :cond_1b7

    .line 407
    const-string v8, "SSRMv2:AirViewOnOff"

    const-string v9, "AirView Tag Scan Start (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 409
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.airview.HOVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, "mIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 412
    .local v7, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added ris count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 414
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added package intent for :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added HashMap size Before Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 421
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_d7
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added HashMap size after Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    .line 427
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_f7
    const-string v8, "SSRMv2:AirViewOnOff"

    const-string v9, "AirView Tag Scan End (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v8, "SSRMv2:AirViewOnOff"

    const-string v9, "AirView Provider Scan Start (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v8, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1b0

    .line 431
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "mIntent":Landroid/content/Intent;
    sget-object v8, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v3    # "mIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 433
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 434
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider package intent for :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider HashMap size Before Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_190

    .line 439
    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_190
    const-string v8, "SSRMv2:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider HashMap size after Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 446
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b0
    const-string v8, "SSRMv2:AirViewOnOff"

    const-string v9, "AirView Provider Scan End (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1b7
    return-void
.end method

.method writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 825
    const-string v0, "SSRMv2:AirViewOnOff"

    invoke-static {v0, p2, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method
