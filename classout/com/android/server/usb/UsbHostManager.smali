.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final CABLE_UPDATE_STATE:I = 0x0

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0xbb8

.field private static final USBDEVICE_UPDATE_STATE:I = 0x1

.field private static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static final mStringConverter:Lcom/android/server/usb/UsbStringTable;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUsbKeyboardDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbMouseDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/server/usb/UsbStringTable;

    invoke-direct {v0}, Lcom/android/server/usb/UsbStringTable;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    .line 78
    sput-object v1, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    .line 79
    sput-object v1, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbNotificationHandler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationHandler"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 363
    new-instance v0, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 445
    new-instance v0, Lcom/android/server/usb/UsbHostManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$3;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    .line 98
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVTYPE=usb_interface"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getPowerManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$400()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private attachedUsbHostDock(Ljava/lang/String;III)V
    .registers 20
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "clazz"    # I
    .param p3, "subClass"    # I
    .param p4, "protocol"    # I

    .prologue
    .line 617
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_da

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_da

    .line 618
    new-instance v11, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 619
    .local v11, "keyboardfunctions":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    monitor-enter v14

    .line 620
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "add"

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    .line 624
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 625
    .local v10, "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_38
    :goto_38
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 626
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 628
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 629
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_38

    .line 631
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_75
    monitor-exit v14
    :try_end_76
    .catchall {:try_start_14 .. :try_end_76} :catchall_14f

    .line 633
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v9, "kbdIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v1, "android.intent.extra.device_counter"

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v9, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 641
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send keyboard intent (attached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v9    # "kbdIntent":Landroid/content/Intent;
    .end local v10    # "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    :cond_da
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_1b7

    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_1b7

    .line 649
    new-instance v13, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 650
    .local v13, "mousefunctions":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    monitor-enter v14

    .line 651
    :try_start_ee
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v2, "add"

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    .line 655
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 656
    .local v12, "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_112
    :goto_112
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_152

    .line 657
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 659
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 660
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_112

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14d
    .catchall {:try_start_ee .. :try_end_14d} :catchall_1b8

    move-result-object v13

    goto :goto_112

    .line 631
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    .restart local v11    # "keyboardfunctions":Ljava/lang/String;
    :catchall_14f
    move-exception v1

    :try_start_150
    monitor-exit v14
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw v1

    .line 662
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    .restart local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .restart local v13    # "mousefunctions":Ljava/lang/String;
    :cond_152
    :try_start_152
    monitor-exit v14
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_1b8

    .line 664
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v7, "MouseIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-string v1, "android.intent.extra.device_counter"

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v7, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 673
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send mouse intent (attached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v7    # "MouseIntent":Landroid/content/Intent;
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    :cond_1b7
    return-void

    .line 662
    .restart local v13    # "mousefunctions":Ljava/lang/String;
    :catchall_1b8
    move-exception v1

    :try_start_1b9
    monitor-exit v14
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v1
.end method

.method private detachedUsbHostDock(Ljava/lang/String;)V
    .registers 19
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_116

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 683
    new-instance v11, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 684
    .local v11, "keyboardfunctions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 685
    :try_start_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 686
    .local v14, "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_30
    :goto_30
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 687
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 688
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 689
    const-string v2, "remove"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    goto :goto_30

    .line 701
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :catchall_56
    move-exception v1

    monitor-exit v16
    :try_end_58
    .catchall {:try_start_24 .. :try_end_58} :catchall_56

    throw v1

    .line 693
    .restart local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 695
    .local v10, "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_6e
    :goto_6e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 696
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 698
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 699
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6e

    .line 701
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_ab
    monitor-exit v16
    :try_end_ac
    .catchall {:try_start_59 .. :try_end_ac} :catchall_56

    .line 703
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v9, "kbdIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "android.intent.extra.device_counter"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v9, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 711
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send keyboard intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v9    # "kbdIntent":Landroid/content/Intent;
    .end local v10    # "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    .end local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_22c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22c

    .line 721
    new-instance v13, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 722
    .local v13, "mousefunctions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 724
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 725
    .local v15, "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_146
    :goto_146
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 726
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 727
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 728
    const-string v2, "remove"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    goto :goto_146

    .line 739
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :catchall_16c
    move-exception v1

    monitor-exit v16
    :try_end_16e
    .catchall {:try_start_13a .. :try_end_16e} :catchall_16c

    throw v1

    .line 731
    .restart local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_16f
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 733
    .local v12, "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_184
    :goto_184
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 734
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 736
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 737
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_184

    .line 739
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1c1
    monitor-exit v16
    :try_end_1c2
    .catchall {:try_start_16f .. :try_end_1c2} :catchall_16c

    .line 741
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v7, "MouseIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 743
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    const-string v1, "android.intent.extra.device_counter"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v7, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 749
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send mouse intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v7    # "MouseIntent":Landroid/content/Intent;
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    .end local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_22c
    return-void
.end method

.method private findUsbHostDevice(Ljava/lang/String;[I)V
    .registers 18
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "interfaceValues"    # [I

    .prologue
    .line 592
    iget-object v13, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 593
    :try_start_3
    move-object/from16 v0, p2

    array-length v12, v0

    div-int/lit8 v11, v12, 0x5
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    .line 597
    .local v11, "numInterfaces":I
    const/4 v8, 0x0

    .local v8, "ival":I
    const/4 v2, 0x0

    .line 598
    .local v2, "eval":I
    const/4 v7, 0x0

    .local v7, "intf":I
    move v9, v8

    .end local v8    # "ival":I
    .local v9, "ival":I
    :goto_c
    if-ge v7, v11, :cond_35

    .line 599
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ival":I
    .restart local v8    # "ival":I
    :try_start_10
    aget v4, p2, v9
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_2b
    .catchall {:try_start_10 .. :try_end_12} :catchall_38

    .line 600
    .local v4, "interfaceId":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ival":I
    .restart local v9    # "ival":I
    :try_start_14
    aget v3, p2, v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_16} :catch_3b
    .catchall {:try_start_14 .. :try_end_16} :catchall_38

    .line 601
    .local v3, "interfaceClass":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ival":I
    .restart local v8    # "ival":I
    :try_start_18
    aget v6, p2, v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_2b
    .catchall {:try_start_18 .. :try_end_1a} :catchall_38

    .line 602
    .local v6, "interfaceSubclass":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ival":I
    .restart local v9    # "ival":I
    :try_start_1c
    aget v5, p2, v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1e} :catch_3b
    .catchall {:try_start_1c .. :try_end_1e} :catchall_38

    .line 603
    .local v5, "interfaceProtocol":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ival":I
    .restart local v8    # "ival":I
    :try_start_20
    aget v10, p2, v9

    .line 605
    .local v10, "numEndpoints":I
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v6, v5}, Lcom/android/server/usb/UsbHostManager;->attachedUsbHostDock(Ljava/lang/String;III)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2b
    .catchall {:try_start_20 .. :try_end_27} :catchall_38

    .line 598
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8    # "ival":I
    .restart local v9    # "ival":I
    goto :goto_c

    .line 607
    .end local v3    # "interfaceClass":I
    .end local v4    # "interfaceId":I
    .end local v5    # "interfaceProtocol":I
    .end local v6    # "interfaceSubclass":I
    .end local v9    # "ival":I
    .end local v10    # "numEndpoints":I
    .restart local v8    # "ival":I
    :catch_2b
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    sget-object v12, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v14, "findUsbHIDDevice : error parsing USB descriptors"

    invoke-static {v12, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    monitor-exit v13

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    return-void

    .line 613
    .end local v8    # "ival":I
    .restart local v9    # "ival":I
    :cond_35
    monitor-exit v13

    move v8, v9

    .line 614
    .end local v9    # "ival":I
    .restart local v8    # "ival":I
    goto :goto_34

    .line 613
    .end local v2    # "eval":I
    .end local v7    # "intf":I
    .end local v8    # "ival":I
    .end local v11    # "numInterfaces":I
    :catchall_38
    move-exception v12

    monitor-exit v13
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v12

    .line 607
    .restart local v2    # "eval":I
    .restart local v4    # "interfaceId":I
    .restart local v7    # "intf":I
    .restart local v9    # "ival":I
    .restart local v11    # "numInterfaces":I
    :catch_3b
    move-exception v1

    move v8, v9

    .end local v9    # "ival":I
    .restart local v8    # "ival":I
    goto :goto_2c
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getPowerManager()V
    .registers 4

    .prologue
    .line 346
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_21

    .line 347
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    .line 348
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 349
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 351
    :cond_21
    return-void
.end method

.method private isBlackListed(II)Z
    .registers 10
    .param p1, "vendorID"    # I
    .param p2, "productID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v5

    .line 326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_33

    .line 328
    :try_start_8
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "tok":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_2e

    :cond_20
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2f

    move-result v5

    if-ne v5, p2, :cond_30

    .line 337
    .end local v2    # "tok":[Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v3

    .line 334
    :catch_2f
    move-exception v5

    .line 326
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    move v3, v4

    .line 337
    goto :goto_2e
.end method

.method private isBlackListed(III)Z
    .registers 6
    .param p1, "clazz"    # I
    .param p2, "subClass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    .line 135
    :cond_5
    :goto_5
    return v0

    .line 130
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    if-eq p2, v0, :cond_5

    .line 135
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 116
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 117
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 118
    const/4 v2, 0x1

    .line 121
    :goto_11
    return v2

    .line 116
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 121
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private turnOnLcd()V
    .registers 4

    .prologue
    .line 354
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getPowerManager()V

    .line 356
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 357
    :cond_18
    return-void
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .registers 41
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorID"    # I
    .param p3, "productID"    # I
    .param p4, "deviceClass"    # I
    .param p5, "deviceSubclass"    # I
    .param p6, "deviceProtocol"    # I
    .param p7, "interfaceValues"    # [I
    .param p8, "endpointValues"    # [I

    .prologue
    .line 148
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string/jumbo v11, "usbDeviceAdded : device :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->findUsbHostDevice(Ljava/lang/String;[I)V

    .line 153
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-nez v4, :cond_72

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 156
    :cond_72
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "%s is put on a blocklist [%04xh:%04xh:%02xh:%02xh:%02xh]"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_ab
    return-void

    .line 160
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 161
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_de

    .line 162
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v31

    goto :goto_ab

    .line 209
    :catchall_db
    move-exception v4

    monitor-exit v31
    :try_end_dd
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_db

    throw v4

    .line 166
    :cond_de
    :try_start_de
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    .line 167
    .local v30, "numInterfaces":I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_db

    .line 170
    .local v17, "interfaces":[Landroid/os/Parcelable;
    const/16 v26, 0x0

    .local v26, "ival":I
    const/16 v22, 0x0

    .line 171
    .local v22, "eval":I
    const/16 v25, 0x0

    .local v25, "intf":I
    move/from16 v27, v26

    .end local v26    # "ival":I
    .local v27, "ival":I
    :goto_f1
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a5

    .line 172
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "ival":I
    .restart local v26    # "ival":I
    :try_start_f9
    aget v5, p7, v27
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fb} :catch_198
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_db

    .line 173
    .local v5, "interfaceId":I
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "ival":I
    .restart local v27    # "ival":I
    :try_start_fd
    aget v6, p7, v26
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_ff} :catch_1c9
    .catchall {:try_start_fd .. :try_end_ff} :catchall_db

    .line 174
    .local v6, "interfaceClass":I
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "ival":I
    .restart local v26    # "ival":I
    :try_start_101
    aget v7, p7, v27
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_103} :catch_198
    .catchall {:try_start_101 .. :try_end_103} :catchall_db

    .line 175
    .local v7, "interfaceSubclass":I
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "ival":I
    .restart local v27    # "ival":I
    :try_start_105
    aget v8, p7, v26
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_107} :catch_1c9
    .catchall {:try_start_105 .. :try_end_107} :catchall_db

    .line 176
    .local v8, "interfaceProtocol":I
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "ival":I
    .restart local v26    # "ival":I
    :try_start_109
    aget v29, p7, v27

    .line 178
    .local v29, "numEndpoints":I
    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 179
    .local v9, "endpoints":[Landroid/os/Parcelable;
    const/16 v21, 0x0

    .local v21, "endp":I
    move/from16 v23, v22

    .end local v22    # "eval":I
    .local v23, "eval":I
    :goto_113
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_13b

    .line 180
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "eval":I
    .restart local v22    # "eval":I
    aget v18, p8, v23
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_11d} :catch_198
    .catchall {:try_start_109 .. :try_end_11d} :catchall_db

    .line 181
    .local v18, "address":I
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "eval":I
    .restart local v23    # "eval":I
    :try_start_11f
    aget v19, p8, v22
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_121} :catch_1cd
    .catchall {:try_start_11f .. :try_end_121} :catchall_db

    .line 182
    .local v19, "attributes":I
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "eval":I
    .restart local v22    # "eval":I
    :try_start_123
    aget v28, p8, v23
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_125} :catch_198
    .catchall {:try_start_123 .. :try_end_125} :catchall_db

    .line 183
    .local v28, "maxPacketSize":I
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "eval":I
    .restart local v23    # "eval":I
    :try_start_127
    aget v24, p8, v22

    .line 184
    .local v24, "interval":I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    .line 179
    add-int/lit8 v21, v21, 0x1

    goto :goto_113

    .line 188
    .end local v18    # "address":I
    .end local v19    # "attributes":I
    .end local v24    # "interval":I
    .end local v28    # "maxPacketSize":I
    :cond_13b
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string/jumbo v11, "usbDeviceAdded : interface :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v14, v6, v7, v8}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_183} :catch_1cd
    .catchall {:try_start_127 .. :try_end_183} :catchall_db

    move-result v4

    if-eqz v4, :cond_189

    .line 193
    :try_start_186
    monitor-exit v31
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_db

    goto/16 :goto_ab

    .line 195
    :cond_189
    :try_start_189
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_190} :catch_1cd
    .catchall {:try_start_189 .. :try_end_190} :catchall_db

    .line 171
    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    .end local v23    # "eval":I
    .restart local v22    # "eval":I
    move/from16 v27, v26

    .end local v26    # "ival":I
    .restart local v27    # "ival":I
    goto/16 :goto_f1

    .line 198
    .end local v5    # "interfaceId":I
    .end local v6    # "interfaceClass":I
    .end local v7    # "interfaceSubclass":I
    .end local v8    # "interfaceProtocol":I
    .end local v9    # "endpoints":[Landroid/os/Parcelable;
    .end local v21    # "endp":I
    .end local v27    # "ival":I
    .end local v29    # "numEndpoints":I
    .restart local v26    # "ival":I
    :catch_198
    move-exception v20

    .line 201
    .local v20, "e":Ljava/lang/Exception;
    :goto_199
    :try_start_199
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    monitor-exit v31

    goto/16 :goto_ab

    .line 205
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v26    # "ival":I
    .restart local v27    # "ival":I
    :cond_1a5
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 207
    .local v10, "device":Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 209
    monitor-exit v31
    :try_end_1c7
    .catchall {:try_start_199 .. :try_end_1c7} :catchall_db

    goto/16 :goto_ab

    .line 198
    .end local v10    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local v5    # "interfaceId":I
    :catch_1c9
    move-exception v20

    move/from16 v26, v27

    .end local v27    # "ival":I
    .restart local v26    # "ival":I
    goto :goto_199

    .end local v22    # "eval":I
    .restart local v6    # "interfaceClass":I
    .restart local v7    # "interfaceSubclass":I
    .restart local v8    # "interfaceProtocol":I
    .restart local v9    # "endpoints":[Landroid/os/Parcelable;
    .restart local v21    # "endp":I
    .restart local v23    # "eval":I
    .restart local v29    # "numEndpoints":I
    :catch_1cd
    move-exception v20

    move/from16 v22, v23

    .end local v23    # "eval":I
    .restart local v22    # "eval":I
    goto :goto_199
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_3
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usbDeviceRemoved :: deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->detachedUsbHostDock(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 219
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_30

    .line 220
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 222
    :cond_30
    monitor-exit v2

    .line 223
    return-void

    .line 222
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method


# virtual methods
.method displayNotification(Ljava/lang/String;IIIZ)V
    .registers 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "deviceClass"    # I
    .param p3, "deviceSubclass"    # I
    .param p4, "deviceProtocol"    # I
    .param p5, "display"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x3

    const v3, 0x10807de

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 489
    const-string v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 490
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1e

    .line 491
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040729

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    .line 585
    :cond_1d
    :goto_1d
    return-void

    .line 500
    :cond_1e
    if-ne p5, v5, :cond_32

    if-ne p2, v1, :cond_32

    if-ne p3, v5, :cond_32

    if-ne p4, v5, :cond_32

    .line 504
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040719

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_1d

    .line 512
    :cond_32
    if-ne p5, v5, :cond_46

    if-ne p2, v1, :cond_46

    if-ne p3, v5, :cond_46

    if-ne p4, v4, :cond_46

    .line 516
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x104071c

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_1d

    .line 524
    :cond_46
    const/4 v0, 0x7

    if-eq p2, v0, :cond_1d

    .line 537
    :cond_49
    const-string v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 539
    const/4 v0, 0x6

    if-ne p2, v0, :cond_61

    .line 540
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x104072a

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_1d

    .line 548
    :cond_61
    if-ne p5, v5, :cond_76

    if-ne p2, v1, :cond_76

    if-ne p3, v5, :cond_76

    if-ne p4, v5, :cond_76

    .line 552
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x104071a

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_1d

    .line 560
    :cond_76
    if-ne p5, v5, :cond_8b

    if-ne p2, v1, :cond_8b

    if-ne p3, v5, :cond_8b

    if-ne p4, v4, :cond_8b

    .line 564
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x104071d

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_1d

    .line 572
    :cond_8b
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1d

    goto :goto_1d
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 267
    :try_start_7
    const-string v17, "  USB Host State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 269
    .local v10, "name":Ljava/lang/String;
    sget-object v19, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, "szdevice":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 277
    .local v7, "iface":Landroid/hardware/usb/UsbInterface;
    sget-object v17, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v19

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v20

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "szinterface":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "       "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_148
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_189

    .line 284
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "         "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_186
    .catchall {:try_start_7 .. :try_end_186} :catchall_26b

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_148

    .line 275
    :cond_189
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_bd

    .line 292
    .end local v5    # "i":I
    .end local v7    # "iface":Landroid/hardware/usb/UsbInterface;
    .end local v8    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "szdevice":Ljava/lang/String;
    .end local v15    # "szinterface":Ljava/lang/String;
    :cond_18d
    :try_start_18d
    new-instance v11, Ljava/io/File;

    const-string v17, "/dev/bus/usb/"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v11, "root":Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  files : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_221

    .line 296
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "list":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1c7
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_221

    .line 298
    new-instance v13, Ljava/io/File;

    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-direct {v13, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v13, "sub":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_21d

    .line 300
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "slist":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_1e2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_21d

    .line 302
    new-instance v16, Ljava/io/File;

    aget-object v17, v12, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v16, "tmp":Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "      "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_21a} :catch_220
    .catchall {:try_start_18d .. :try_end_21a} :catchall_26b

    .line 301
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e2

    .line 297
    .end local v8    # "j":I
    .end local v12    # "slist":[Ljava/lang/String;
    .end local v16    # "tmp":Ljava/io/File;
    :cond_21d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c7

    .line 309
    .end local v5    # "i":I
    .end local v9    # "list":[Ljava/lang/String;
    .end local v11    # "root":Ljava/io/File;
    .end local v13    # "sub":Ljava/io/File;
    :catch_220
    move-exception v17

    .line 313
    :cond_221
    :try_start_221
    monitor-exit v18
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_26b

    .line 315
    const-string v17, "  USB Host black list:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 317
    :try_start_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 318
    .local v4, "count":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_23c
    if-ge v5, v4, :cond_26e

    .line 319
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_268
    .catchall {:try_start_232 .. :try_end_268} :catchall_270

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_23c

    .line 313
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_26b
    move-exception v17

    :try_start_26c
    monitor-exit v18
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_26b

    throw v17

    .line 321
    .restart local v4    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_26e
    :try_start_26e
    monitor-exit v18

    .line 322
    return-void

    .line 321
    .end local v4    # "count":I
    .end local v5    # "i":I
    :catchall_270
    move-exception v17

    monitor-exit v18
    :try_end_272
    .catchall {:try_start_26e .. :try_end_272} :catchall_270

    throw v17
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "devices"    # Landroid/os/Bundle;

    .prologue
    .line 241
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 245
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 246
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 252
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1

    .line 254
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 255
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_3d

    .line 257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_11

    return-object v1
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 4
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 226
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_b
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 235
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 236
    monitor-exit v2

    .line 237
    return-void

    .line 236
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method
