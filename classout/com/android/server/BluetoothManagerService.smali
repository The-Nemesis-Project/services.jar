.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final BLUETOOTH_RADIO_TYPE_ALL:I = 0xff

.field private static final BLUETOOTH_SHUTDOWN:I = 0xee

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final INTENT_MSG_DCMO_BT:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_BT_IT_POLICY:I = 0x5

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_DISABLE_RADIO:I = 0x4

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_ENABLE_RADIO:I = 0x3

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_SWITCHED_BT_ENABLE:I = 0x12d

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final SYSTEMUI_UID_NAME:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static isEnablePopup:Z

.field private static limit:I

.field private static mPolicy:I

.field private static mainBuffer:Ljava/lang/String;

.field private static subBuffer:Ljava/lang/StringBuilder;


# instance fields
.field private btEnablePopUp:Landroid/app/AlertDialog;

.field logDir:Ljava/io/File;

.field logDirp:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private mGattBinding:Z

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mName:Ljava/lang/String;

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothRadioMgrCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutdown:Z

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUnbinding:Z

.field mainBfp:Ljava/lang/String;

.field mainF:Ljava/io/File;

.field subBfp:Ljava/lang/String;

.field subF:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    .line 155
    const/4 v0, 0x2

    sput v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 208
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 209
    const/high16 v0, 0x80000

    sput v0, Lcom/android/server/BluetoothManagerService;->limit:I

    .line 215
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 362
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 149
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 187
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 189
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    .line 192
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 210
    const-string v1, "/data/misc/bluedroid"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    .line 211
    const-string v1, "/data/misc/bluedroid/mainBuffer.log"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    .line 212
    const-string v1, "/data/misc/bluedroid/subBuffer.log"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    .line 231
    new-instance v1, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 239
    new-instance v1, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1118
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v1, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 363
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 365
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 366
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 367
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 368
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 369
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 370
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 371
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 372
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 373
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 374
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 375
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 377
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 378
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 379
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 390
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 393
    :cond_9a
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 397
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 398
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 401
    :cond_b2
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->readFromFile()V

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 89
    sget v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 89
    sput p0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/BluetoothManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mRadioType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mRadioType:I

    return p1
.end method

.method static synthetic access$1700(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->debugGetMessageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnableRadio(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleDisableRadio(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendGattServiceStatusCallback(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendRadioSatusCallback(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return v0
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 15
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/16 v7, 0xa

    const/16 v11, 0xc

    const/16 v10, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1711
    if-eq p1, p2, :cond_6b

    .line 1712
    if-ne p1, v7, :cond_6c

    if-ne p2, v10, :cond_6c

    .line 1713
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.RADIO_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v3, "intentRadio1":Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1716
    sget-boolean v5, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v5, :cond_45

    const-string v5, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Radio State Change Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_45
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1718
    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendRadioSatusCallback(Z)V

    .line 1720
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v5}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isTurnOnRadio()Z

    move-result v5

    if-nez v5, :cond_66

    .line 1721
    sget-boolean v5, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v5, :cond_60

    const-string v5, "BluetoothManagerService"

    const-string v7, "Radio off...Unbinidng BT Service...."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_60
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 1725
    :cond_66
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v5, v6, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V

    .line 1798
    .end local v3    # "intentRadio1":Landroid/content/Intent;
    :cond_6b
    :goto_6b
    return-void

    .line 1730
    :cond_6c
    if-eq p2, v11, :cond_70

    if-ne p2, v7, :cond_9d

    .line 1731
    :cond_70
    if-ne p2, v11, :cond_11e

    move v4, v5

    .line 1732
    .local v4, "isUp":Z
    :goto_73
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 1734
    if-eqz v4, :cond_125

    .line 1736
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth_le"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1738
    new-instance v0, Landroid/content/Intent;

    const-class v7, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v0, "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v7, v5, v8}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_121

    .line 1741
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    .line 1759
    .end local v0    # "i":Landroid/content/Intent;
    .end local v4    # "isUp":Z
    :cond_9d
    :goto_9d
    const/16 v7, 0xe

    if-eq p2, v7, :cond_135

    if-eq p2, v10, :cond_135

    .line 1761
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1763
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1764
    const/high16 v7, 0x4000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1765
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_df

    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth State Change Intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_df
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1789
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_e8
    if-ne p1, v11, :cond_6b

    if-ne p2, v10, :cond_6b

    iget-boolean v7, p0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-eqz v7, :cond_6b

    .line 1791
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_117

    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shutdown BT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_117
    invoke-virtual {p0, v5}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    .line 1794
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    goto/16 :goto_6b

    :cond_11e
    move v4, v6

    .line 1731
    goto/16 :goto_73

    .line 1745
    .restart local v0    # "i":Landroid/content/Intent;
    .restart local v4    # "isUp":Z
    :cond_121
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    goto/16 :goto_9d

    .line 1750
    .end local v0    # "i":Landroid/content/Intent;
    :cond_125
    if-nez v4, :cond_9d

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->canUnbindBluetoothService()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1751
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_9d

    .line 1771
    .end local v4    # "isUp":Z
    :cond_135
    if-ne p2, v10, :cond_181

    .line 1772
    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendRadioSatusCallback(Z)V

    .line 1777
    :goto_13a
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.RADIO_STATE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1779
    .local v2, "intentRadio":Landroid/content/Intent;
    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_171

    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Radio State Change Intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_171
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1785
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v7, v6, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V

    goto/16 :goto_e8

    .line 1774
    .end local v2    # "intentRadio":Landroid/content/Intent;
    :cond_181
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendRadioSatusCallback(Z)V

    goto :goto_13a
.end method

.method public static bufferLimitReached()Z
    .registers 2

    .prologue
    .line 2050
    const-string v0, "BluetoothManagerService"

    const-string v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 2053
    const/4 v0, 0x1

    return v0
.end method

.method private canUnbindBluetoothService()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1895
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1902
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_30
    .catchall {:try_start_4 .. :try_end_f} :catchall_20

    move-result v3

    if-eqz v3, :cond_14

    :cond_12
    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_20

    .line 1909
    :goto_13
    return v1

    .line 1903
    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_30
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    move-result v3

    if-eqz v3, :cond_23

    :try_start_1e
    monitor-exit v2

    goto :goto_13

    .line 1908
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v1

    .line 1904
    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_30
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :try_start_2e
    monitor-exit v2

    goto :goto_13

    .line 1905
    :catch_30
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_20

    goto :goto_13
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 12

    .prologue
    .line 1683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1684
    .local v5, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1685
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1686
    .local v1, "callingIdentity":J
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1688
    .local v0, "callingAppId":I
    const/4 v7, 0x0

    .line 1690
    .local v7, "valid":Z
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1691
    .local v6, "foregroundUser":I
    if-eq v5, v6, :cond_1b

    const/16 v8, 0x403

    if-ne v0, v8, :cond_6b

    :cond_1b
    const/4 v7, 0x1

    .line 1693
    :goto_1c
    if-nez v7, :cond_37

    .line 1694
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1695
    .local v4, "callingUidName":Ljava/lang/String;
    const-string v8, "android.uid.systemui"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1696
    if-eqz v7, :cond_37

    .line 1697
    const-string v8, "BluetoothManagerService"

    const-string v9, "checkIfCallerIsForegroundUser: callingUidName contains SYSTEMUI_UID_NAME. Set valid to true!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    .end local v4    # "callingUidName":Ljava/lang/String;
    :cond_37
    sget-boolean v8, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v8, :cond_67

    .line 1700
    const-string v8, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " callingUser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " foregroundUser="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_11 .. :try_end_67} :catchall_6d

    .line 1705
    :cond_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    return v7

    .line 1691
    :cond_6b
    const/4 v7, 0x0

    goto :goto_1c

    .line 1705
    .end local v6    # "foregroundUser":I
    :catchall_6d
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private static debugGetMessageName(I)Ljava/lang/String;
    .registers 3
    .param p0, "msgType"    # I

    .prologue
    .line 159
    sparse-switch p0, :sswitch_data_44

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 160
    :sswitch_1d
    const-string v0, "MESSAGE_ENABLE"

    goto :goto_1c

    .line 161
    :sswitch_20
    const-string v0, "MESSAGE_DISABLE"

    goto :goto_1c

    .line 162
    :sswitch_23
    const-string v0, "MESSAGE_ENABLE_RADIO"

    goto :goto_1c

    .line 163
    :sswitch_26
    const-string v0, "MESSAGE_DISABLE_RADIO"

    goto :goto_1c

    .line 164
    :sswitch_29
    const-string v0, "MESSAGE_REGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_1c

    .line 165
    :sswitch_2c
    const-string v0, "MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_1c

    .line 166
    :sswitch_2f
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED"

    goto :goto_1c

    .line 167
    :sswitch_32
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED"

    goto :goto_1c

    .line 168
    :sswitch_35
    const-string v0, "MESSAGE_BLUETOOTH_STATE_CHANGE"

    goto :goto_1c

    .line 169
    :sswitch_38
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    goto :goto_1c

    .line 170
    :sswitch_3b
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    goto :goto_1c

    .line 171
    :sswitch_3e
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    goto :goto_1c

    .line 172
    :sswitch_41
    const-string v0, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    goto :goto_1c

    .line 159
    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_20
        0x3 -> :sswitch_23
        0x4 -> :sswitch_26
        0x1e -> :sswitch_29
        0x1f -> :sswitch_2c
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_32
        0x3c -> :sswitch_35
        0x64 -> :sswitch_38
        0x65 -> :sswitch_3b
        0xc8 -> :sswitch_3e
        0xc9 -> :sswitch_41
    .end sparse-switch
.end method

.method private enablePopupForBluetooth()V
    .registers 3

    .prologue
    .line 1957
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/BluetoothManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2021
    return-void
.end method

.method private handleDisable()V
    .registers 5

    .prologue
    .line 1664
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1667
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1668
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1a

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending off request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_34

    .line 1671
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1672
    const-string v1, "BluetoothManagerService"

    const-string v3, "IBluetooth.disable() returned false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_2b
    .catchall {:try_start_1a .. :try_end_29} :catchall_34

    .line 1678
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v2

    .line 1679
    return-void

    .line 1674
    :catch_2b
    move-exception v0

    .line 1675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to call disable()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 1678
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private handleDisableRadio(I)V
    .registers 6
    .param p1, "radioType"    # I

    .prologue
    .line 1882
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1883
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    move-result v1

    if-eqz v1, :cond_18

    .line 1885
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->disableRadio(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1886
    const-string v1, "BluetoothManagerService"

    const-string v3, "IBluetooth.disableRadio() returned false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_1a
    .catchall {:try_start_9 .. :try_end_18} :catchall_23

    .line 1892
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v2

    .line 1893
    return-void

    .line 1888
    :catch_1a
    move-exception v0

    .line 1889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to call disableRadio()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1892
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private handleEnable(Z)V
    .registers 10
    .param p1, "quietMode"    # Z

    .prologue
    .line 1604
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 1606
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v5

    .line 1607
    :try_start_5
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_48

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v4, :cond_48

    .line 1609
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1610
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1611
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 1612
    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4, v6, v7}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1614
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1650
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_3f
    :goto_3f
    monitor-exit v5

    .line 1651
    return-void

    .line 1616
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_41
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_3f

    .line 1650
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catchall_45
    move-exception v4

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_45

    throw v4

    .line 1618
    :cond_48
    :try_start_48
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_3f

    .line 1619
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1623
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_45

    .line 1626
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v4, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_81
    .catchall {:try_start_5a .. :try_end_61} :catchall_45

    .line 1631
    :goto_61
    :try_start_61
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_45

    .line 1636
    :cond_64
    :try_start_64
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v4, :cond_8a

    .line 1637
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1638
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enable() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_77} :catch_78
    .catchall {:try_start_64 .. :try_end_77} :catchall_45

    goto :goto_3f

    .line 1646
    :catch_78
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_79
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to call enable()"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 1627
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_81
    move-exception v2

    .line 1628
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_45

    goto :goto_61

    .line 1642
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_8a
    :try_start_8a
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1643
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_99} :catch_78
    .catchall {:try_start_8a .. :try_end_99} :catchall_45

    goto :goto_3f
.end method

.method private handleEnableRadio(I)V
    .registers 9
    .param p1, "radioType"    # I

    .prologue
    .line 1845
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v4

    .line 1846
    :try_start_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_6a

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v3, :cond_6a

    .line 1848
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1849
    .local v2, "timeoutMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1850
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 1851
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V

    .line 1852
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1853
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3, v5, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1855
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1856
    const-string v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to bind to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_61
    :goto_61
    monitor-exit v4

    .line 1879
    return-void

    .line 1858
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_61

    .line 1878
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :catchall_67
    move-exception v3

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v3

    .line 1860
    :cond_6a
    :try_start_6a
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-eqz v3, :cond_75

    .line 1861
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_67

    goto :goto_61

    .line 1864
    :cond_75
    :try_start_75
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_80

    const-string v3, "BluetoothManagerService"

    const-string v5, "Getting and storing Bluetooth name and address prior to enable."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_80
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_8f} :catch_ae
    .catchall {:try_start_75 .. :try_end_8f} :catchall_67

    .line 1870
    :goto_8f
    :try_start_8f
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V

    .line 1871
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetooth;->enableRadio(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 1872
    const-string v3, "BluetoothManagerService"

    const-string v5, "IBluetooth.enableRadio() returned false"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_a4} :catch_a5
    .catchall {:try_start_8f .. :try_end_a4} :catchall_67

    goto :goto_61

    .line 1874
    :catch_a5
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a6
    const-string v3, "BluetoothManagerService"

    const-string v5, "Unable to call enableRadio()"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 1866
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_ae
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_67

    goto :goto_8f
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private final isBluetoothPersistedStateOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 431
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private isNameAndAddressSet()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private loadStoredNameAndAddress()V
    .registers 4

    .prologue
    .line 459
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_31

    .line 464
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_30

    const-string v0, "BluetoothManagerService"

    const-string v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_30
    :goto_30
    return-void

    .line 467
    :cond_31
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 469
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_30

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private onUserSwitched()V
    .registers 7

    .prologue
    .line 997
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onUserSwitched callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 999
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onUserSwitched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Radio Mgr receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v2, :cond_5a

    .line 1002
    :try_start_32
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothRadioMgrCallback;->onUserSwitched()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_40

    .line 1000
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1003
    :catch_40
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call Radio Mgr callback fn on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 1007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1008
    return-void
.end method

.method private persistBluetoothSetting(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1913
    const-string v2, "BluetoothManagerService"

    const-string v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1915
    :try_start_b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_67

    if-eqz v2, :cond_16

    .line 1918
    :try_start_f
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_5e
    .catchall {:try_start_f .. :try_end_16} :catchall_67

    .line 1923
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_67

    .line 1925
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1928
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    .line 1930
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    .line 1932
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1933
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1934
    :try_start_29
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_37

    .line 1935
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1937
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1939
    :cond_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_6a

    .line 1941
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1942
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1944
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1946
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5d

    .line 1948
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1950
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1954
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_5d
    return-void

    .line 1919
    :catch_5e
    move-exception v0

    .line 1920
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5f
    const-string v2, "BluetoothManagerService"

    const-string v4, "Unable to unregister"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1923
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    throw v2

    .line 1939
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 220
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1d

    const/4 v1, 0x1

    .line 226
    .local v1, "mIsAirplaneSensitive":Z
    :goto_15
    if-eqz v1, :cond_1c

    .line 227
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    :cond_1c
    return-void

    .line 224
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1d
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_15
.end method

.method private sendAirplaneModeChangeCallback(Z)V
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 983
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling sendAirplaneModeChangeCallback callbacks up = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 985
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBAirplane mode chnage to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Radio Mgr receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v2, :cond_6b

    .line 988
    :try_start_43
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothRadioMgrCallback;->onAirplaneModeChange(Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_51

    .line 986
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 989
    :catch_51
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call Radio Mgr callback fn on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 993
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 994
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 7

    .prologue
    .line 930
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_67

    .line 931
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_13
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 933
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_62

    .line 936
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_48

    .line 934
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 937
    :catch_48
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_62
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 943
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_67
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 7

    .prologue
    .line 912
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_69

    .line 913
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_13
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 915
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_64

    .line 918
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_4a

    .line 916
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 919
    :catch_4a
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 923
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 925
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_69
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8
    .param p1, "isUp"    # Z

    .prologue
    .line 896
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 897
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_32

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v2, :cond_5d

    .line 900
    :try_start_35
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_43

    .line 898
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 901
    :catch_43
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 906
    return-void
.end method

.method private sendDisableMsg()V
    .registers 4

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1836
    return-void
.end method

.method private sendEnableMsg(Z)V
    .registers 7
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1839
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    if-eqz p1, :cond_11

    move v0, v1

    :goto_9
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1841
    return-void

    :cond_11
    move v0, v2

    .line 1839
    goto :goto_9
.end method

.method private sendGattServiceStatusCallback(Z)V
    .registers 8
    .param p1, "up"    # Z

    .prologue
    .line 949
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onBluetoothServiceUp callbacks up = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_1c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 951
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v2, :cond_6d

    .line 954
    :try_start_43
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v3, p1, v4}, Landroid/bluetooth/IBluetoothRadioMgrCallback;->onGattServiceStateChange(ZLandroid/bluetooth/IBluetoothGatt;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_50} :catch_53

    .line 952
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 955
    :catch_53
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call Gattservice callback fn on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 960
    return-void
.end method

.method private sendRadioSatusCallback(Z)V
    .registers 8
    .param p1, "up"    # Z

    .prologue
    .line 966
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling sendRadioSatusCallback callbacks up = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 968
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting Radio() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Radio Mgr receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v2, :cond_6b

    .line 971
    :try_start_43
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothRadioMgrCallback;->onBTRadioStateChange(Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_51

    .line 969
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 972
    :catch_51
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call Gattservice callback fn on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 977
    return-void
.end method

.method private shutdown()Z
    .registers 9

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 781
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_34

    .line 782
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown(): isEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRadioEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 786
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 787
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 788
    :try_start_45
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_4b

    monitor-exit v2

    .line 810
    :cond_4a
    :goto_4a
    return v4

    .line 789
    :cond_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5a

    .line 790
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 793
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4a

    .line 789
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    .line 795
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 797
    invoke-virtual {p0, v5}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    goto :goto_4a

    .line 799
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 801
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 802
    :try_start_70
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_79

    monitor-exit v2

    goto :goto_4a

    .line 803
    :catchall_76
    move-exception v1

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_76

    throw v1

    :cond_79
    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    .line 804
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 806
    .restart local v0    # "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 807
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4a
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 479
    if-eqz p1, :cond_2f

    .line 480
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 481
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 482
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_2f
    if-eqz p2, :cond_5e

    .line 487
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 489
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_5e

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_5e
    if-eqz p1, :cond_6a

    if-eqz p2, :cond_6a

    .line 494
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    :cond_6a
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .registers 10
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v2, 0x1

    .line 1806
    const/4 v1, 0x0

    .line 1807
    .local v1, "i":I
    :goto_6
    if-ge v1, v5, :cond_10

    .line 1808
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 1810
    :try_start_b
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_d} :catch_3f
    .catchall {:try_start_b .. :try_end_d} :catchall_26

    if-nez v4, :cond_1a

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_26

    .line 1830
    :cond_10
    :goto_10
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const/4 v2, 0x0

    :goto_19
    return v2

    .line 1811
    :cond_1a
    if-eqz p1, :cond_29

    .line 1812
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_3f
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    move-result v4

    if-ne v4, v6, :cond_49

    :try_start_24
    monitor-exit v3

    goto :goto_19

    .line 1822
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v2

    .line 1813
    :cond_29
    if-eqz p2, :cond_35

    .line 1814
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_3f
    .catchall {:try_start_2b .. :try_end_30} :catchall_26

    move-result v4

    if-ne v4, v5, :cond_49

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_26

    goto :goto_19

    .line 1816
    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3f
    .catchall {:try_start_35 .. :try_end_3a} :catchall_26

    move-result v4

    if-eq v4, v6, :cond_49

    :try_start_3d
    monitor-exit v3

    goto :goto_19

    .line 1818
    :catch_3f
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1820
    monitor-exit v3

    goto :goto_10

    .line 1822
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_26

    .line 1823
    if-nez p1, :cond_4e

    if-eqz p2, :cond_56

    .line 1824
    :cond_4e
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1828
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1826
    :cond_56
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_53
.end method


# virtual methods
.method public disable(Z)Z
    .registers 9
    .param p1, "persist"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_21

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_21

    .line 712
    const-string v3, "BluetoothManagerService"

    const-string v4, "disable(): not allowed for non-active and non system user"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_20
    return v2

    .line 716
    :cond_21
    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    packed-switch v4, :pswitch_data_76

    :pswitch_26
    goto :goto_20

    .line 718
    :pswitch_27
    const-string v2, "BluetoothManagerService"

    const-string v4, "Bluetooth is already disabled. DO NOT disable again."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 719
    goto :goto_20

    .line 728
    :pswitch_30
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_5a

    .line 729
    const-string v2, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable(): mBluetooth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBinding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_5a
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 734
    if-eqz p1, :cond_6a

    .line 736
    :try_start_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    .end local v0    # "callingIdentity":J
    :cond_6a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 741
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    .line 742
    monitor-exit v4

    move v2, v3

    .line 743
    goto :goto_20

    .line 742
    :catchall_73
    move-exception v2

    monitor-exit v4
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_73

    throw v2

    .line 716
    :pswitch_data_76
    .packed-switch 0xa
        :pswitch_27
        :pswitch_26
        :pswitch_30
        :pswitch_26
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method public disableRadio(I)Z
    .registers 8
    .param p1, "radioType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 747
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_11

    .line 748
    const-string v1, "BluetoothManagerService"

    const-string v3, "disableRadio(): not allowed for non-active user"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 775
    :goto_10
    return v1

    .line 752
    :cond_11
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_3f

    .line 753
    const-string v4, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableRadio(): mBluetooth = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_53

    const-string v1, "null"

    :goto_28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mBinding = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_3f
    const/16 v1, 0xee

    if-ne p1, v1, :cond_56

    .line 761
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_4e

    .line 762
    const-string v1, "BluetoothManagerService"

    const-string v2, "disableRadio(): shutdown called !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->shutdown()Z

    move v1, v3

    .line 765
    goto :goto_10

    .line 753
    :cond_53
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    goto :goto_28

    .line 768
    :cond_56
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v4

    .line 769
    :try_start_59
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_60

    monitor-exit v4

    move v1, v2

    goto :goto_10

    .line 770
    :cond_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_71

    .line 771
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 773
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 774
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v3

    .line 775
    goto :goto_10

    .line 770
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 1654
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1655
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1656
    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1657
    :cond_18
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :goto_30
    return v1

    :cond_31
    const/4 v1, 0x1

    goto :goto_30
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2058
    const-string v0, "BluetoothManagerService"

    const-string v1, "dump: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump BluetoothManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    :cond_39
    :goto_39
    return-void

    .line 2067
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local bluetooth Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    sget-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_71

    sget-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    :cond_71
    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_39

    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_39
.end method

.method public dumpInFile()V
    .registers 8

    .prologue
    .line 2126
    const/4 v1, 0x0

    .line 2127
    .local v1, "mainFoutS":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 2128
    .local v3, "subFoutS":Ljava/io/FileOutputStream;
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 2131
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 2132
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 2134
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_31

    .line 2135
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2138
    :cond_31
    :try_start_31
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2139
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile delete main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2142
    :cond_45
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 2143
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile delete sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2147
    :cond_59
    sget-object v5, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7e

    .line 2148
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2149
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_6d} :catch_ba
    .catchall {:try_start_31 .. :try_end_6d} :catchall_cb

    .line 2150
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v2, "mainFoutS":Ljava/io/FileOutputStream;
    :try_start_6d
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile write main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    sget-object v5, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7d} :catch_e1
    .catchall {:try_start_6d .. :try_end_7d} :catchall_db

    move-object v1, v2

    .line 2153
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    :cond_7e
    :try_start_7e
    sget-object v5, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a8

    .line 2154
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2155
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_92} :catch_ba
    .catchall {:try_start_7e .. :try_end_92} :catchall_cb

    .line 2156
    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    :try_start_92
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile write sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a7} :catch_e4
    .catchall {:try_start_92 .. :try_end_a7} :catchall_de

    move-object v3, v4

    .line 2164
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    :cond_a8
    if-eqz v1, :cond_ad

    .line 2165
    :try_start_aa
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2166
    :cond_ad
    if-eqz v3, :cond_b2

    .line 2167
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b2} :catch_d7

    .line 2172
    :cond_b2
    :goto_b2
    const-string v5, "BluetoothManagerService"

    const-string v6, "dumpInFile end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_b9
    :goto_b9
    return-void

    .line 2159
    :catch_ba
    move-exception v0

    .line 2160
    .local v0, "e":Ljava/io/IOException;
    :goto_bb
    :try_start_bb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_cb

    .line 2164
    if-eqz v1, :cond_c3

    .line 2165
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2166
    :cond_c3
    if-eqz v3, :cond_b9

    .line 2167
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c8} :catch_c9

    goto :goto_b9

    .line 2168
    :catch_c9
    move-exception v5

    goto :goto_b9

    .line 2163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v5

    .line 2164
    :goto_cc
    if-eqz v1, :cond_d1

    .line 2165
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2166
    :cond_d1
    if-eqz v3, :cond_d6

    .line 2167
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d6} :catch_d9

    .line 2163
    :cond_d6
    :goto_d6
    throw v5

    .line 2168
    :catch_d7
    move-exception v5

    goto :goto_b2

    :catch_d9
    move-exception v6

    goto :goto_d6

    .line 2163
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catchall_db
    move-exception v5

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_cc

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catchall_de
    move-exception v5

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_cc

    .line 2159
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catch_e1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_bb

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_e4
    move-exception v0

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_bb
.end method

.method public enable()Z
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v11

    if-nez v11, :cond_18

    .line 601
    const-string v10, "BluetoothManagerService"

    const-string v11, "enable(): not allowed for non-active and non system user"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_17
    return v9

    .line 605
    :cond_18
    const-string v11, "device_policy"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    .line 606
    .local v7, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/4 v8, 0x0

    .line 608
    .local v8, "userId":I
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v8, v11, Landroid/content/pm/UserInfo;->id:I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_9b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2d} :catch_a4

    .line 616
    :goto_2d
    if-eqz v7, :cond_67

    const/4 v11, 0x0

    :try_start_30
    invoke-interface {v7, v11, v8}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v11

    if-nez v11, :cond_67

    .line 618
    const-string v11, "BluetoothManagerService"

    const-string v12, "Exchange IT Policy has disabled Bluetooth. Cannot enable"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v11, 0x0

    sput v11, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 620
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "android.bluetooth.adapter.extra.STATE"

    const/16 v12, 0xa

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v11, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v11, v5, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 623
    iget-object v11, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v13, 0x64

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_65} :catch_66

    goto :goto_17

    .line 626
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_66
    move-exception v11

    .line 631
    :cond_67
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_BT_SecurityMdmService"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 632
    const-string v11, "persist.sys.bt_lock"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "dev_btlock_state":Ljava/lang/String;
    const-string v11, "bt_lock.enabled"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 634
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Oops: enable BT dev_btlock_state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 609
    .end local v3    # "dev_btlock_state":Ljava/lang/String;
    :catch_9b
    move-exception v4

    .line 610
    .local v4, "e":Landroid/os/RemoteException;
    const-string v11, "BluetoothManagerService"

    const-string v12, "Failed getting userId using ActivityManagerNative"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 611
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_a4
    move-exception v4

    .line 612
    .local v4, "e":Ljava/lang/SecurityException;
    const-string v11, "BluetoothManagerService"

    const-string v12, "Failed getting userId using ActivityManagerNative"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 640
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_ad
    iget-object v11, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BLUETOOTH_ADMIN"

    const-string v13, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_106

    .line 644
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "bluetooth_security_on_check"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 647
    .local v6, "isChecked":I
    const-string v11, "BluetoothManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enable(): enable PopUp for Bluetooth isChecked : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v11, "ChinaNalSecurity"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    if-ne v6, v10, :cond_106

    .line 650
    sget-boolean v11, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    if-nez v11, :cond_104

    .line 651
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V

    move v9, v10

    .line 652
    goto/16 :goto_17

    .line 655
    :cond_104
    sput-boolean v9, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    .line 660
    .end local v0    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v6    # "isChecked":I
    :cond_106
    sget-boolean v9, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v9, :cond_130

    .line 661
    const-string v9, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enable():  mBluetooth ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mBinding = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_130
    iget-object v11, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v11

    .line 666
    const/4 v9, 0x0

    :try_start_134
    iput-boolean v9, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 667
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 670
    .local v1, "callingIdentity":J
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 671
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 673
    monitor-exit v11

    move v9, v10

    .line 674
    goto/16 :goto_17

    .line 673
    .end local v1    # "callingIdentity":J
    :catchall_14c
    move-exception v9

    monitor-exit v11
    :try_end_14e
    .catchall {:try_start_134 .. :try_end_14e} :catchall_14c

    throw v9
.end method

.method public enableGatt()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 829
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v3

    if-nez v3, :cond_10

    .line 830
    const-string v2, "BluetoothManagerService"

    const-string v3, "enableGatt(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_f
    return v1

    .line 834
    :cond_10
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1b

    const-string v3, "BluetoothManagerService"

    const-string v4, "enableGatt()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    if-ne v3, v2, :cond_30

    .line 837
    :cond_23
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_2e

    const-string v1, "BluetoothManagerService"

    const-string v3, "enableGatt(): Gatt service already enabled...!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move v1, v2

    .line 838
    goto :goto_f

    .line 842
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 845
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 848
    :cond_64
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mGattBinding:Z

    move v1, v2

    .line 849
    goto :goto_f
.end method

.method public enableNoAutoConnect()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 577
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_34

    .line 581
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 586
    .local v0, "callingAppId":I
    const/16 v1, 0x403

    if-eq v0, v1, :cond_48

    .line 587
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "no permission to enable Bluetooth quietly"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_48
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 591
    const/4 v1, 0x1

    :try_start_4c
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 592
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 593
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 594
    monitor-exit v2

    .line 595
    return v4

    .line 594
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_57

    throw v1
.end method

.method public enableRadio(I)Z
    .registers 7
    .param p1, "radioType"    # I

    .prologue
    const/4 v2, 0x1

    .line 679
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_10

    .line 680
    const-string v1, "BluetoothManagerService"

    const-string v2, "enableRadio(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v1, 0x0

    .line 703
    :goto_f
    return v1

    .line 684
    :cond_10
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_3e

    .line 685
    const-string v3, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRadio():  mBluetooth ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_4f

    const-string v1, "null"

    :goto_27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mBinding = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_3e
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 692
    :try_start_41
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-eqz v1, :cond_52

    .line 693
    const-string v1, "BluetoothManagerService"

    const-string v4, "enable(): binding in progress. Returning.."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_6a

    move v1, v2

    goto :goto_f

    .line 685
    :cond_4f
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    goto :goto_27

    .line 696
    :cond_52
    :try_start_52
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    if-nez v1, :cond_59

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 697
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_6a

    .line 699
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 702
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 703
    goto :goto_f

    .line 697
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1017
    const-string v1, "BluetoothManagerService"

    const-string v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    .line 1033
    :goto_1f
    return-object v1

    .line 1021
    :cond_20
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1022
    :try_start_23
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_2f

    if-eqz v1, :cond_3a

    .line 1024
    :try_start_27
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_32
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    move-result-object v1

    :try_start_2d
    monitor-exit v2

    goto :goto_1f

    .line 1029
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw v1

    .line 1025
    :catch_32
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v1, "BluetoothManagerService"

    const-string v3, "getAddress(): Unable to retrieve address remotely..Returning cached address"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1029
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_2f

    .line 1033
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    goto :goto_1f
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1042
    const-string v1, "BluetoothManagerService"

    const-string v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x0

    .line 1058
    :goto_1f
    return-object v1

    .line 1046
    :cond_20
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1047
    :try_start_23
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_2f

    if-eqz v1, :cond_3a

    .line 1049
    :try_start_27
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_32
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    move-result-object v1

    :try_start_2d
    monitor-exit v2

    goto :goto_1f

    .line 1054
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw v1

    .line 1050
    :catch_32
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v1, "BluetoothManagerService"

    const-string v3, "getName(): Unable to retrieve name remotely..Returning cached name"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1054
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_2f

    .line 1058
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    goto :goto_1f
.end method

.method public getNameAndAddress()V
    .registers 5

    .prologue
    .line 568
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_2a

    .line 569
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNameAndAddress(): mBluetooth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_2a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method

.method public isEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_17

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-nez v2, :cond_17

    .line 538
    const-string v2, "BluetoothManagerService"

    const-string v3, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_16
    return v1

    .line 542
    :cond_17
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 544
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_2c
    .catchall {:try_start_1a .. :try_end_23} :catchall_29

    move-result v3

    if-eqz v3, :cond_27

    const/4 v1, 0x1

    :cond_27
    :try_start_27
    monitor-exit v2

    goto :goto_16

    .line 548
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v1

    .line 545
    :catch_2c
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v3, "BluetoothManagerService"

    const-string v4, "isEnabled()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_29

    goto :goto_16
.end method

.method public isRadioEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 559
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isRadioEnabled()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_1d

    move-result v3

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    :try_start_11
    monitor-exit v2

    .line 564
    :goto_12
    return v1

    .line 560
    :catch_13
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "isRadioEnabled()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    monitor-exit v2

    goto :goto_12

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public putLogs(Ljava/lang/String;)V
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2026
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2047
    :goto_17
    return-void

    .line 2034
    :cond_18
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2036
    :try_start_1b
    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lcom/android/server/BluetoothManagerService;->limit:I

    if-le v1, v3, :cond_34

    .line 2037
    const-string v1, "BluetoothManagerService"

    const-string v3, "buffer limit reached"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->bufferLimitReached()Z

    .line 2041
    :cond_34
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putLogs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_57} :catch_5c
    .catchall {:try_start_1b .. :try_end_57} :catchall_59

    .line 2046
    :goto_57
    :try_start_57
    monitor-exit v2

    goto :goto_17

    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v1

    .line 2043
    :catch_5c
    move-exception v0

    .line 2044
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v1, "BluetoothManagerService"

    const-string v3, "btsvc manager.putLogs"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_59

    goto :goto_57
.end method

.method public readFile(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "FinS"    # Ljava/io/FileInputStream;

    .prologue
    .line 2108
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2109
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2111
    .local v0, "bReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "read":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 2115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_11

    .line 2118
    .end local v3    # "read":Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 2119
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2122
    .end local v1    # "e":Ljava/io/IOException;
    :cond_24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public readFromFile()V
    .registers 11

    .prologue
    .line 2074
    const/4 v2, 0x0

    .line 2075
    .local v2, "mainFinS":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 2077
    .local v5, "subFinS":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2078
    .local v1, "mainB":[B
    const/4 v4, 0x0

    .line 2079
    .local v4, "subB":[B
    const-string v7, "BluetoothManagerService"

    const-string v8, "readFromFile start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 2082
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 2083
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 2085
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_33

    .line 2086
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 2089
    :cond_33
    :try_start_33
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 2090
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_a8

    .line 2091
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .local v3, "mainFinS":Ljava/io/FileInputStream;
    :try_start_42
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromFile main: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 2093
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_6c} :catch_ad

    move-object v2, v3

    .line 2095
    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    :cond_6d
    :try_start_6d
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 2096
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7c} :catch_a8

    .line 2097
    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .local v6, "subFinS":Ljava/io/FileInputStream;
    :try_start_7c
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromFile sub: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a6} :catch_b0

    move-object v5, v6

    .line 2105
    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    :cond_a7
    :goto_a7
    return-void

    .line 2101
    :catch_a8
    move-exception v0

    .line 2102
    .local v0, "e":Ljava/io/IOException;
    :goto_a9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    .line 2101
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v3    # "mainFinS":Ljava/io/FileInputStream;
    :catch_ad
    move-exception v0

    move-object v2, v3

    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    goto :goto_a9

    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .restart local v6    # "subFinS":Ljava/io/FileInputStream;
    :catch_b0
    move-exception v0

    move-object v5, v6

    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    goto :goto_a9
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 504
    .local v0, "added":Z
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    monitor-exit v2

    return-object v1

    .line 505
    .end local v0    # "added":Z
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public registerRadioMgrCallback(Landroid/bluetooth/IBluetoothRadioMgrCallback;)Z
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothRadioMgrCallback;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 816
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 817
    .local v0, "added":Z
    monitor-exit v2

    return v0

    .line 818
    .end local v0    # "added":Z
    :catchall_b
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 523
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 524
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method public unbindAndFinish()V
    .registers 5

    .prologue
    .line 853
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_2b

    .line 854
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_2b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 859
    :try_start_2e
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    if-eqz v1, :cond_34

    monitor-exit v2

    .line 888
    :goto_33
    return-void

    .line 861
    :cond_34
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_45

    .line 862
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "unbindAndFinish(): already unbound. Skipping..."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    monitor-exit v2

    goto :goto_33

    .line 887
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw v1

    .line 866
    :cond_45
    const/4 v1, 0x1

    :try_start_46
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 867
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_8a

    .line 868
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_42

    move-result v1

    if-nez v1, :cond_5b

    .line 871
    :try_start_54
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5b} :catch_81
    .catchall {:try_start_54 .. :try_end_5b} :catchall_42

    .line 878
    :cond_5b
    :goto_5b
    :try_start_5b
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_66

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending unbind request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 881
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 882
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 883
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 887
    :goto_76
    monitor-exit v2

    goto :goto_33

    .line 872
    :catch_78
    move-exception v0

    .line 873
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 874
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_81
    move-exception v0

    .line 875
    .local v0, "re":Ljava/lang/Throwable;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 885
    .end local v0    # "re":Ljava/lang/Throwable;
    :cond_8a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_8d
    .catchall {:try_start_5b .. :try_end_8d} :catchall_42

    goto :goto_76
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 515
    :try_start_c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 516
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method public unregisterRadioMgrCallback(Landroid/bluetooth/IBluetoothRadioMgrCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothRadioMgrCallback;

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 824
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mRadioMgrCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 825
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method
