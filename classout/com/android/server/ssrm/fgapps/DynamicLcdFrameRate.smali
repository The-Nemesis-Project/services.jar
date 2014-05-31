.class public final Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DynamicLcdFrameRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;,
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public static sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

.field static sMultiWindowRunning:Z

.field public static sPermanentAppPID:I


# instance fields
.field final LCD_FPS_HIGH:I

.field final LCD_FPS_IDLE:I

.field final LCD_FPS_LOW:I

.field final LCD_FPS_NONE:I

.field mBrowserIntentLowFps:Z

.field mBrowserLowFps:Z

.field mDynamicFpsPackage:Z

.field mFpsFullScreenMode:Z

.field mPrevBrowserLowFps:Z

.field mPrevFpsFullScreen:Z

.field mPrevFpsPackage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v0, "SSRMv2:DynamicLcdFrameRate"

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    .line 41
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 69
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 238
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    .line 59
    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_HIGH:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_LOW:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_IDLE:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_NONE:I

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method private isFPSValid(I)Z
    .registers 3
    .param p1, "fps"    # I

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_8

    .line 160
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 158
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 154
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static onFullScreenStatusChanged(Z)V
    .registers 3
    .param p0, "isFullscreen"    # Z

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_1d

    .line 242
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_14

    .line 243
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 246
    :cond_14
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_1d

    .line 247
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0, p0}, Landroid/os/CustomFrequencyManager;->onTopAppChanged(Z)V

    .line 250
    :cond_1d
    return-void
.end method


# virtual methods
.method createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 176
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-eqz v5, :cond_6

    .line 196
    :cond_5
    :goto_5
    return-object v2

    .line 180
    :cond_6
    const-string v0, "/sys/class/lcd/panel/fps_change"

    .line 181
    .local v0, "QUALCOMM_FPS_PATH":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "qualcomFPSFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 183
    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 184
    .local v2, "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_5

    .line 188
    .end local v2    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    :cond_2c
    const-string v1, "/sys/class/graphics/fb0/lcdfreq/level"

    .line 189
    .local v1, "SLSI_FPS_PATH":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "slsiFPSFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 192
    .restart local v2    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onBootComplete()V
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 166
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_f

    .line 167
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->initialize()V

    .line 169
    :cond_f
    return-void
.end method

.method public onFgAppChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 232
    :cond_8
    :goto_8
    return-void

    .line 206
    :cond_9
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 207
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    const-string v2, "com.google.android.youtube"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "com.android.chrome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 209
    :cond_1f
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 211
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 221
    :goto_25
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    if-eq v2, v3, :cond_4b

    .line 222
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_34

    .line 223
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 225
    :cond_34
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    goto :goto_8

    .line 212
    :cond_39
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 213
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 214
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    goto :goto_25

    .line 216
    :cond_44
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 217
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    goto :goto_25

    .line 226
    :cond_4b
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    if-eq v2, v3, :cond_8

    .line 227
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_5a

    .line 228
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 230
    :cond_5a
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    goto :goto_8
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 256
    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    .line 257
    .local v0, "SSRM_STATUS_NOTIFY":Ljava/lang/String;
    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    .line 258
    .local v1, "SSRM_STATUS_NOTIFY_KNOX":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 261
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_1d

    .line 262
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    .line 289
    :cond_1d
    :goto_1d
    return-void

    .line 264
    :cond_1e
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 265
    const-string v6, "1"

    const-string/jumbo v7, "sys.multiwindow.running"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 266
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_1d

    .line 267
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_1d

    .line 269
    :cond_3f
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 270
    :cond_4f
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "statusName":Ljava/lang/String;
    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 272
    .local v5, "statusValue":Z
    const-string v7, "PID"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, "pid":I
    if-lez v3, :cond_1d

    .line 277
    const-string v7, "Camera_preview"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "MoviePlayer_play"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "Navigation_show"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "ChatOnV_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "GroupPlay_fpsChange"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "Phone_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 282
    :cond_93
    if-eqz v5, :cond_a2

    .end local v3    # "pid":I
    :goto_95
    sput v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 283
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_1d

    .line 284
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_1d

    .restart local v3    # "pid":I
    :cond_a2
    move v3, v6

    .line 282
    goto :goto_95
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 296
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 297
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    if-eq v0, v1, :cond_5f

    .line 299
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->onFullScreenStatusChanged(Z)V

    .line 300
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_5b

    .line 301
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 303
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 311
    :cond_5f
    :goto_5f
    return-void

    .line 305
    :cond_60
    const-string v0, "BrowserLowFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 306
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 307
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_5f

    .line 308
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_5f
.end method
