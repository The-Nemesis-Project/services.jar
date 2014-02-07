.class public Lcom/immersion/android/haptics/HapticFeedbackManager;
.super Ljava/lang/Object;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_THEME_CONTENT_URI:Ljava/lang/String; = "content://com.immersion.android.haptics.defaulttheme"

.field public static final DEVICE_HANDLE_ARRAY_SIZE:I = 0x2

.field private static final MAX_IMMVIBE_INITIALIZATION_ATTEMPTS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field public static final UI_DEVICE_HANDLE_INDEX:I = 0x0

.field public static final UI_NOTIFICATION_DEVICE_HANDLE_INDEX:I = 0x1


# instance fields
.field private mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

.field private mBootedAndInitialized:Z

.field private mCalledFromProxy:Z

.field private mCanUseTouchSenseAPI:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserID:I

.field private mDevices:[Lcom/immersion/WrappableDevice;

.field private mImmVibeInitAttempts:I

.field private mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

.field mKeyboardTapVibePattern:[J

.field mLongPressVibePattern:[J

.field private mLooper:Landroid/os/Looper;

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

.field private mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

.field private mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "calledFromProxy"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 58
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/immersion/WrappableDevice;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    .line 61
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 62
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    .line 63
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    .line 64
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    .line 65
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 66
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    .line 67
    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    .line 69
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    .line 93
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    .line 94
    iput-boolean p3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    .line 95
    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    .line 96
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_initialized"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 98
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 99
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v0, :cond_3f

    .line 100
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    .line 104
    :cond_3f
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 107
    :cond_4b
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->registerSettingsContentObservers()V

    .line 108
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->setupPackageBroadcastReceiver()V

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/immersion/android/haptics/HapticFeedbackManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/immersion/android/haptics/HapticFeedbackManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;
    .param p1, "x1"    # Landroid/os/Vibrator;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    return-void
.end method

.method static synthetic access$700(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackTheme;
    .registers 2
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 781
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 782
    const/4 v2, 0x0

    .line 788
    :cond_7
    return-object v2

    .line 784
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 785
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 786
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private immVibeInitialize()V
    .registers 7

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 114
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v2, :cond_16

    .line 115
    const-string v2, "HapticFeedbackManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 116
    const-string v2, "HapticFeedbackManager"

    const-string v3, "ImmVibeInitialize called but system has not finished booting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_15
    :goto_15
    return-void

    .line 121
    :cond_16
    iget v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    .line 125
    :try_start_1c
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-eqz v2, :cond_136

    .line 127
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_83

    .line 130
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "iDeviceHandle":I
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    .line 136
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    .line 139
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    .line 145
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    .line 146
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 147
    const-string v2, "HapticFeedbackManager"

    const-string v3, "Using existing device handle (called from proxy)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 182
    .end local v1    # "iDeviceHandle":I
    :cond_83
    :goto_83
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 183
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_b2} :catch_1c1
    .catchall {:try_start_1c .. :try_end_b2} :catchall_2b6

    .line 197
    :cond_b2
    :try_start_b2
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_15

    .line 198
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_c6

    .line 200
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_c6
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070027

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 205
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070028

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 207
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 209
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002a

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 211
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002b

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_111} :catch_113

    goto/16 :goto_15

    .line 214
    :catch_113
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_131
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_136
    :try_start_136
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    .line 155
    const/16 v2, 0xbb8

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getCapabilityInt32(I)I

    move-result v3

    if-eq v2, v3, :cond_295

    .line 158
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->close()V

    .line 159
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    .line 161
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    .line 163
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 164
    const-string v2, "HapticFeedbackManager"

    const-string v3, "Opening composite devices for keyboard, UI and notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_188
    :goto_188
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 175
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_1bf} :catch_1c1
    .catchall {:try_start_136 .. :try_end_1bf} :catchall_2b6

    goto/16 :goto_83

    .line 186
    :catch_1c1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    :try_start_1c3
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 190
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_214

    .line 191
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_214
    .catchall {:try_start_1c3 .. :try_end_214} :catchall_2b6

    .line 197
    :cond_214
    :try_start_214
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_15

    .line 198
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_228

    .line 200
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_228
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070027

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 205
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070028

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 207
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 209
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002a

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 211
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002b

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_273} :catch_275

    goto/16 :goto_15

    .line 214
    :catch_275
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_131

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_295
    :try_start_295
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    .line 170
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 171
    const-string v2, "HapticFeedbackManager"

    const-string v3, "3000 Edition, Opening single device for keyboard and UI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b4
    .catch Ljava/lang/Throwable; {:try_start_295 .. :try_end_2b4} :catch_1c1
    .catchall {:try_start_295 .. :try_end_2b4} :catchall_2b6

    goto/16 :goto_188

    .line 196
    :catchall_2b6
    move-exception v2

    .line 197
    :try_start_2b7
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v3, :cond_316

    .line 198
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_2cb

    .line 200
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_2cb
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070027

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 205
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070028

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 207
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070029

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 209
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002a

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 211
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002b

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_316} :catch_317

    .line 196
    :cond_316
    :goto_316
    throw v2

    .line 214
    :catch_317
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_316
.end method


# virtual methods
.method public canPlayHDEffects()Z
    .registers 3

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_d

    .line 223
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 225
    :cond_d
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method public cancel()V
    .registers 6

    .prologue
    .line 234
    :try_start_0
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v2, :cond_2b

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 237
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    .line 238
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    .line 236
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 241
    :cond_1a
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 242
    const-string v2, "HapticFeedbackManager"

    const-string v3, "canceled all playing effects for all devices :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "i":I
    :cond_2a
    :goto_2a
    return-void

    .line 247
    :cond_2b
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_3b

    .line 248
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 250
    :cond_3b
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_2a

    .line 252
    :catch_41
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in cancel()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public cancel(I)V
    .registers 6
    .param p1, "deviceHandle"    # I

    .prologue
    .line 263
    :try_start_0
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_5c

    .line 265
    if-lez p1, :cond_32

    const/4 v1, 0x2

    if-ge p1, v1, :cond_32

    .line 266
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    .line 267
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 268
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled all playing effects for device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_31
    :goto_31
    return-void

    .line 272
    :cond_32
    const-string v1, "HapticFeedbackManager"

    const-string v2, "deviceHandle is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_31

    .line 282
    :catch_3a
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in cancel()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_6c

    .line 278
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 280
    :cond_6c
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_71} :catch_3a

    goto :goto_31
.end method

.method protected deviceForEffectId(I)I
    .registers 3
    .param p1, "effectId"    # I

    .prologue
    .line 629
    const/16 v0, 0x63ce

    if-eq p1, v0, :cond_c

    const/16 v0, 0x63d8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x4f4c

    if-ne p1, v0, :cond_e

    .line 632
    :cond_c
    const/4 v0, 0x1

    .line 634
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 616
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 620
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_19

    .line 621
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 622
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 624
    :cond_19
    return-void
.end method

.method public loadActiveTheme()V
    .registers 5

    .prologue
    .line 486
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "strTheme":Ljava/lang/String;
    if-nez v0, :cond_39

    .line 492
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 493
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> strTheme is null, reverting to default theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_37
    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    .line 500
    :cond_39
    invoke-virtual {p0, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public declared-synchronized loadActiveTheme(Ljava/lang/String;)V
    .registers 6
    .param p1, "strTheme"    # Ljava/lang/String;

    .prologue
    .line 505
    monitor-enter p0

    if-nez p1, :cond_5

    .line 506
    :try_start_3
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    .line 508
    :cond_5
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_41

    .line 511
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 512
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> mActiveTheme is null. First time being loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_32
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 517
    :cond_41
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 520
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 521
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> active theme has changed. Loading new theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_74
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 527
    :cond_83
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->ping()V

    .line 529
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v1, :cond_d7

    .line 533
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 534
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> problem with currently active theme. Switching back to default theme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_b7
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    .line 537
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 538
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v1, :cond_d7

    .line 541
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    :cond_d7
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 548
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v3, v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_108} :catch_10a
    .catchall {:try_start_3 .. :try_end_108} :catchall_12c

    .line 553
    :cond_108
    :goto_108
    monitor-exit p0

    return-void

    .line 550
    :catch_10a
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10b
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in loadActiveTheme()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catchall {:try_start_10b .. :try_end_12b} :catchall_12c

    goto :goto_108

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_12c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifySystemBoot()V
    .registers 5

    .prologue
    .line 602
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 604
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 605
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_11

    .line 606
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 611
    :cond_11
    :goto_11
    return-void

    .line 608
    :catch_12
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in notifySystemBoot()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public performHapticFeedback(IZ)Z
    .registers 5
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 289
    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(null, effectId, always);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IZ[JLcom/immersion/IVTBuffer;II)Z
    .registers 15
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "vibPattern"    # [J
    .param p4, "vibEffect"    # Lcom/immersion/IVTBuffer;
    .param p5, "repeat"    # I
    .param p6, "deviceHandle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_17

    .line 297
    const-string v2, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 298
    const-string v2, "HapticFeedbackManager"

    const-string v4, "PerformHapticFeedback but system has not finished booting"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_16
    :goto_16
    return v3

    .line 303
    :cond_17
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_24

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_24

    .line 304
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 315
    :cond_24
    :try_start_24
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_51

    .line 316
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    iget v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4f

    move v1, v2

    .line 325
    .local v1, "hapticsDisabled":Z
    :goto_3a
    if-nez p2, :cond_3e

    if-nez v1, :cond_16

    .line 330
    :cond_3e
    if-eqz p4, :cond_64

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_64

    .line 333
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p6

    const/4 v5, 0x0

    int-to-byte v6, p5

    invoke-virtual {v4, p4, v5, v6}, Lcom/immersion/WrappableDevice;->playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;

    move v3, v2

    .line 335
    goto :goto_16

    .end local v1    # "hapticsDisabled":Z
    :cond_4f
    move v1, v3

    .line 316
    goto :goto_3a

    .line 321
    :cond_51
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_62

    move v1, v2

    .restart local v1    # "hapticsDisabled":Z
    :goto_61
    goto :goto_3a

    .end local v1    # "hapticsDisabled":Z
    :cond_62
    move v1, v3

    goto :goto_61

    .line 337
    .restart local v1    # "hapticsDisabled":Z
    :cond_64
    if-eqz p3, :cond_a3

    array-length v4, p3

    if-lez v4, :cond_a3

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_a3

    .line 339
    array-length v4, p3

    if-ne v4, v2, :cond_7a

    .line 341
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, 0x0

    aget-wide v5, p3, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_78
    move v3, v2

    .line 346
    goto :goto_16

    .line 344
    :cond_7a
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, p3, p5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_7f} :catch_80

    goto :goto_78

    .line 350
    .end local v1    # "hapticsDisabled":Z
    :catch_80
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hapticsDisabled":Z
    :cond_a3
    const/4 v2, 0x0

    :try_start_a4
    invoke-virtual {p0, v2, p1, p2, p6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_80

    move-result v3

    goto/16 :goto_16
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 358
    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(win, effectId, always, deviceForEffectId(effectId));"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->deviceForEffectId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z
    .param p4, "deviceHandle"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 364
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] Enter performHapticFeedback(WindowState win, int effectId, boolean always,int deviceHandle)"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] effectId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "deviceHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_4a

    .line 368
    const-string v4, "HapticFeedbackManager"

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 369
    const-string v4, "HapticFeedbackManager"

    const-string v5, "PerformHapticFeedback called but system has not finished booting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_49
    :goto_49
    return v6

    .line 373
    :cond_4a
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 1"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_5e

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v7, 0xf

    if-ge v4, v7, :cond_5e

    .line 376
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 378
    :cond_5e
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 2"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_65
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_d5

    .line 383
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    iget v9, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_d3

    move v1, v5

    .line 391
    .local v1, "hapticsDisabled":Z
    :goto_7b
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 3"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hapticsDisabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-nez p3, :cond_e8

    if-eqz v1, :cond_e8

    .line 395
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 4 : return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_af} :catch_b0

    goto :goto_49

    .line 479
    .end local v1    # "hapticsDisabled":Z
    :catch_b0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy is \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d3
    move v1, v6

    .line 383
    goto :goto_7b

    .line 388
    :cond_d5
    :try_start_d5
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_e6

    move v1, v5

    .restart local v1    # "hapticsDisabled":Z
    :goto_e5
    goto :goto_7b

    .end local v1    # "hapticsDisabled":Z
    :cond_e6
    move v1, v6

    goto :goto_e5

    .line 399
    .restart local v1    # "hapticsDisabled":Z
    :cond_e8
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_1b7

    .line 401
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 5"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 403
    sget-object v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 404
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v2, :cond_13f

    .line 405
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_12e
    :goto_12e
    const/16 v4, 0x5460

    if-ne p2, v4, :cond_168

    .line 414
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 6"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->cancel()V

    move v6, v5

    .line 416
    goto/16 :goto_49

    .line 407
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_13f
    const-string v7, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12e

    .line 418
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_168
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v4, :cond_185

    .line 420
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 421
    const-string v4, "HapticFeedbackManager"

    const-string v5, "mActiveTheme is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_17c
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 7"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 426
    :cond_185
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p4

    if-nez v4, :cond_1a4

    .line 428
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 429
    const-string v4, "HapticFeedbackManager"

    const-string v5, "mDevices[deviceHandle] is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_19b
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 8"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 434
    :cond_1a4
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 9"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v5, v5, p4

    invoke-virtual {v4, p2, v5}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->performHapticFeedback(ILcom/immersion/Device;)Z

    move-result v6

    goto/16 :goto_49

    .line 439
    :cond_1b7
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 10"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 441
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via Google Vibrator API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1e7
    const/4 v3, 0x0

    .line 445
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_218

    goto/16 :goto_49

    .line 447
    :sswitch_1ed
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 469
    :goto_1ef
    array-length v4, v3

    if-ne v4, v5, :cond_210

    .line 471
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 476
    :goto_1fa
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 11"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 477
    goto/16 :goto_49

    .line 450
    :sswitch_204
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 451
    goto :goto_1ef

    .line 458
    :sswitch_207
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 459
    goto :goto_1ef

    .line 461
    :sswitch_20a
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 462
    goto :goto_1ef

    .line 464
    :sswitch_20d
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J

    .line 465
    goto :goto_1ef

    .line 474
    :cond_210
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_216} :catch_b0

    goto :goto_1fa

    .line 445
    nop

    :sswitch_data_218
    .sparse-switch
        0x0 -> :sswitch_1ed
        0x1 -> :sswitch_204
        0x3 -> :sswitch_207
        0x2710 -> :sswitch_20a
        0x2711 -> :sswitch_20d
        0x61a8 -> :sswitch_207
        0x6220 -> :sswitch_207
        0x622a -> :sswitch_207
        0x6234 -> :sswitch_207
        0x623e -> :sswitch_207
    .end sparse-switch
.end method

.method protected registerSettingsContentObservers()V
    .registers 7

    .prologue
    .line 584
    :try_start_0
    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    .line 585
    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    .line 587
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 588
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2e

    .line 589
    const-string v3, "haptic_feedback_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 590
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 591
    const-string v3, "haptic_feedback_initialized"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 592
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 597
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2e
    :goto_2e
    return-void

    .line 594
    :catch_2f
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method protected setupPackageBroadcastReceiver()V
    .registers 6

    .prologue
    .line 560
    :try_start_0
    new-instance v2, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-direct {v2, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    .line 562
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v1, "intf":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HAPTIC_THEME_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 573
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    .line 578
    .end local v1    # "intf":Landroid/content/IntentFilter;
    :goto_44
    return-void

    .line 575
    :catch_45
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method
