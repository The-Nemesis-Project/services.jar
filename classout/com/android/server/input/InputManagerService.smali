.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$ControlWakeKey;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FLAG_MONITOR_KEY_FILTER:I = 0x1

.field public static final FLAG_MONITOR_MOTION_FILTER:I = 0x2

.field public static final FLAG_MONITOR_NO_FILTER:I = 0x0

.field public static final FLAG_MONITOR_SOURCE_CLASS_POINTER_FILTER:I = 0x4

.field public static final FLAG_MONITOR_TOOL_TYPE_STYLUS_FILTER:I = 0x8

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final SW_BOTH_HAND:I = 0x19

.field public static final SW_BOTH_HAND_BIT:I = 0x2000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0x94

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LEFT_HAND:I = 0x17

.field public static final SW_LEFT_HAND_BIT:I = 0x800000

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_OCR_CRADLE:I = 0x11

.field public static final SW_OCR_CRADLE_BIT:I = 0x20000

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_RIGHT_HAND:I = 0x18

.field public static final SW_RIGHT_HAND_BIT:I = 0x1000000

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mIsBlockKeys:Z

.field private mIsKidsMode:Z

.field private mIsShowHoverPointer:Z

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:I

.field private mRemoteControlConnected:Z

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 129
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 134
    new-array v0, v1, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 211
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 2350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .line 332
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 333
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 337
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    return v0
.end method

.method static synthetic access$700(ILandroid/view/InputEvent;IIIII)I
    .registers 8
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 104
    invoke-static/range {p0 .. p6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1671
    monitor-enter p1

    .line 1672
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 1673
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(III)V

    .line 1674
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1676
    :cond_11
    monitor-exit p1

    .line 1677
    return-void

    .line 1676
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1698
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 1710
    :cond_b
    :goto_b
    return v1

    .line 1702
    :cond_c
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1709
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 989
    array-length v2, p0

    .line 990
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_15

    .line 991
    aget-object v1, p0, v0

    .line 992
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 993
    const/4 v3, 0x1

    .line 996
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :goto_11
    return v3

    .line 990
    .restart local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 996
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 15
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 856
    const/4 v7, 0x0

    .line 857
    .local v7, "numFullKeyboardsAdded":I
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 858
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 861
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 862
    :try_start_e
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v10, :cond_14

    .line 863
    monitor-exit v11

    .line 923
    :goto_13
    return-void

    .line 865
    :cond_14
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 867
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 868
    .local v9, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v9, :cond_2e

    .line 869
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 873
    :cond_2e
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v5, v10

    .line 874
    .local v5, "numDevices":I
    mul-int/lit8 v10, v5, 0x2

    new-array v0, v10, [I
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_89

    .line 875
    .local v0, "deviceIdAndGeneration":[I
    const/4 v1, 0x0

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .local v8, "numFullKeyboardsAdded":I
    :goto_37
    if-ge v1, v5, :cond_77

    .line 876
    :try_start_39
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v10, v1

    .line 877
    .local v2, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v10, v1, 0x2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v0, v10

    .line 878
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getGeneration()I

    move-result v12

    aput v12, v0, v10

    .line 880
    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_75

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_75

    .line 881
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_70

    .line 883
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_67
    .catchall {:try_start_39 .. :try_end_67} :catchall_d9

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :try_start_69
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_89

    .line 875
    :goto_6c
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    goto :goto_37

    .line 885
    :cond_70
    :try_start_70
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_6c

    .line 889
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_77
    monitor-exit v11
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_d9

    .line 892
    const/4 v1, 0x0

    :goto_79
    if-ge v1, v9, :cond_8c

    .line 893
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 889
    .end local v0    # "deviceIdAndGeneration":[I
    .end local v1    # "i":I
    .end local v5    # "numDevices":I
    .end local v8    # "numFullKeyboardsAdded":I
    .end local v9    # "numListeners":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :catchall_89
    move-exception v10

    :goto_8a
    :try_start_8a
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v10

    .line 896
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v0    # "deviceIdAndGeneration":[I
    .restart local v1    # "i":I
    .restart local v5    # "numDevices":I
    .restart local v8    # "numFullKeyboardsAdded":I
    .restart local v9    # "numListeners":I
    :cond_8c
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 899
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_c6

    .line 900
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 901
    .local v6, "numFullKeyboards":I
    const/4 v3, 0x0

    .line 902
    .local v3, "missingLayoutForExternalKeyboard":Z
    const/4 v4, 0x0

    .line 903
    .local v4, "missingLayoutForExternalKeyboardAdded":Z
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v11

    .line 904
    const/4 v1, 0x0

    :goto_a1
    if-ge v1, v6, :cond_be

    .line 905
    :try_start_a3
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 906
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_bb

    .line 907
    const/4 v3, 0x1

    .line 908
    if-ge v1, v8, :cond_bb

    .line 909
    const/4 v4, 0x1

    .line 904
    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 913
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_be
    monitor-exit v11
    :try_end_bf
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_ce

    .line 914
    if-eqz v3, :cond_d1

    .line 915
    if-eqz v4, :cond_c6

    .line 916
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification()V

    .line 922
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :cond_c6
    :goto_c6
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v7, v8

    .line 923
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto/16 :goto_13

    .line 913
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v3    # "missingLayoutForExternalKeyboard":Z
    .restart local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .restart local v6    # "numFullKeyboards":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :catchall_ce
    move-exception v10

    :try_start_cf
    monitor-exit v11
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v10

    .line 918
    :cond_d1
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v10, :cond_c6

    .line 919
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_c6

    .line 889
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :catchall_d9
    move-exception v10

    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_8a
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private getAirViewMasterSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1608
    move v1, p1

    .line 1610
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_view_master_onoff"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    move-result v4

    if-ne v4, v2, :cond_14

    move v1, v2

    .line 1616
    :goto_13
    return v1

    :cond_14
    move v1, v3

    .line 1610
    goto :goto_13

    .line 1613
    :catch_16
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getAirViewMasterSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private getBlockKeysSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1582
    move v1, p1

    .line 1584
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "parental_control_block_key"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    move-result v4

    if-ne v4, v2, :cond_14

    move v1, v2

    .line 1590
    :goto_13
    return v1

    :cond_14
    move v1, v3

    .line 1584
    goto :goto_13

    .line 1587
    :catch_16
    move-exception v0

    .line 1588
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getBlockKeysSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1973
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1977
    :cond_7
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .prologue
    .line 1919
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .registers 11

    .prologue
    .line 1863
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1868
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1869
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1871
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_12
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_99
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_5f
    .catchall {:try_start_12 .. :try_end_17} :catchall_8a

    .line 1872
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_17
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1873
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1874
    const-string v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1877
    :cond_23
    :goto_23
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1878
    const-string v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_2f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_96
    .catchall {:try_start_17 .. :try_end_2f} :catchall_93

    move-result v7

    if-nez v7, :cond_45

    .line 1891
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_5c

    :cond_37
    move-object v1, v2

    .line 1894
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :cond_38
    :goto_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 1881
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_45
    const/4 v7, 0x0

    :try_start_46
    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1882
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 1883
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_96
    .catchall {:try_start_46 .. :try_end_51} :catchall_93

    goto :goto_23

    .line 1886
    .end local v4    # "name":Ljava/lang/String;
    :catch_52
    move-exception v7

    move-object v1, v2

    .line 1891
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :goto_54
    if-eqz v1, :cond_38

    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_38

    :catch_5a
    move-exception v7

    goto :goto_38

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_5c
    move-exception v7

    move-object v1, v2

    .line 1892
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_38

    .line 1888
    :catch_5f
    move-exception v3

    .line 1889
    .local v3, "e":Ljava/lang/Exception;
    :goto_60
    :try_start_60
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_8a

    .line 1891
    if-eqz v1, :cond_38

    :try_start_84
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_38

    :catch_88
    move-exception v7

    goto :goto_38

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_8a
    move-exception v7

    :goto_8b
    if-eqz v1, :cond_90

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    throw v7

    :catch_91
    move-exception v8

    goto :goto_90

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_93
    move-exception v7

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_8b

    .line 1888
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_96
    move-exception v3

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_60

    .line 1886
    :catch_99
    move-exception v7

    goto :goto_54
.end method

.method private getGloveModeSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1495
    move v1, p1

    .line 1497
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_adjust_touch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    move-result v4

    if-ne v4, v2, :cond_14

    move v1, v2

    .line 1503
    :goto_13
    return v1

    :cond_14
    move v1, v3

    .line 1497
    goto :goto_13

    .line 1499
    :catch_16
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getGloveModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private getHoverTapSlop()I
    .registers 2

    .prologue
    .line 1914
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .prologue
    .line 1909
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .prologue
    .line 1904
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .prologue
    .line 1899
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1939
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v3, :cond_7

    move-object v1, v2

    .line 1968
    :cond_6
    :goto_6
    return-object v1

    .line 1943
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_f

    move-object v1, v2

    .line 1946
    goto :goto_6

    .line 1949
    :cond_f
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1950
    .local v1, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$17;

    invoke-direct {v3, p0, v1}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1963
    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_6

    .line 1964
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1966
    goto :goto_6
.end method

.method private getKidsModeSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1594
    move v1, p1

    .line 1596
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kids_home_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    move-result v4

    if-ne v4, v2, :cond_14

    move v1, v2

    .line 1602
    :goto_13
    return v1

    :cond_14
    move v1, v3

    .line 1596
    goto :goto_13

    .line 1599
    :catch_16
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getKidsModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private getLongPressTimeout()I
    .registers 2

    .prologue
    .line 1924
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .prologue
    .line 1349
    const/4 v0, 0x0

    .line 1351
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 1355
    :goto_e
    return v0

    .line 1353
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method private getShowFingerHoveringSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1556
    move v1, p1

    .line 1558
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_pointer"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_23

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_25

    move-result v4

    if-ne v4, v2, :cond_23

    move v1, v2

    .line 1565
    :goto_22
    return v1

    :cond_23
    move v1, v3

    .line 1558
    goto :goto_22

    .line 1562
    :catch_25
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowFingerHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method private getShowHoveringSetting(Z)Z
    .registers 9
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1571
    move v1, p1

    .line 1573
    .local v1, "result":Z
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_pointer"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_16

    move-result v4

    if-ne v4, v2, :cond_14

    move v1, v2

    .line 1577
    :goto_13
    return v1

    :cond_14
    move v1, v3

    .line 1573
    goto :goto_13

    .line 1574
    :catch_16
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .prologue
    .line 1545
    move v0, p1

    .line 1547
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 1551
    :goto_e
    return v0

    .line 1549
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 1240
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_4a

    .line 1241
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "inputDeviceDescriptor":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    .line 1246
    :try_start_d
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v0

    .line 1247
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_4b

    move-result-object v4

    .line 1250
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_19
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1252
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_52

    .line 1254
    if-eqz v0, :cond_4a

    .line 1255
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v5, :cond_2d

    .line 1256
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 1257
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1259
    :cond_2d
    if-eqz v4, :cond_47

    .line 1260
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 1261
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_47

    .line 1262
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1264
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1268
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_47
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1271
    .end local v0    # "changed":Z
    .end local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_4a
    return-void

    .line 1250
    .restart local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    :catchall_4b
    move-exception v5

    :try_start_4c
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v5

    .line 1252
    :catchall_52
    move-exception v5

    monitor-exit v6
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_12

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 958
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x10406d8

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 962
    :cond_12
    return-void
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 3
    .param p1, "policyFlags"    # I

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method private static native nativeCancelVibrate(III)V
.end method

.method private static native nativeDump(I)Ljava/lang/String;
.end method

.method private static native nativeFadePointer(I)V
.end method

.method private static native nativeGetCursorPosition(I)[F
.end method

.method private static native nativeGetDoNotUseVelocity(I)Z
.end method

.method private static native nativeGetKeyCodeState(IIII)I
.end method

.method private static native nativeGetScanCodeState(IIII)I
.end method

.method private static native nativeGetSwitchState(IIII)I
.end method

.method private static native nativeGetWakeFlag(III)Z
.end method

.method private static native nativeHasKeys(III[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor(I)V
.end method

.method private static native nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeRegisterInputChannelEx(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;ZZ)V
.end method

.method private static native nativeReloadDeviceAliases(I)V
.end method

.method private static native nativeReloadKeyboardLayouts(I)V
.end method

.method private static native nativeReloadPointerIcon(III)V
.end method

.method private static native nativeSetAirViewMaster(IZ)V
.end method

.method private static native nativeSetBlockKeys(IZ)V
.end method

.method private static native nativeSetDisplayViewport(IZIIIIIIIIIIII)V
.end method

.method private static native nativeSetDoNotUseVelocity(IZ)I
.end method

.method private static native nativeSetFlipCoverTouchEnabled(IZ)V
.end method

.method private static native nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetGloveMode(IZ)V
.end method

.method private static native nativeSetInputDispatchMode(IZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(IZ)V
.end method

.method private static native nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetKidsMode(IZ)V
.end method

.method private static native nativeSetLedState(IZ)I
.end method

.method private static native nativeSetMonitorChannelFilter(ILandroid/view/InputChannel;I)V
.end method

.method private static native nativeSetPointerBounds(IFFFF)V
.end method

.method private static native nativeSetPointerSpeed(II)V
.end method

.method private static native nativeSetShowFingerHovering(IZ)V
.end method

.method private static native nativeSetShowHovering(IZ)V
.end method

.method private static native nativeSetShowTouches(IZ)V
.end method

.method private static native nativeSetStartedShutdown(IZ)V
.end method

.method private static native nativeSetSystemUiVisibility(II)V
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(II[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;)J
    .registers 5
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1723
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1802
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1727
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1728
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_16

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1730
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1734
    :cond_16
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1735
    monitor-exit v1

    .line 1736
    return-void

    .line 1735
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private notifySwitch(JII)V
    .registers 13
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 1741
    const-string v5, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifySwitch: values="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_38

    .line 1746
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_c3

    const/4 v2, 0x1

    .line 1747
    .local v2, "lidOpen":Z
    :goto_33
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1751
    .end local v2    # "lidOpen":Z
    :cond_38
    const/high16 v5, 0x20000

    and-int/2addr v5, p4

    if-eqz v5, :cond_48

    .line 1752
    const/high16 v5, 0x20000

    and-int/2addr v5, p3

    if-nez v5, :cond_c6

    const/4 v3, 0x1

    .line 1753
    .local v3, "ocrInsert":Z
    :goto_43
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyOCRDockStateChanged(JZ)V

    .line 1758
    .end local v3    # "ocrInsert":Z
    :cond_48
    const/high16 v5, 0x80000

    and-int/2addr v5, p4

    if-eqz v5, :cond_58

    .line 1759
    const/high16 v5, 0x80000

    and-int/2addr v5, p3

    if-nez v5, :cond_c9

    const/4 v4, 0x1

    .line 1760
    .local v4, "penInsert":Z
    :goto_53
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    .line 1763
    .end local v4    # "penInsert":Z
    :cond_58
    const/high16 v5, 0x200000

    and-int/2addr v5, p4

    if-eqz v5, :cond_68

    .line 1764
    const/high16 v5, 0x200000

    and-int/2addr v5, p3

    if-eqz v5, :cond_cb

    const/4 v0, 0x1

    .line 1765
    .local v0, "coverOpen":Z
    :goto_63
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCoverSwitchChanged(JZ)V

    .line 1768
    .end local v0    # "coverOpen":Z
    :cond_68
    const/high16 v5, 0x400000

    and-int/2addr v5, p4

    if-eqz v5, :cond_78

    .line 1769
    const/high16 v5, 0x400000

    and-int/2addr v5, p3

    if-eqz v5, :cond_cd

    const/4 v1, 0x1

    .line 1770
    .local v1, "gloveEnable":Z
    :goto_73
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyGloveSwitchChanged(JZ)V

    .line 1775
    .end local v1    # "gloveEnable":Z
    :cond_78
    const/high16 v5, 0x800000

    and-int/2addr v5, p4

    if-eqz v5, :cond_88

    const/high16 v5, 0x800000

    and-int/2addr v5, p3

    if-eqz v5, :cond_88

    .line 1776
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1779
    :cond_88
    const/high16 v5, 0x1000000

    and-int/2addr v5, p4

    if-eqz v5, :cond_98

    const/high16 v5, 0x1000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_98

    .line 1780
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x2

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1783
    :cond_98
    const/high16 v5, 0x2000000

    and-int/2addr v5, p4

    if-eqz v5, :cond_a8

    const/high16 v5, 0x2000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_a8

    .line 1784
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x3

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1788
    :cond_a8
    and-int/lit8 v5, p4, 0x2

    if-nez v5, :cond_b0

    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_b5

    .line 1790
    :cond_b0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyJackSwitchChanged(JII)V

    .line 1793
    :cond_b5
    iget-boolean v5, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v5, :cond_c2

    and-int/lit16 v5, p4, 0x94

    if-eqz v5, :cond_c2

    .line 1794
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v5, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1797
    :cond_c2
    return-void

    .line 1746
    :cond_c3
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1752
    :cond_c6
    const/4 v3, 0x0

    goto/16 :goto_43

    .line 1759
    :cond_c9
    const/4 v4, 0x0

    goto :goto_53

    .line 1764
    :cond_cb
    const/4 v0, 0x0

    goto :goto_63

    .line 1769
    :cond_cd
    const/4 v1, 0x0

    goto :goto_73
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 850
    monitor-exit v1

    .line 851
    return-void

    .line 850
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private registerAirViewMasterSettingObserver()V
    .registers 6

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$16;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1541
    return-void
.end method

.method private registerBlockKeysSettingObserver()V
    .registers 6

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parental_control_block_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$14;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1517
    return-void
.end method

.method private registerGloveModeSettingObserver()V
    .registers 6

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$13;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1492
    return-void
.end method

.method private registerKidsModeSettingObserver()V
    .registers 6

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$15;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1528
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$7;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1346
    return-void
.end method

.method private registerShowFingerHoveringPointerSettingObserver()V
    .registers 6

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$10;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1454
    return-void
.end method

.method private registerShowFingerHoveringSettingObserver()V
    .registers 6

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$9;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1443
    return-void
.end method

.method private registerShowHoveringPointerSettingObserver()V
    .registers 6

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1478
    return-void
.end method

.method private registerShowHoveringSettingObserver()V
    .registers 6

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$11;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1467
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$8;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1431
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(I)V

    .line 474
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(I)V

    .line 467
    return-void
.end method

.method private setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V
    .registers 18
    .param p1, "external"    # Z
    .param p2, "viewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    .line 491
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/display/DisplayViewport;->orientation:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/display/DisplayViewport;->deviceHeight:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v14}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(IZIIIIIIIIIIII)V

    .line 498
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1332
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1334
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(II)V

    .line 1335
    return-void
.end method

.method private showMissingKeyboardLayoutNotification()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const v8, 0x10406d8

    const/4 v1, 0x0

    .line 927
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_64

    .line 928
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_24

    .line 929
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 933
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    .line 937
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_24
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 938
    .local v7, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10406d9

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080465

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 947
    .local v6, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 952
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_64
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .prologue
    .line 967
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 968
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 977
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    .line 979
    :try_start_15
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 981
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_26

    .line 984
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 985
    return-void

    .line 979
    :catchall_1f
    move-exception v1

    :try_start_20
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 981
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 8
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1035
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v1, "intent":Landroid/content/Intent;
    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1038
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_17

    .line 1040
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2a
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 9
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1044
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1045
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_20

    .line 1046
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1048
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1051
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_20} :catch_21

    .line 1055
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_20
    :goto_20
    return-void

    .line 1052
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_21
    move-exception v3

    goto :goto_20
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1059
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1060
    .local v12, "metaData":Landroid/os/Bundle;
    if-nez v12, :cond_7

    .line 1126
    :goto_6
    return-void

    .line 1064
    :cond_7
    const-string v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1065
    .local v9, "configResId":I
    if-nez v9, :cond_40

    .line 1066
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1071
    :cond_40
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1072
    .local v15, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v15, :cond_a1

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "collection":Ljava/lang/String;
    :goto_4e
    :try_start_4e
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1076
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5b} :catch_6e

    move-result-object v14

    .line 1078
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5c
    const-string v2, "keyboard-layouts"

    invoke-static {v14, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1081
    :goto_61
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1082
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_100

    move-result-object v10

    .line 1083
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_a4

    .line 1120
    :try_start_6a
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_6

    .line 1122
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v10    # "element":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_6e
    move-exception v11

    .line 1123
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1072
    .end local v6    # "collection":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_a1
    const-string v6, ""

    goto :goto_4e

    .line 1086
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "collection":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_a4
    :try_start_a4
    const-string v2, "keyboard-layout"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1087
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v3, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_b1
    .catchall {:try_start_a4 .. :try_end_b1} :catchall_100

    move-result-object v8

    .line 1090
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    :try_start_b3
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1092
    .local v13, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1094
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1097
    .local v7, "keyboardLayoutResId":I
    if-eqz v13, :cond_cb

    if-eqz v5, :cond_cb

    if-nez v7, :cond_105

    .line 1098
    :cond_cb
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_b3 .. :try_end_fb} :catchall_125

    .line 1111
    :cond_fb
    :goto_fb
    :try_start_fb
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_100

    goto/16 :goto_61

    .line 1120
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "element":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    :catchall_100
    move-exception v2

    :try_start_101
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_105} :catch_6e

    .line 1103
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_105
    :try_start_105
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_11f

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    :cond_11f
    move-object/from16 v2, p4

    .line 1106
    invoke-interface/range {v2 .. v7}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_124
    .catchall {:try_start_105 .. :try_end_124} :catchall_125

    goto :goto_fb

    .line 1111
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v13    # "name":Ljava/lang/String;
    :catchall_125
    move-exception v2

    :try_start_126
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 1114
    .end local v8    # "a":Landroid/content/res/TypedArray;
    :cond_12a
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping unrecognized element \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_126 .. :try_end_166} :catchall_100

    goto/16 :goto_61
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1179
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1181
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_12
    if-nez p1, :cond_1c

    .line 1184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1186
    :cond_1c
    if-nez p2, :cond_26

    .line 1187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_26
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1192
    :try_start_29
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1196
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_50

    .line 1199
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1201
    monitor-exit v2

    .line 1202
    return-void

    .line 1199
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_50
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1201
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1652
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1653
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1654
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_13

    .line 1655
    :cond_11
    monitor-exit v2

    .line 1660
    :goto_12
    return-void

    .line 1657
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 1659
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    goto :goto_12

    .line 1657
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    :cond_32
    :goto_32
    return-void

    .line 1689
    :cond_33
    const-string v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->nativeDump(I)Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 1692
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public fadePointer()V
    .registers 2

    .prologue
    .line 691
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeFadePointer(I)V

    .line 692
    return-void
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1812
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1813
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v0, :cond_f

    .line 1815
    :try_start_7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_18
    .catchall {:try_start_7 .. :try_end_c} :catchall_15

    .line 1819
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    monitor-exit v1

    .line 1823
    :goto_e
    return v0

    .line 1821
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1822
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1823
    const/4 v0, 0x1

    goto :goto_e

    .line 1821
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0

    .line 1816
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1130
    if-nez p1, :cond_a

    .line 1131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_a
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1135
    :try_start_d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1136
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getCursorPosition()[F
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeGetCursorPosition(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getDoNotUseVelocity()Z
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeGetDoNotUseVelocity(I)Z

    move-result v0

    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"    # I

    .prologue
    .line 782
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 783
    :try_start_3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 784
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 785
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 786
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    if-ne v3, p1, :cond_15

    .line 787
    monitor-exit v4

    .line 791
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_14
    return-object v2

    .line 784
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 790
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_18
    monitor-exit v4

    .line 791
    const/4 v2, 0x0

    goto :goto_14

    .line 790
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .prologue
    .line 800
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 801
    :try_start_3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 802
    .local v0, "count":I
    new-array v2, v0, [I

    .line 803
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 804
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 806
    :cond_18
    monitor-exit v4

    return-object v2

    .line 807
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v1

    return-object v0

    .line 817
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getKeyCodeState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 510
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 7
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1014
    if-nez p1, :cond_b

    .line 1015
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_b
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1019
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1026
    aget-object v1, v0, v4

    if-nez v1, :cond_38

    .line 1027
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_38
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .prologue
    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1009
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1167
    if-nez p1, :cond_a

    .line 1168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_a
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1172
    :try_start_d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1173
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getScanCodeState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 523
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 542
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(IIII)I

    move-result v0

    return v0
.end method

.method public getWakeFlag(II)Z
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 528
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeGetWakeFlag(III)Z

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 559
    if-nez p3, :cond_a

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_a
    if-eqz p4, :cond_10

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 563
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_18
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(III[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 15
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 739
    if-nez p1, :cond_c

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_c
    if-eqz p2, :cond_1b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    if-eq p2, v10, :cond_1b

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 749
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 750
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 753
    .local v7, "ident":J
    :try_start_27
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/16 v5, 0x7530

    const/high16 v6, 0x8000000

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_59

    move-result v9

    .line 756
    .local v9, "result":I
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    packed-switch v9, :pswitch_data_a6

    .line 770
    :pswitch_39
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 771
    :goto_58
    return v0

    .line 756
    .end local v9    # "result":I
    :catchall_59
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 760
    .restart local v9    # "result":I
    :pswitch_5e
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " permission denied."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_84
    move v0, v10

    .line 764
    goto :goto_58

    .line 766
    :pswitch_86
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timed out."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 767
    goto :goto_58

    .line 758
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_84
        :pswitch_5e
        :pswitch_39
        :pswitch_86
    .end packed-switch
.end method

.method public isRemoteControlConnected()Z
    .registers 4

    .prologue
    .line 677
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemoteControlConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    return v0
.end method

.method public isShowHoveringPointer()Z
    .registers 2

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    return v0
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_a

    .line 1717
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeMonitor(I)V

    .line 1718
    return-void

    .line 1716
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 9
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 576
    if-nez p1, :cond_c

    .line 577
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputChannelName must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 581
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 582
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2d

    .line 583
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only call from system. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_2d
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 588
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    aget-object v3, v0, v5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v6}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 589
    aget-object v2, v0, v5

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 590
    aget-object v2, v0, v6

    return-object v2
.end method

.method public monitorInputEx(Ljava/lang/String;Z)Landroid/view/InputChannel;
    .registers 10
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "monitorExternal"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 601
    if-nez p1, :cond_c

    .line 602
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputChannelName must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 606
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2d

    .line 607
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only call from system. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_2d
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 611
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    aget-object v3, v0, v6

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannelEx(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;ZZ)V

    .line 612
    aget-object v2, v0, v6

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 613
    aget-object v2, v0, v5

    return-object v2
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1663
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1664
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1667
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1668
    return-void

    .line 1665
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2168
    invoke-static {p1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 625
    if-nez p1, :cond_a

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_a
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 630
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 822
    if-nez p1, :cond_a

    .line 823
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 826
    :cond_a
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 827
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 828
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 829
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 844
    .end local v1    # "callingPid":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v4

    .line 833
    .restart local v1    # "callingPid":I
    :cond_24
    :try_start_24
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 836
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_29
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 837
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_38
    .catchall {:try_start_29 .. :try_end_31} :catchall_21

    .line 843
    :try_start_31
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 844
    monitor-exit v5

    .line 845
    return-void

    .line 838
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_38
    move-exception v2

    .line 840
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_21
.end method

.method public reloadPointerIcon(II)V
    .registers 4
    .param p1, "pointerType"    # I
    .param p2, "flag"    # I

    .prologue
    .line 1377
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcon(III)V

    .line 1378
    return-void
.end method

.method public reloadPointerIcon(IIILandroid/graphics/Point;I)V
    .registers 9
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2176
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHoveringSpenIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3a

    .line 2178
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 2179
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2182
    :cond_3a
    return-void
.end method

.method public reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .registers 10
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2185
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoveringSpenIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const/4 v0, 0x0

    .line 2187
    .local v0, "customIconId":I
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 2188
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 2189
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2191
    :cond_3c
    return v0
.end method

.method public removeHoveringSpenCustomIcon(I)V
    .registers 3
    .param p1, "customIconId"    # I

    .prologue
    .line 2172
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    .line 2173
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1207
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1209
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1211
    :cond_12
    if-nez p1, :cond_1c

    .line 1212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1214
    :cond_1c
    if-nez p2, :cond_26

    .line 1215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1218
    :cond_26
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1220
    :try_start_29
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1225
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_50

    .line 1228
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1230
    monitor-exit v2

    .line 1231
    return-void

    .line 1228
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_50
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1230
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1142
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1144
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_12
    if-nez p1, :cond_1c

    .line 1147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_1c
    if-nez p2, :cond_26

    .line 1150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_26
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1155
    :try_start_29
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1157
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_3e

    .line 1160
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1162
    monitor-exit v1

    .line 1163
    return-void

    .line 1160
    :catchall_3e
    move-exception v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0

    .line 1162
    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public setDisplayViewports(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/DisplayViewport;)V
    .registers 5
    .param p1, "defaultViewport"    # Lcom/android/server/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 479
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_9

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 483
    :cond_9
    iget-boolean v0, p2, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_11

    .line 484
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 488
    :cond_10
    :goto_10
    return-void

    .line 485
    :cond_11
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_10

    .line 486
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    goto :goto_10
.end method

.method public setDoNotUseVelocity(Z)I
    .registers 3
    .param p1, "doNotUseVelocity"    # Z

    .prologue
    .line 664
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetDoNotUseVelocity(IZ)I

    move-result v0

    return v0
.end method

.method public setFlipCoverTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1418
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFlipCoverTouchEnabled(IZ)V

    .line 1419
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .registers 3
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1278
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V

    .line 1279
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1282
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(IZZ)V

    .line 1283
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 707
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 708
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_9

    .line 709
    monitor-exit v2

    .line 735
    :goto_8
    return-void

    .line 712
    :cond_9
    if-eqz v0, :cond_19

    .line 713
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 714
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 715
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_34

    .line 717
    :try_start_16
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_39
    .catchall {:try_start_16 .. :try_end_19} :catchall_34

    .line 723
    :cond_19
    :goto_19
    if-eqz p1, :cond_2a

    .line 724
    :try_start_1b
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 725
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_34

    .line 727
    :try_start_25
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_3b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    .line 733
    :cond_2a
    :goto_2a
    :try_start_2a
    iget v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz p1, :cond_37

    const/4 v1, 0x1

    :goto_2f
    invoke-static {v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(IZ)V

    .line 734
    monitor-exit v2

    goto :goto_8

    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw v1

    .line 733
    .restart local v0    # "oldFilter":Landroid/view/IInputFilter;
    :cond_37
    const/4 v1, 0x0

    goto :goto_2f

    .line 718
    :catch_39
    move-exception v1

    goto :goto_19

    .line 728
    :catch_3b
    move-exception v1

    goto :goto_2a
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .registers 3
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1274
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V

    .line 1275
    return-void
.end method

.method public setLedState(Z)I
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 655
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetLedState(IZ)I

    move-result v0

    return v0
.end method

.method public setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "monitorFilter"    # I

    .prologue
    .line 646
    if-nez p1, :cond_a

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_a
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMonitorChannelFilter(ILandroid/view/InputChannel;I)V

    .line 650
    return-void
.end method

.method public setPointerBounds(FFFF)V
    .registers 7
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "maxX"    # F
    .param p4, "maxY"    # F

    .prologue
    .line 683
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    const-string v1, "setPointerBounds()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 685
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_KMS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_12
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->nativeSetPointerBounds(IFFFF)V

    .line 688
    return-void
.end method

.method public setRemoteControlConnected(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    .line 673
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteControlConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method

.method public setStartedShutdown(Z)V
    .registers 3
    .param p1, "isStarted"    # Z

    .prologue
    .line 1412
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetStartedShutdown(IZ)V

    .line 1413
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 1286
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(II)V

    .line 1287
    return-void
.end method

.method public setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 19
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 2353
    const-string v2, "WAKEKEY"

    .line 2355
    .local v2, "WAKEKEY_TAG":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 2356
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packagename: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_23

    const-string v12, "null"

    :goto_17
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :goto_22
    return-void

    .line 2356
    :cond_23
    const-string v12, "empty"

    goto :goto_17

    .line 2360
    :cond_26
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2361
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_34

    .line 2362
    const-string v12, "pm is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2366
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 2367
    .local v9, "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 2368
    .local v11, "uidhaspackage":Z
    if-eqz v9, :cond_42

    array-length v12, v9

    if-nez v12, :cond_60

    .line 2369
    :cond_42
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_5d

    const-string v12, "null"

    :goto_51
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_5d
    const-string v12, "empty"

    goto :goto_51

    .line 2372
    :cond_60
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_63
    if-ge v6, v7, :cond_92

    aget-object v8, v4, v6

    .line 2373
    .local v8, "pac":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packagename:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", package:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 2375
    const/4 v11, 0x1

    .line 2381
    .end local v8    # "pac":Ljava/lang/String;
    :cond_92
    const/4 v3, 0x0

    .line 2383
    .local v3, "appinfo":Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    :try_start_94
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2384
    if-nez v3, :cond_ad

    .line 2385
    const-string v12, "appinfo is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_94 .. :try_end_a1} :catch_a2

    goto :goto_22

    .line 2388
    :catch_a2
    move-exception v5

    .line 2389
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "NameNotFoundException is occured"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 2372
    .end local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "pac":Ljava/lang/String;
    :cond_aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 2393
    .end local v8    # "pac":Ljava/lang/String;
    .restart local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_ad
    if-eqz v11, :cond_b5

    iget v12, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_100

    .line 2394
    :cond_b5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uidhaspackage is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", appinfo.flags is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/16 v13, 0x3e8

    if-eq v12, v13, :cond_100

    .line 2396
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "only system app can use this method, but "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not system app"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2400
    :cond_100
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    if-nez v12, :cond_10b

    .line 2401
    new-instance v12, Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-direct {v12, p0}, Lcom/android/server/input/InputManagerService$ControlWakeKey;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .line 2403
    :cond_10b
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V

    goto/16 :goto_22
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 344
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 348
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 351
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeStart(I)V

    .line 355
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 357
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 358
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 361
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringSettingObserver()V

    .line 362
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringPointerSettingObserver()V

    .line 366
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringSettingObserver()V

    .line 367
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringPointerSettingObserver()V

    .line 371
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerGloveModeSettingObserver()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerBlockKeysSettingObserver()V

    .line 376
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerKidsModeSettingObserver()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAirViewMasterSettingObserver()V

    .line 383
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 408
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 410
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 413
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowFingerHoveringFromSettings()V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateGloveModeFromSettings()V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBlockKeysFromSettings()V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateKidsModeFromSettings()V

    .line 426
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAirViewMasterFromSettings()V

    .line 428
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1235
    return-void
.end method

.method public systemReady()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 435
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 450
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 458
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 459
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 460
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1303
    if-nez p1, :cond_a

    .line 1304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_a
    if-nez p2, :cond_14

    .line 1307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_14
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1314
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1316
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_12
    const/4 v0, -0x7

    if-lt p1, v0, :cond_18

    const/4 v0, 0x7

    if-le p1, v0, :cond_20

    .line 1320
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1324
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 637
    if-nez p1, :cond_a

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_a
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V

    .line 642
    return-void
.end method

.method public updateAirViewMasterFromSettings()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1405
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getAirViewMasterSetting(Z)Z

    move-result v0

    .line 1406
    .local v0, "airViewMaster":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetAirViewMaster(IZ)V

    .line 1407
    return-void
.end method

.method public updateBlockKeysFromSettings()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getBlockKeysSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    .line 1394
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetBlockKeys(IZ)V

    .line 1395
    return-void
.end method

.method public updateGloveModeFromSettings()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1386
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getGloveModeSetting(Z)Z

    move-result v0

    .line 1387
    .local v0, "gloveMode":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetGloveMode(IZ)V

    .line 1388
    return-void
.end method

.method public updateKidsModeFromSettings()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1398
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getKidsModeSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 1399
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetKidsMode(IZ)V

    .line 1400
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 2

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1328
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1329
    return-void
.end method

.method public updateShowFingerHoveringFromSettings()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1365
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowFingerHoveringSetting(Z)Z

    move-result v0

    .line 1366
    .local v0, "setting":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowFingerHovering(IZ)V

    .line 1367
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1372
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowHoveringSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 1373
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(IZ)V

    .line 1374
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1359
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    .line 1360
    .local v0, "setting":I
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(IZ)V

    .line 1361
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 10
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1623
    array-length v2, p2

    if-lt p3, v2, :cond_9

    .line 1624
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1628
    :cond_9
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1629
    :try_start_c
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1630
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_2a

    .line 1631
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p4, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_3f

    .line 1633
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v2, 0x0

    :try_start_22
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_38
    .catchall {:try_start_22 .. :try_end_25} :catchall_3f

    .line 1638
    :try_start_25
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3f

    .line 1642
    monitor-enter v1

    .line 1643
    const/4 v2, 0x1

    :try_start_2d
    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1644
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v3, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v2, p1, p2, p3, v3}, Lcom/android/server/input/InputManagerService;->nativeVibrate(II[JII)V

    .line 1645
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_42

    .line 1646
    return-void

    .line 1634
    :catch_38
    move-exception v0

    .line 1636
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_39
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1640
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw v2

    .line 1645
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2
.end method
