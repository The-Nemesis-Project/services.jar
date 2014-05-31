.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ASPHALT_PKG:Ljava/lang/String;

.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_BOOST_MS:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_IO_IS_BUSY:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_BOOST_MS:Ljava/lang/String;

.field final PATH_ENFORCED_MODE:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_IO_IS_BUSY:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

.field final PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field final PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SYNC_THRESHOLD:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TEMPLERUN2_PKG:Ljava/lang/String;

.field mDisableModeChange:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsKNOXBrowserForeground:Z

.field mIsLowPowerAppInForeground:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x3b

    const/16 v3, 0x23

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 41
    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_590

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    .line 46
    const/16 v1, 0x38

    new-array v1, v1, [I

    fill-array-data v1, :array_5d4

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    .line 52
    const/16 v1, 0x3f

    new-array v1, v1, [I

    fill-array-data v1, :array_648

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 58
    const/16 v1, 0x38

    new-array v1, v1, [I

    fill-array-data v1, :array_6ca

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    .line 64
    new-array v1, v4, [I

    fill-array-data v1, :array_73e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 70
    new-array v1, v4, [I

    fill-array-data v1, :array_7b8

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 76
    const/16 v1, 0x36

    new-array v1, v1, [I

    fill-array-data v1, :array_832

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    .line 82
    const/16 v1, 0x40

    new-array v1, v1, [I

    fill-array-data v1, :array_8a2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 88
    const/16 v1, 0x39

    new-array v1, v1, [I

    fill-array-data v1, :array_926

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    .line 94
    const/16 v1, 0x2f

    new-array v1, v1, [I

    fill-array-data v1, :array_99c

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    .line 99
    const/16 v1, 0x29

    new-array v1, v1, [I

    fill-array-data v1, :array_9fe

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    .line 104
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_a54

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 110
    const/16 v1, 0x3d

    new-array v1, v1, [I

    fill-array-data v1, :array_ad0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 116
    new-array v1, v4, [I

    fill-array-data v1, :array_b4e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 122
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_bc8

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 128
    const/16 v1, 0x36

    new-array v1, v1, [I

    fill-array-data v1, :array_c44

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    .line 162
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    .line 180
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->MSG_KNOWN_GAME_FOREGROUND:I

    .line 182
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    .line 305
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_cb4

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TEMPLERUN2_PKG:Ljava/lang/String;

    .line 309
    new-array v1, v3, [I

    fill-array-data v1, :array_ce2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->ASPHALT_PKG:Ljava/lang/String;

    .line 364
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 375
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 185
    new-array v1, v6, [I

    fill-array-data v1, :array_d2c

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 188
    new-array v1, v3, [I

    fill-array-data v1, :array_d58

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 192
    new-array v1, v3, [I

    fill-array-data v1, :array_da2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 196
    new-array v1, v6, [I

    fill-array-data v1, :array_dec

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 199
    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_e18

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 203
    const/16 v1, 0x1c

    new-array v1, v1, [I

    fill-array-data v1, :array_e52

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 207
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_e8e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 210
    new-array v1, v5, [I

    fill-array-data v1, :array_eb2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 213
    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_edc

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 217
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_f0e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 220
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_f2e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 223
    new-array v1, v5, [I

    fill-array-data v1, :array_f4a

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 226
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_f74

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->addPackage(Ljava/lang/String;)V

    .line 231
    :try_start_1b1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_23d} :catch_34e
    .catchall {:try_start_1b1 .. :try_end_23d} :catchall_48a

    .line 265
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_33e
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 280
    new-instance v1, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;)V

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    .line 297
    return-void

    .line 247
    :catch_34e
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34f
    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 249
    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 250
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 251
    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 252
    const-string v1, "85 1400000:90 1700000:95"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 253
    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 254
    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 256
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 257
    const-string v1, "20"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    .line 259
    const-string v1, "340"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 260
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 261
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 262
    const-string v1, "60"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 263
    const-string v1, "1"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;
    :try_end_387
    .catchall {:try_start_34f .. :try_end_387} :catchall_48a

    .line 265
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_33e

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_48a
    move-exception v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BOOST_MS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    throw v1

    .line 41
    :array_590
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
        0x29
        0x3e
        0x42
        0x43
        0x4d
        0x4e
        0x33
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
    .end array-data

    .line 46
    :array_5d4
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x1b
        0x8
        0x1d
        0x1f
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
        0x9
    .end array-data

    .line 52
    :array_648
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1b
        0x18
        0x15
        0xc
        0x1f
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1e
        0x1f
        0x16
        0x1b
        0x3
    .end array-data

    .line 58
    :array_6ca
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data

    .line 64
    :array_73e
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1d
        0x15
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 70
    :array_7b8
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0x13
        0x14
        0x25
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x1f
        0x25
        0xe
        0x13
        0x17
        0x1f
    .end array-data

    .line 76
    :array_832
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x13
        0x17
        0x1f
        0x8
        0x25
        0x8
        0x1b
        0xe
        0x1f
    .end array-data

    .line 82
    :array_8a2
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x13
        0x14
        0x1d
        0x25
        0x1e
        0x15
        0xd
        0x14
        0x25
        0x1c
        0x1b
        0x19
        0xe
        0x15
        0x8
    .end array-data

    .line 88
    :array_926
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1f
        0x14
        0x1c
        0x15
        0x8
        0x19
        0x1f
        0x1e
        0x25
        0x17
        0x15
        0x1e
        0x1f
    .end array-data

    .line 94
    :array_99c
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x17
        0x15
        0x1e
        0xf
        0x16
        0x1f
        0x55
        0x19
        0xa
        0xf
        0x25
        0x18
        0x15
        0x15
        0x9
        0xe
        0x55
        0xa
        0x1b
        0x8
        0x1b
        0x17
        0x1f
        0xe
        0x1f
        0x8
        0x9
        0x55
        0x9
        0x3
        0x14
        0x19
        0x25
        0xe
        0x12
        0x8
        0x1f
        0x9
        0x12
        0x15
        0x16
        0x1e
    .end array-data

    .line 99
    :array_9fe
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x17
        0x15
        0x1e
        0xf
        0x16
        0x1f
        0x55
        0x19
        0xa
        0xf
        0x25
        0x18
        0x15
        0x15
        0x9
        0xe
        0x55
        0xa
        0x1b
        0x8
        0x1b
        0x17
        0x1f
        0xe
        0x1f
        0x8
        0x9
        0x55
        0x18
        0x15
        0x15
        0x9
        0xe
        0x25
        0x17
        0x9
    .end array-data

    .line 104
    :array_a54
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0xf
        0x16
        0xe
        0x13
        0x25
        0x1f
        0x14
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 110
    :array_ad0
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x13
        0x14
        0x1d
        0x16
        0x1f
        0x25
        0x1f
        0x14
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 116
    :array_b4e
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0xf
        0x16
        0xe
        0x13
        0x25
        0x1f
        0x2
        0x13
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 122
    :array_bc8
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x13
        0x14
        0x1d
        0x16
        0x1f
        0x25
        0x1f
        0x2
        0x13
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 128
    :array_c44
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x13
        0x15
        0x25
        0x13
        0x9
        0x25
        0x18
        0xf
        0x9
        0x3
    .end array-data

    .line 305
    :array_cb4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    .line 309
    :array_ce2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3e
        0x37
        0x32
        0x37
    .end array-data

    .line 185
    :array_d2c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    .line 188
    :array_d58
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    .line 192
    :array_da2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    .line 196
    :array_dec
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    .line 199
    :array_e18
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    .line 203
    :array_e52
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x25
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 207
    :array_e8e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data

    .line 210
    :array_eb2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 213
    :array_edc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 217
    :array_f0e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x1b
        0x11
        0x1b
        0x15
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 220
    :array_f2e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x12
        0x1b
        0xe
        0x9
        0x1b
        0xa
        0xa
    .end array-data

    .line 223
    :array_f4a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data

    .line 226
    :array_f74
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 361
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 362
    return-void
.end method

.method public onFgAppChanged()V
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_9

    .line 356
    :cond_8
    :goto_8
    return-void

    .line 321
    :cond_9
    sget-object v12, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v9

    .line 322
    .local v9, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    .line 323
    .local v1, "isHeavyAppInForeground":Z
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 324
    .local v0, "isBrowserForeground":Z
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v6

    .line 325
    .local v6, "isPreloadAppForeground":Z
    const/4 v2, 0x0

    .line 326
    .local v2, "isHighCpuLoadGame":Z
    invoke-static {v8}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v3

    .line 327
    .local v3, "isHotGame":Z
    const/4 v4, 0x0

    .line 328
    .local v4, "isKNOXBrowserForeground":Z
    invoke-static {v8}, Lcom/android/server/ssrm/SortingMachine;->isSnsApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2b

    if-nez v6, :cond_2b

    if-eqz v3, :cond_5f

    :cond_2b
    move v5, v11

    .line 331
    .local v5, "isLowPowerAppInForeground":Z
    :goto_2c
    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v12, :cond_61

    .line 332
    if-nez v3, :cond_37

    .line 333
    iput-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateModeChangeParameters()V

    .line 343
    :cond_37
    :goto_37
    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-ne v10, v0, :cond_4f

    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-ne v10, v2, :cond_4f

    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-ne v10, v1, :cond_4f

    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-ne v10, v6, :cond_4f

    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-ne v10, v4, :cond_4f

    iget-boolean v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    if-eq v10, v5, :cond_8

    .line 348
    :cond_4f
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 349
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 350
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 351
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 352
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    .line 353
    iput-boolean v5, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    goto :goto_8

    .end local v5    # "isLowPowerAppInForeground":Z
    :cond_5f
    move v5, v10

    .line 328
    goto :goto_2c

    .line 336
    .restart local v5    # "isLowPowerAppInForeground":Z
    :cond_61
    if-eqz v3, :cond_37

    .line 337
    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 338
    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 339
    .local v7, "msg":Landroid/os/Message;
    iput v11, v7, Landroid/os/Message;->what:I

    .line 340
    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2710

    invoke-virtual {v10, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37
.end method

.method public onFgAppInPackageList(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 303
    return-void
.end method

.method public onScreenOff()V
    .registers 3

    .prologue
    .line 379
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 380
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_e

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 384
    :cond_e
    return-void
.end method

.method public onScreenOn()V
    .registers 2

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_a

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 390
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 392
    :cond_a
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 369
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 373
    :cond_25
    return-void
.end method

.method public updateModeChangeParameters()V
    .registers 3

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v0, :cond_28

    .line 524
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    const-string v1, "Mode change is disabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_27
    return-void

    .line 530
    :cond_28
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    const-string v1, "Mode change is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public updateParameters()V
    .registers 3

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateSyncThresholdParametersForAll()V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForDefault()V

    .line 399
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    if-eqz v0, :cond_12

    .line 400
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_11
    return-void

    .line 402
    :cond_12
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public updateParametersForDefault()V
    .registers 3

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_45

    .line 471
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_44
    return-void

    .line 482
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_8a

    .line 483
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 494
    :cond_8a
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_d0

    .line 495
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 508
    :cond_d0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44
.end method

.method public updateParametersForTablet()V
    .registers 3

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_48

    .line 426
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_b
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_50

    .line 432
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_47
    return-void

    .line 428
    :cond_48
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 440
    :cond_50
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-eqz v0, :cond_71

    .line 441
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "80000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "65 1400000:70 1700000:75"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "40"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 445
    :cond_71
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_7d

    .line 446
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 447
    :cond_7d
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_ba

    .line 448
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 458
    :cond_ba
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47
.end method

.method public updateSyncThresholdParametersForAll()V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 408
    .local v0, "value":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-eqz v1, :cond_e

    .line 409
    const-string v0, "1728000"

    .line 421
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void

    .line 410
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v1, :cond_19

    .line 411
    :cond_16
    const-string v0, "0"

    goto :goto_8

    .line 412
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-eqz v1, :cond_20

    .line 413
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    goto :goto_8

    .line 414
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v1, :cond_27

    .line 415
    const-string v0, "1190400"

    goto :goto_8

    .line 416
    :cond_27
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v1, :cond_32

    .line 417
    :cond_2f
    const-string v0, "652800"

    goto :goto_8

    .line 418
    :cond_32
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-nez v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    if-eqz v1, :cond_8

    .line 419
    :cond_3a
    const-string v0, "960000"

    goto :goto_8
.end method
