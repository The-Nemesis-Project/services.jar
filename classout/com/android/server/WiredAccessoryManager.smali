.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_LOG:Z = true

.field private static final BIT_EXT_MIC:I = 0x20

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final NAME_EXT_MIC:Ljava/lang/String; = "hotshoe_mic"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private IntentToPopupUI:Z

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiSettingValue:I

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v3, p0, Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 109
    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I

    .line 111
    iput-object v4, p0, Lcom/android/server/WiredAccessoryManager;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 247
    new-instance v1, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 114
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 115
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 117
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 123
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 124
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->access$002(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Landroid/content/Context;)Landroid/content/Context;

    .line 126
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->bootCompleted()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/WiredAccessoryManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method private bootCompleted()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    .line 136
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_26

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_14

    .line 139
    or-int/lit8 v0, v0, 0x4

    .line 141
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 142
    or-int/lit8 v0, v0, 0x10

    .line 144
    :cond_1f
    const-wide/16 v1, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 148
    .end local v0    # "switchValues":I
    :cond_26
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 149
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 11
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 275
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_34

    .line 279
    and-int v2, p2, p1

    if-eqz v2, :cond_35

    .line 280
    const/4 v1, 0x1

    .line 285
    .local v1, "state":I
    :goto_c
    if-ne p1, v5, :cond_37

    .line 286
    const/4 v0, 0x4

    .line 302
    .local v0, "device":I
    :goto_f
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_71

    const-string v2, " connected"

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 324
    .end local v0    # "device":I
    .end local v1    # "state":I
    :cond_34
    :goto_34
    return-void

    .line 282
    :cond_35
    const/4 v1, 0x0

    .restart local v1    # "state":I
    goto :goto_c

    .line 287
    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3d

    .line 288
    const/16 v0, 0x8

    .restart local v0    # "device":I
    goto :goto_f

    .line 289
    .end local v0    # "device":I
    :cond_3d
    const/4 v2, 0x4

    if-ne p1, v2, :cond_43

    .line 290
    const/16 v0, 0x800

    .restart local v0    # "device":I
    goto :goto_f

    .line 291
    .end local v0    # "device":I
    :cond_43
    const/16 v2, 0x8

    if-ne p1, v2, :cond_4a

    .line 292
    const/16 v0, 0x1000

    .restart local v0    # "device":I
    goto :goto_f

    .line 293
    .end local v0    # "device":I
    :cond_4a
    const/16 v2, 0x10

    if-ne p1, v2, :cond_51

    .line 294
    const/16 v0, 0x400

    .restart local v0    # "device":I
    goto :goto_f

    .line 295
    .end local v0    # "device":I
    :cond_51
    const/16 v2, 0x20

    if-ne p1, v2, :cond_58

    .line 296
    const/high16 v0, -0x7fff0000

    .restart local v0    # "device":I
    goto :goto_f

    .line 298
    .end local v0    # "device":I
    :cond_58
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 302
    .restart local v0    # "device":I
    :cond_71
    const-string v2, " disconnected"

    goto :goto_24
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    const/16 v0, 0x3f

    .line 264
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    .local v1, "curHeadset":I
    :goto_6
    if-eqz v0, :cond_15

    .line 265
    and-int v2, v1, v0

    if-eqz v2, :cond_12

    .line 266
    :try_start_c
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 267
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 264
    :cond_12
    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 270
    :cond_15
    monitor-exit v3

    .line 271
    return-void

    .line 270
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v2
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 330
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    .line 334
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    .line 197
    and-int/lit8 v3, p2, 0x3f

    .line 198
    .local v3, "headsetState":I
    and-int/lit8 v6, v3, 0x4

    .line 199
    .local v6, "usb_headset_anlg":I
    and-int/lit8 v7, v3, 0x8

    .line 200
    .local v7, "usb_headset_dgtl":I
    and-int/lit8 v2, v3, 0x10

    .line 201
    .local v2, "hdmi_headset":I
    and-int/lit8 v1, v3, 0x3

    .line 203
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    .line 204
    .local v0, "h2wStateChange":Z
    const/4 v5, 0x1

    .line 205
    .local v5, "usbStateChange":Z
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " newState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " headsetState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " prev headsetState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v8, v3, :cond_50

    .line 211
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v9, "No state change."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_4f
    return-void

    .line 218
    :cond_50
    const/4 v8, 0x3

    if-ne v1, v8, :cond_5b

    .line 219
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v9, "Invalid combination, unsetting h2w flag"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 224
    :cond_5b
    const/4 v8, 0x4

    if-ne v6, v8, :cond_6a

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6a

    .line 225
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v9, "Invalid combination, unsetting usb flag"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v5, 0x0

    .line 228
    :cond_6a
    if-nez v0, :cond_76

    if-nez v5, :cond_76

    .line 229
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v9, "invalid transition, returning ..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 233
    :cond_76
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 235
    iget-boolean v8, p0, Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z

    if-eqz v8, :cond_90

    const/16 v8, 0x10

    if-ne v2, v8, :cond_90

    .line 236
    sget-object v8, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v9, "HDMI connection Intent is broadcasted to POPUP UI"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z

    .line 244
    :goto_8d
    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    goto :goto_4f

    .line 239
    :cond_90
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9, v3, v10, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 241
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8d
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 153
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_37
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 160
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x14

    sparse-switch v1, :sswitch_data_5e

    .line 178
    const/4 v0, 0x0

    .line 182
    .local v0, "headset":I
    :goto_47
    const-string v1, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x4

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 183
    monitor-exit v2

    .line 184
    return-void

    .line 162
    .end local v0    # "headset":I
    :sswitch_53
    const/4 v0, 0x0

    .line 163
    .restart local v0    # "headset":I
    goto :goto_47

    .line 166
    .end local v0    # "headset":I
    :sswitch_55
    const/4 v0, 0x2

    .line 167
    .restart local v0    # "headset":I
    goto :goto_47

    .line 170
    .end local v0    # "headset":I
    :sswitch_57
    const/4 v0, 0x1

    .line 171
    .restart local v0    # "headset":I
    goto :goto_47

    .line 174
    .end local v0    # "headset":I
    :sswitch_59
    const/4 v0, 0x1

    .line 175
    .restart local v0    # "headset":I
    goto :goto_47

    .line 183
    .end local v0    # "headset":I
    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5b

    throw v1

    .line 160
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_53
        0x4 -> :sswitch_55
        0x10 -> :sswitch_59
        0x14 -> :sswitch_57
    .end sparse-switch
.end method
