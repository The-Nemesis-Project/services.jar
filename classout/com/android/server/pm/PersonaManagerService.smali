.class public Lcom/android/server/pm/PersonaManagerService;
.super Landroid/os/IPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$SettingsObserver;,
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;,
        Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;,
        Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSTALLER_LIST_SP:Ljava/lang/String; = "AllowedInstallerListForUser"

.field private static final APPROVED_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field private static final ATTR_ENCRYPTED_ID:Ljava/lang/String; = "encryptedId"

.field private static final ATTR_FIRMWARE_VERSION:Ljava/lang/String; = "fwversion"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FS_MOUNTED:Ljava/lang/String; = "fsMounted"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INSTALLED_PKG_LIST:Ljava/lang/String; = "installedPkgList"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_LOGGED_OUT_TIME:Ljava/lang/String; = "lastLoggedOut"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_OLD_STATE:Ljava/lang/String; = "oldState"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PEROSNA_HANDLER:Ljava/lang/String; = "personahandlername"

.field private static final ATTR_PEROSNA_HANDLER_PACKAGE:Ljava/lang/String; = "personahandlerpackage"

.field private static final ATTR_PEROSNA_SETUPWIZARDAPK:Ljava/lang/String; = "setupapklocation"

.field private static final ATTR_PEROSNA_TYPE:Ljava/lang/String; = "personatype"

.field private static final ATTR_PERSONA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "adminpackagename"

.field private static final ATTR_PERSONA_ADMIN_UID:Ljava/lang/String; = "adminuid"

.field private static final ATTR_PERSONA_HANDLERAPKLOCATION:Ljava/lang/String; = "handlerapklocation"

.field private static final ATTR_REMOVE_PERSONA:Ljava/lang/String; = "removePersona"

.field private static final ATTR_RESET_PASSWORD:Ljava/lang/String; = "resetPassword"

.field private static final ATTR_SAMSUNGACOOUNT:Ljava/lang/String; = "samsungAccount"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_STATE:Ljava/lang/String; = "personastate"

.field private static final ATTR_SUPERLOCKED:Ljava/lang/String; = "superlocked"

.field private static final ATTR_TIMA_ECRYTPFS_INDEX:Ljava/lang/String; = "timaEcrytfsIndex"

.field private static final ATTR_TIMA_PASSWORD_INDEX:Ljava/lang/String; = "timaPasswordIndex"

.field private static final ATTR_USER_MANAGED_PERSONA:Ljava/lang/String; = "isUserManaged"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final FAILURE:I = 0x0

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final INSTALLATION_WAIT_TIME:J = 0x2bf20L

.field private static final INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field private static final MAX_LENGTH:I = 0x400

.field private static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MSG_ACTION_SCREEN_OFF:I = 0xb

.field private static final MSG_ACTION_SCREEN_ON:I = 0x13

.field private static final MSG_BOOT_COMPLETE_RECEIVED:I = 0xd

.field private static final MSG_BOOT_LOAD_PERSONA_SYSTEMREADY:I = 0xf

.field private static final MSG_BOOT_PRUNE_PARTIAL_PERSONA:I = 0xe

.field private static final MSG_BROADCAST_SYSTEM_OBSERVER:I = 0x11

.field private static final MSG_CANCEL_TIMER_IN_USER_ACTIVITY:I = 0x8

.field private static final MSG_DEVICE_ADMIN_STATE_CHANGE:I = 0x10

.field private static final MSG_LOCK_TIME_EXPIRED:I = 0x6

.field private static final MSG_PERSONA_SESSION_EXPIRED:I = 0x1388

.field private static final MSG_PERSONA_STOPPED:I = 0x12

.field private static final MSG_SCHEDULE_TIMER_IN_HANDLER:I = 0x7

.field private static final MSG_SETTINGS_OBSERVER_TRIGGERED:I = 0x9

.field private static final MSG_START_REMOVE_PERSONA_AFTER_SWITCH:I = 0x1

.field private static final MSG_START_RESET_PERSONA_AFTER_SWITCH:I = 0x4

.field private static final MSG_STOP_TIMER:I = 0xc

.field private static final MSG_SUPER_LOCK_PERSONA:I = 0x5

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_REMOVE:I = 0x3

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_RESET:I = 0x2

.field private static final MSG_WAKE_LOCK_CHANGE:I = 0xa

.field private static final PACKAGE_TYPE_GENERAL:I = 0x69

.field private static final PACKAGE_TYPE_HANDLER:I = 0x67

.field private static final PACKAGE_TYPE_SETUPWIZARD:I = 0x68

.field private static final PARAMETER_TYPE_APK:I = 0x65

.field private static final PARAMETER_TYPE_PACKAGE_NAME:I = 0x66

.field private static final PASSWORD_FILE_PATH:Ljava/lang/String; = "/data/system/users/knoxpassword_"

.field private static final PERSONAID:Ljava/lang/String; = "personaid"

.field private static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field private static PERSONA_PWD:Ljava/lang/String; = null

.field private static final PERSONA_TYPE_KNOX:Ljava/lang/String; = "knox"

.field private static final PERSONA_VERSION:I = 0x2

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x263e

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SUCCESS:I = 0x1

.field private static final TAG_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_USERS_WITH_PERSONA:Ljava/lang/String; = "userswithpersona"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field private static final TIMA_MAX_LENGTH:I = 0x10

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field private static mPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field private static final timaVersion20:Z


# instance fields
.field private PhoneCaller:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private installResult:I

.field private lastTimeToBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdminList:Landroid/util/SparseIntArray;

.field private mAdminLockSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserPath:Ljava/io/File;

.field private mBootCompleted:Z

.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/IPersonaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

.field private final mFileLock:Ljava/lang/Object;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

.field private final mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/ISystemPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPartialsForPrune:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field private mPersonaIds:[I

.field private final mPersonaLock:Ljava/lang/Object;

.field private mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

.field private mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

.field private final mPersonas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

.field private mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

.field private final mShortcutModes:Landroid/util/SparseBooleanArray;

.field private mTimerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLastPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersWithPersonaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockRefCount:I

.field private packageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private widgetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.osp.app.signin"

    aput-object v3, v1, v2

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "com.sec.knox.containeragent2"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    .line 226
    const-string v0, "2.0"

    const-string v1, "ro.config.timaversion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    .line 253
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/PersonaManagerService;->FOTA_DEBUG_TIME:J

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    .line 294
    const-string v0, "TimaKeyStore"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 295
    const-string v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 329
    sput-boolean v4, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 374
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 380
    invoke-direct {p0}, Landroid/os/IPersonaManager$Stub;-><init>()V

    .line 232
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    .line 233
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    .line 242
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 247
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    .line 248
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    .line 249
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    .line 259
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    .line 260
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    .line 261
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    .line 264
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    .line 267
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 268
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 269
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 279
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    .line 282
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 283
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 284
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 285
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 286
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    .line 287
    iput-boolean v5, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    .line 330
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2768
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2808
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 5012
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5545
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    .line 5546
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    .line 381
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 382
    sput-object p1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 383
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 384
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    .line 385
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 386
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    .line 387
    new-instance v3, Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-direct {v3, p1}, Lcom/sec/knox/container/util/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 388
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    .line 389
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    .line 390
    new-instance v3, Lcom/android/server/pm/PersonaIdentificationGenerator;

    const-string v4, "AES"

    invoke-direct {v3, v4}, Lcom/android/server/pm/PersonaIdentificationGenerator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 392
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.keychain"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "JP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 394
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.inputmethod.iwnnime.japan"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_e2
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TGY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BRI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 404
    :cond_fe
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.samsung.inputmethod"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_105
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.certinstaller"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.defcontainer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.keyguard"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.providers.settingsearch"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.applications"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.inputmethod.latin"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.inputdevices"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.media"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.downloads.ui"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.google.android.gm"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.widgetapp.digitalclock"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.app.memo"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.music"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.videoplayer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 434
    :try_start_1a2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_299

    .line 435
    :try_start_1a5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 436
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, p5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 442
    iput-object p6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    .line 448
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v7, "userwithpersonalist.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 449
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1c8
    .catchall {:try_start_1a5 .. :try_end_1c8} :catchall_296

    move-result v3

    if-nez v3, :cond_1da

    .line 451
    :try_start_1cb
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_287

    .line 452
    const-string v3, "PersonaManagerService"

    const-string v6, "PMS list file created "

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1da} :catch_290
    .catchall {:try_start_1cb .. :try_end_1da} :catchall_296

    .line 463
    :cond_1da
    :goto_1da
    :try_start_1da
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->getInstance()Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    .line 466
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUserList()V

    .line 468
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 470
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaStateManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v3, Lcom/android/server/pm/PersonaStateManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/pm/PersonaStateManagerService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    .line 472
    const-string v3, "persona_state_manager"

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_state_manager"

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaFileManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Lcom/android/server/pm/PersonaFileManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/pm/PersonaFileManagerService;-><init>(Landroid/content/Context;)V

    .line 477
    .local v1, "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    const-string v3, "persona_file_system"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 478
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_file_system"

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaPolicyManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v2, Lcom/android/server/pm/PersonaPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/pm/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    .line 482
    .local v2, "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    const-string v3, "persona_policy"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 483
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_policy"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v3, Landroid/os/HandlerThread;

    const-string v6, "PersonaManagerService"

    const/16 v7, 0xa

    invoke-direct {v3, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 486
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 487
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 489
    monitor-exit v5
    :try_end_257
    .catchall {:try_start_1da .. :try_end_257} :catchall_296

    .line 490
    :try_start_257
    monitor-exit v4
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_299

    .line 491
    return-void

    .line 395
    .end local v1    # "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    .end local v2    # "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    :cond_259
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHINA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_275

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "China"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 397
    :cond_275
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.samsung.inputmethod"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e2

    .line 399
    :cond_27e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.inputmethod"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e2

    .line 454
    :cond_287
    :try_start_287
    const-string v3, "PersonaManagerService"

    const-string v6, "Error Creating PMS list file!!!! "

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_28e} :catch_290
    .catchall {:try_start_287 .. :try_end_28e} :catchall_296

    goto/16 :goto_1da

    .line 456
    :catch_290
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    :try_start_291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1da

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_296
    move-exception v3

    monitor-exit v5
    :try_end_298
    .catchall {:try_start_291 .. :try_end_298} :catchall_296

    :try_start_298
    throw v3

    .line 490
    :catchall_299
    move-exception v3

    monitor-exit v4
    :try_end_29b
    .catchall {:try_start_298 .. :try_end_29b} :catchall_299

    throw v3
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 362
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 363
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PersonaManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/PersonaManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApksOnReset(ILjava/util/Set;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    return p1
.end method

.method private activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I
    .registers 25
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    .line 2244
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2245
    .local v4, "adminPackageName":Ljava/lang/String;
    if-nez v4, :cond_16

    .line 2246
    const-string v16, "PersonaManagerService"

    const-string v17, "Admin package Name is NULL \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const/16 v16, -0x3f1

    .line 2305
    :goto_15
    return v16

    .line 2250
    :cond_16
    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2252
    .local v12, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v18, 0x8080

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 2255
    .local v7, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_63

    .line 2257
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No Admin available for Persona "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2259
    const/16 v16, -0x3f1

    goto :goto_15

    .line 2262
    :cond_63
    const/4 v8, 0x0

    .line 2264
    .local v8, "cn":Landroid/content/ComponentName;
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin count for Resolve info "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "count":I
    :goto_85
    if-ge v13, v9, :cond_11e

    .line 2269
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2270
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2271
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v14, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2272
    .local v14, "packageName":Ljava/lang/String;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2274
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_bb

    .line 2275
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AppInfo :-- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_bb
    if-nez v14, :cond_c7

    .line 2279
    const-string v16, "PersonaManagerService"

    const-string v17, "activateAdmin packageName is null in Resolve info \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_c4
    :goto_c4
    add-int/lit8 v13, v13, 0x1

    goto :goto_85

    .line 2283
    :cond_c7
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "packageName is \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c4

    .line 2287
    :try_start_e7
    new-instance v10, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v15}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2288
    .local v10, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2290
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " component is  :-- \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11e} :catch_12b

    .line 2299
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_11e
    if-nez v8, :cond_134

    .line 2300
    const-string v16, "PersonaManagerService"

    const-string v17, "Error activateAdmin admin component is null \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/16 v16, -0x3f1

    goto/16 :goto_15

    .line 2293
    .restart local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_12b
    move-exception v11

    .line 2295
    .local v11, "e":Ljava/lang/Exception;
    const-string v16, "PersonaManagerService"

    const-string v17, "Exception throw during creating  DeviceAdminInfo \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 2303
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_134
    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v8, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 2304
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n isAdminActive return false \n "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const/16 v16, 0x0

    goto/16 :goto_15
.end method

.method private changeEncryptFsKey(ILjava/lang/String;)Z
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 5466
    const/4 v8, 0x0

    .line 5468
    .local v8, "resullt":Z
    :try_start_1
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS.changeEncryptFsKey->  personaId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5470
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v7

    .line 5471
    .local v7, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v7, :cond_36

    .line 5472
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v4

    invoke-virtual {v7}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v5

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    .line 5480
    .end local v7    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_36
    :goto_36
    return v8

    .line 5475
    :cond_37
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS.changeEncryptFsKey->  not valid personaid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_50

    goto :goto_36

    .line 5477
    :catch_50
    move-exception v6

    .line 5478
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private changeStateAndSwitch(I)V
    .registers 11
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2780
    :try_start_1
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    new-instance v3, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    .line 2782
    .local v3, "pe":Landroid/content/pm/PersonaEvent;
    const/4 v2, 0x0

    .line 2783
    .local v2, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v6, "persona_state"

    invoke-static {p1, v6}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2785
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_86

    .line 2786
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard b is not null: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 2788
    if-eqz v2, :cond_80

    .line 2789
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2790
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_80

    .line 2791
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    if-nez v6, :cond_80

    .line 2793
    invoke-interface {v2, v3}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    .line 2794
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "switchPersona"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    if-nez v4, :cond_81

    :goto_7d
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 2806
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_80
    :goto_80
    return-void

    .line 2795
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .restart local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_81
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    goto :goto_7d

    .line 2800
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_86
    const-string v5, "PersonaManagerService"

    const-string v6, "postEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_8e

    goto :goto_80

    .line 2803
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    :catch_8e
    move-exception v1

    .line 2804
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v1, "PersonaManagerService"

    .line 334
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e9

    .line 335
    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_5e

    .line 336
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 339
    throw v0

    .line 341
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5e
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e9
    const/4 v2, 0x0

    return v2
.end method

.method private checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "personaType"    # Ljava/lang/String;
    .param p5, "admin"    # Ljava/lang/String;
    .param p6, "handlerApkUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x8

    const/16 v1, -0x3ea

    .line 1764
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 1765
    :cond_c
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Name cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/16 v1, -0x3e9

    .line 1800
    :goto_15
    return v1

    .line 1769
    :cond_16
    if-eqz p4, :cond_1e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_28

    .line 1770
    :cond_1e
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Type cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/16 v1, -0x3ed

    goto :goto_15

    .line 1773
    :cond_28
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    .line 1774
    if-eqz p5, :cond_36

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_40

    .line 1775
    :cond_36
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Admin Apk cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/16 v1, -0x3ec

    goto :goto_15

    .line 1788
    :cond_40
    if-nez p6, :cond_4a

    .line 1789
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk cann\'t be null & should have length greater than 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1792
    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v0, "handlerApk":Ljava/io/File;
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_63

    .line 1794
    :cond_5b
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk file not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1800
    :cond_63
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private checkIfAdminHasBeenRemoved(I)V
    .registers 10
    .param p1, "personaid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3698
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfAdminHasBeenRemoved("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3700
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    monitor-enter v5

    .line 3701
    :try_start_27
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 3702
    .local v3, "isRemoving":Z
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRemoving: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " personaid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const/4 v4, 0x1

    if-ne v3, v4, :cond_f8

    .line 3704
    const-string v4, "device_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 3706
    .local v2, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-nez v2, :cond_60

    .line 3707
    monitor-exit v5

    .line 3730
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .end local v3    # "isRemoving":Z
    :cond_5f
    :goto_5f
    return-void

    .line 3709
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .restart local v3    # "isRemoving":Z
    :cond_60
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3710
    .local v0, "admins":I
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdminList size get ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    if-lez v0, :cond_8d

    .line 3712
    add-int/lit8 v0, v0, -0x1

    .line 3713
    :cond_8d
    if-nez v0, :cond_d1

    .line 3714
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v1

    .line 3715
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_9b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_af

    .line 3716
    :cond_9b
    const-string v4, "PersonaManagerService"

    const-string v6, "All admins disabled, need to remove persona."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApks(I)V

    .line 3718
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3723
    :goto_aa
    monitor-exit v5

    goto :goto_5f

    .line 3728
    .end local v0    # "admins":I
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .end local v3    # "isRemoving":Z
    :catchall_ac
    move-exception v4

    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_27 .. :try_end_ae} :catchall_ac

    throw v4

    .line 3720
    .restart local v0    # "admins":I
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    .restart local v3    # "isRemoving":Z
    :cond_af
    :try_start_af
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad state, removeActiveAdmin called ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeActiveAdmin(I)Z

    goto :goto_aa

    .line 3725
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_d1
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdminList size set again ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 3728
    .end local v0    # "admins":I
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_f8
    monitor-exit v5
    :try_end_f9
    .catchall {:try_start_af .. :try_end_f9} :catchall_ac

    goto/16 :goto_5f
.end method

.method private static final checkManagePersonasPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 779
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    if-eqz v0, :cond_2d

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_2d

    .line 783
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_2d
    return-void
.end method

.method private checkTimaError(II)V
    .registers 5
    .param p1, "personaId"    # I
    .param p2, "timaStatus"    # I

    .prologue
    .line 5403
    packed-switch p2, :pswitch_data_10

    .line 5413
    :goto_3
    return-void

    .line 5408
    :pswitch_4
    const-string v0, "PersonaManagerService"

    const-string v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setTimaCompromisedState(I)V

    goto :goto_3

    .line 5403
    nop

    :pswitch_data_10
    .packed-switch 0x1000c
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V
    .registers 5
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 2310
    const-string v0, "PersonaManagerService"

    const-string v1, " cleanPartialPersona called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2312
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2313
    const/4 v0, 0x4

    iput v0, p1, Landroid/content/pm/PersonaInfo;->state:I

    .line 2314
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "writeUserLocked called "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2316
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "updateUserIdsLocked called "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2318
    monitor-exit v1

    .line 2319
    return-void

    .line 2318
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private collectInstalledPackages(ILjava/util/Set;)V
    .registers 9
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3883
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-nez v3, :cond_c

    .line 3884
    const-string v3, "PersonaManagerService"

    const-string v4, "mContext is null inside collectInstalledPackages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    :cond_b
    return-void

    .line 3888
    :cond_c
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    .line 3889
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInfoList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for id -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3892
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_42

    .line 3896
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non system Installed package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method private deleteTimaKeyStoreKeys(I)V
    .registers 7
    .param p1, "personaId"    # I

    .prologue
    .line 5381
    :try_start_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTimaKeyStoreKeys-> personaId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5382
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 5383
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 5385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_51} :catch_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_51} :catch_57
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_51} :catch_5c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_51} :catch_61

    .line 5396
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_51
    :goto_51
    return-void

    .line 5387
    :catch_52
    move-exception v0

    .line 5388
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_51

    .line 5389
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_57
    move-exception v0

    .line 5390
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_51

    .line 5391
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5c
    move-exception v0

    .line 5392
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_51

    .line 5393
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_61
    move-exception v0

    .line 5394
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51
.end method

.method private fallbackToSingleUserLocked()V
    .registers 1

    .prologue
    .line 1039
    return-void
.end method

.method private getAdminPackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1548
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_b

    .line 1549
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1551
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "flags"    # J
    .param p3, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x40

    const-wide/16 v7, 0x20

    const-wide/16 v5, 0x10

    const/4 v2, 0x0

    .line 2322
    and-long v3, p1, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    .line 2323
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2324
    .local v0, "apkUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2325
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2b

    .line 2326
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName package info is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2336
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local p3    # "admin":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object p3

    .line 2329
    .restart local v0    # "apkUri":Landroid/net/Uri;
    .restart local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local p3    # "admin":Ljava/lang/String;
    :cond_2b
    iget-object p3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_2a

    .line 2330
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2e
    and-long v3, p1, v7

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2a

    .line 2332
    and-long v3, p1, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_43

    .line 2333
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName returning null as FLAG_ADMIN_TYPE_NONE"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2334
    goto :goto_2a

    :cond_43
    move-object p3, v2

    .line 2336
    goto :goto_2a
.end method

.method private getAdminUid(IJLjava/lang/String;)I
    .registers 15
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 2180
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdminUid called  for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    if-nez p4, :cond_35

    .line 2182
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminPackageName == null for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/16 v0, -0x3f1

    .line 2237
    :goto_34
    return v0

    .line 2188
    :cond_35
    const/4 v5, 0x0

    .line 2189
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-wide/16 v6, 0x40

    and-long/2addr v6, p2

    const-wide/16 v8, 0x40

    cmp-long v6, v6, v8

    if-nez v6, :cond_58

    .line 2190
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2195
    :goto_4c
    if-nez v5, :cond_66

    .line 2196
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const/16 v0, -0x3f1

    goto :goto_34

    .line 2192
    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    goto :goto_4c

    .line 2199
    :cond_66
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6a
    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 2200
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_8b

    .line 2201
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList info is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7f} :catch_80

    goto :goto_6a

    .line 2234
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_80
    move-exception v2

    .line 2236
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    const-string v7, "Exception in  getAdminUid available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/16 v0, -0x3f1

    goto :goto_34

    .line 2204
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_8b
    :try_start_8b
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_80

    move-result v6

    if-eqz v6, :cond_6a

    .line 2206
    const/4 v1, 0x0

    .line 2207
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_94
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2208
    if-nez v1, :cond_db

    .line 2209
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, p4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2211
    if-nez v1, :cond_db

    .line 2212
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/16 v0, -0x3f1

    goto/16 :goto_34

    .line 2217
    :cond_db
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2218
    .local v0, "adminUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_130

    .line 2221
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateAdmin adminUid is proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_113} :catch_115

    goto/16 :goto_34

    .line 2227
    .end local v0    # "adminUid":I
    :catch_115
    move-exception v2

    .line 2228
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_116
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception getting application info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12e} :catch_80

    goto/16 :goto_6a

    .line 2223
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adminUid":I
    :cond_130
    :try_start_130
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2224
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making admin uid proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_14c} :catch_115

    goto/16 :goto_34

    .line 2232
    .end local v0    # "adminUid":I
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_14e
    :try_start_14e
    const-string v6, "PersonaManagerService"

    const-string v7, "No Admin available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_155} :catch_80

    .line 2233
    const/16 v0, -0x3f1

    goto/16 :goto_34
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5859
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 5860
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    .line 5870
    :goto_6
    return-object v0

    .line 5862
    :cond_7
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5863
    .local v0, "pdaVersion":Ljava/lang/String;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5865
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5869
    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    goto :goto_6
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 5460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5461
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method private getHandlerApkLocation(I)Ljava/lang/String;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 1555
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1556
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_b

    .line 1557
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1559
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .prologue
    .line 352
    const-string v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 353
    const-class v1, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v1

    .line 354
    :try_start_8
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 5582
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5584
    .local v0, "obj":Ljava/lang/Integer;
    if-eqz v0, :cond_2c

    .line 5585
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 5587
    :goto_2b
    return-wide v1

    :cond_2c
    const-wide/16 v1, 0x0

    goto :goto_2b
.end method

.method private getNextAvailableIdLocked()I
    .registers 4

    .prologue
    .line 4136
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4137
    const/16 v0, 0x64

    .line 4138
    .local v0, "i":I
    :goto_5
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1a

    .line 4139
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 4144
    :cond_1a
    monitor-exit v2

    return v0

    .line 4142
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4145
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private getPasswordFromTima(I)Ljava/lang/String;
    .registers 12
    .param p1, "personaId"    # I

    .prologue
    .line 5310
    const/4 v4, 0x0

    .line 5312
    .local v4, "password":Ljava/lang/String;
    :try_start_1
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPasswordFromTima-> personaId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    const/4 v6, -0x1

    .line 5314
    .local v6, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 5315
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTIMAStatus()I

    move-result v6

    .line 5317
    :cond_24
    if-nez v6, :cond_c9

    .line 5318
    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 5319
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 5321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v7

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v2, v0

    .line 5322
    .local v2, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v2, :cond_9e

    .line 5323
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_79
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_79} :catch_c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_79} :catch_cd
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_79} :catch_d2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_79} :catch_d7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_79} :catch_dc

    .line 5324
    .end local v4    # "password":Ljava/lang/String;
    .local v5, "password":Ljava/lang/String;
    :try_start_79
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/security/KeyStoreException; {:try_start_79 .. :try_end_9d} :catch_ed
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_79 .. :try_end_9d} :catch_ea
    .catch Ljava/security/cert/CertificateException; {:try_start_79 .. :try_end_9d} :catch_e7
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_9d} :catch_e4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_79 .. :try_end_9d} :catch_e1

    move-object v4, v5

    .line 5344
    .end local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "timaStatus":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_9e
    :goto_9e
    return-object v4

    .line 5327
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v6    # "timaStatus":I
    :cond_9f
    :try_start_9f
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/security/KeyStoreException; {:try_start_9f .. :try_end_c3} :catch_c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9f .. :try_end_c3} :catch_cd
    .catch Ljava/security/cert/CertificateException; {:try_start_9f .. :try_end_c3} :catch_d2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c3} :catch_d7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_9f .. :try_end_c3} :catch_dc

    goto :goto_9e

    .line 5332
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v6    # "timaStatus":I
    :catch_c4
    move-exception v1

    .line 5333
    .local v1, "e":Ljava/security/KeyStoreException;
    :goto_c5
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_9e

    .line 5330
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v6    # "timaStatus":I
    :cond_c9
    :try_start_c9
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_cc
    .catch Ljava/security/KeyStoreException; {:try_start_c9 .. :try_end_cc} :catch_c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c9 .. :try_end_cc} :catch_cd
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_cc} :catch_d2
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_d7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_c9 .. :try_end_cc} :catch_dc

    goto :goto_9e

    .line 5334
    .end local v6    # "timaStatus":I
    :catch_cd
    move-exception v1

    .line 5335
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_ce
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_9e

    .line 5336
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_d2
    move-exception v1

    .line 5337
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_d3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_9e

    .line 5338
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_d7
    move-exception v1

    .line 5339
    .local v1, "e":Ljava/io/IOException;
    :goto_d8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 5340
    .end local v1    # "e":Ljava/io/IOException;
    :catch_dc
    move-exception v1

    .line 5341
    .local v1, "e":Ljava/security/UnrecoverableEntryException;
    :goto_dd
    invoke-virtual {v1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_9e

    .line 5340
    .end local v1    # "e":Ljava/security/UnrecoverableEntryException;
    .end local v4    # "password":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v6    # "timaStatus":I
    :catch_e1
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_dd

    .line 5338
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_e4
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_d8

    .line 5336
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_e7
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_d3

    .line 5334
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_ea
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_ce

    .line 5332
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_ed
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_c5
.end method

.method private getPasswordFromTima20(I)Ljava/lang/String;
    .registers 15
    .param p1, "personaId"    # I

    .prologue
    const/16 v10, 0x10

    .line 5348
    const/4 v5, 0x0

    .line 5349
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5350
    .local v3, "key":[B
    new-array v0, v10, [B

    .line 5351
    .local v0, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5352
    .local v8, "token":J
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    .line 5353
    .local v7, "timaService":Landroid/service/tima/ITimaService;
    if-eqz v7, :cond_62

    .line 5355
    :try_start_10
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 5356
    .local v1, "error":I
    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPasswordFromTima20 errorCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5357
    if-nez v1, :cond_50

    .line 5358
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 5359
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_3c

    .line 5360
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v10

    invoke-interface {v7, v10}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    .line 5362
    :cond_3c
    if-eqz v3, :cond_50

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    if-nez v10, :cond_50

    .line 5363
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5364
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    move-object v5, v6

    .line 5368
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_50
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_53} :catch_58
    .catchall {:try_start_10 .. :try_end_53} :catchall_5d

    .line 5372
    .end local v1    # "error":I
    :goto_53
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v6, v5

    .line 5376
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    :goto_57
    return-object v6

    .line 5369
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_58
    move-exception v2

    .line 5370
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_59
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_53

    .line 5372
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_5d
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_62
    move-object v6, v5

    .line 5376
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_57
.end method

.method private getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 624
    .local v0, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v1, :cond_2b

    .line 625
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x0

    .line 628
    .end local v0    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_2b
    return-object v0
.end method

.method private getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;
    .registers 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    if-nez v0, :cond_e

    .line 2491
    const-string v0, "persona_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 2494
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    return-object v0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 2748
    const-string v0, "getPolicyService"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2749
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getTIMAStatus()I
    .registers 11

    .prologue
    .line 5435
    const/4 v2, -0x1

    .line 5436
    .local v2, "timaStatus":I
    const-string v7, "1"

    const-string v8, "ro.config.tima"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5437
    .local v1, "timaEnabled":Z
    const-string v7, "2.0"

    const-string v8, "ro.config.timaversion"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5438
    .local v3, "timaVersion20":Z
    const-string v7, "3.0"

    const-string v8, "ro.config.timaversion"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5439
    .local v4, "timaVersion30":Z
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Binder UID :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5441
    .local v5, "token":J
    if-eqz v1, :cond_60

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    if-eqz v7, :cond_60

    .line 5443
    if-eqz v4, :cond_79

    .line 5444
    :try_start_55
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_8b
    .catchall {:try_start_55 .. :try_end_5c} :catchall_90

    move-result v2

    .line 5452
    :cond_5d
    :goto_5d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5455
    :cond_60
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TIMA getTIMAStatus "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    return v2

    .line 5445
    :cond_79
    if-eqz v3, :cond_5d

    .line 5446
    :try_start_7b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    .line 5447
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8a} :catch_8b
    .catchall {:try_start_7b .. :try_end_8a} :catchall_90

    goto :goto_5d

    .line 5449
    :catch_8b
    move-exception v0

    .line 5450
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_5d

    .line 5452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_90
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    .prologue
    .line 5429
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 5431
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaState()I
    .registers 6

    .prologue
    .line 5416
    const/4 v1, -0x1

    .line 5417
    .local v1, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 5419
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_29

    move-result v1

    .line 5424
    :cond_f
    :goto_f
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timaStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    return v1

    .line 5420
    :catch_29
    move-exception v0

    .line 5421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method private getTimeToLock(I)J
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 4100
    const-wide/32 v1, 0x927c0

    .line 4102
    .local v1, "timeout":J
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_screen_off_timeout"

    const v5, 0x927c0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_14

    move-result v3

    int-to-long v1, v3

    .line 4109
    :goto_13
    return-wide v1

    .line 4105
    :catch_14
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    const-string v4, "Settings read crashed :("

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;
    .registers 19
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3810
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : is called for"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PersonaInfo;

    .line 3813
    .local v12, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v12, :cond_31

    .line 3814
    const-string v14, "PersonaManagerService"

    const-string v15, "getUninstallablePackagesForRemovePersona no personaInfo for this persona"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    const/4 v8, 0x0

    .line 3878
    :cond_30
    return-object v8

    .line 3818
    :cond_31
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v9

    .line 3819
    .local v9, "parentUserId":I
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3822
    .local v7, "otherUsersPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3823
    .local v13, "personaPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3825
    .local v8, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 3826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3828
    .local v11, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3830
    .local v10, "personaId":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3832
    .local v4, "id":I
    move/from16 v0, p1

    if-eq v4, v0, :cond_ae

    .line 3833
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    goto :goto_7c

    .line 3836
    :cond_ae
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages igonored for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 3839
    .end local v4    # "id":I
    .end local v10    # "personaId":Ljava/lang/Integer;
    :cond_c7
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3843
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e4
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for removing : personaId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3850
    const-string v14, "com.sec.knox.securehandler"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3851
    const-string v14, "com.sec.knox.containeragent2"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3852
    const-string v14, "com.sec.knox.packageverifier"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3853
    const-string v14, "com.sec.knox.shortcutsms"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3854
    const-string v14, "com.sec.knox.switcher"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3856
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otherUsersPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "personaPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v5

    .line 3860
    .local v5, "installedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_16c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_16c

    .line 3865
    const-string v14, "PersonaManagerService"

    const-string v15, "Removing packages added to Owner user during boot."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    invoke-interface {v7, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3868
    :cond_16c
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_170
    :goto_170
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_186

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3869
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_170

    .line 3870
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_170

    .line 3874
    .end local v6    # "name":Ljava/lang/String;
    :cond_186
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packagesToBeUnInstall size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3876
    .local v2, "finalPackage":Ljava/lang/String;
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pkg to be uninstalled is -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a6
.end method

.method private handleSuperLockPersona(II)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    .line 4334
    const/4 v1, 0x7

    if-eq p2, v1, :cond_13

    .line 4335
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4336
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4337
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4338
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4340
    .end local v0    # "msg":Landroid/os/Message;
    :cond_13
    return-void
.end method

.method private installAdminApk(IJLjava/lang/String;)I
    .registers 15
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x10

    const/4 v1, 0x0

    const/16 v0, -0x3f0

    .line 2342
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 2344
    const/16 v2, 0x65

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1f

    .line 2345
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    .line 2349
    goto :goto_1e

    .line 2352
    :cond_21
    and-long v2, p2, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_39

    .line 2354
    const/16 v2, 0x66

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_37

    .line 2355
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_37
    move v0, v1

    .line 2359
    goto :goto_1e

    .line 2361
    :cond_39
    and-long v2, p2, v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_1e

    move v0, v1

    .line 2362
    goto :goto_1e
.end method

.method private installApkUriForPersona(ILandroid/net/Uri;)I
    .registers 15
    .param p1, "personaId"    # I
    .param p2, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2440
    const/4 v9, 0x0

    .line 2441
    .local v9, "packageAlreadyInstalled":Z
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v11

    .line 2442
    :try_start_4
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installApkUriForPersona  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 2446
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_44

    .line 2448
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2450
    const/4 v9, 0x1

    .line 2459
    :goto_38
    if-eqz v9, :cond_51

    .line 2461
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    monitor-exit v11

    .line 2482
    :goto_41
    return v0

    .line 2453
    :cond_42
    const/4 v9, 0x0

    goto :goto_38

    .line 2456
    :cond_44
    const-string v0, "PersonaManagerService"

    const-string v1, " installApkUriForPersona  returns error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v0, -0x1

    monitor-exit v11

    goto :goto_41

    .line 2484
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_4e
    move-exception v0

    monitor-exit v11
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    throw v0

    .line 2464
    .restart local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_51
    const/4 v0, -0x1

    :try_start_52
    iput v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2465
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageForPersonaWithVerificationAndEncryption(ILandroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 2467
    const-string v0, "PersonaManagerService"

    const-string v1, " installPackageForPersonaWithVerificationAndEncryption  returns "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_4e

    .line 2469
    :try_start_68
    const-string v0, "PersonaManagerService"

    const-string v1, " calling mPackageInstallObserver  wait "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 2471
    const-string v0, "PersonaManagerService"

    const-string v1, "mPackageInstallObserver wait returns"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_aa

    .line 2473
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package manager result code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_a7} :catch_ad
    .catchall {:try_start_68 .. :try_end_a7} :catchall_4e

    .line 2474
    const/4 v0, -0x1

    :try_start_a8
    monitor-exit v11

    goto :goto_41

    .line 2476
    :cond_aa
    const/4 v0, 0x0

    monitor-exit v11

    goto :goto_41

    .line 2478
    :catch_ad
    move-exception v8

    .line 2480
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "PersonaManagerService"

    const-string v1, "Package installPackageForPersonaWithVerificationAndEncryption  wait error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2482
    const/4 v0, -0x1

    monitor-exit v11
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_4e

    goto :goto_41
.end method

.method private installDefaultApplications(ILjava/util/List;)Z
    .registers 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1494
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installDefaultApplications for  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1496
    .local v0, "userPath":Ljava/io/File;
    const-string v1, "PersonaManagerService"

    const-string v2, "installDefaultApplications createNewPersonaLILPw called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->createNewPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1502
    const/4 v1, 0x1

    return v1
.end method

.method private installExistingPackageForPersona(ILjava/lang/String;)I
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2419
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2420
    const-string v2, "PersonaManagerService"

    const-string v3, "packageAlreadyInstalled is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " installExistingPackageForPersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2423
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    .line 2424
    .local v0, "installResult":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_60

    .line 2425
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failure to install package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package manager result code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    .end local v0    # "installResult":I
    :cond_5f
    :goto_5f
    return v1

    .line 2429
    .restart local v0    # "installResult":I
    :cond_60
    const/4 v1, 0x0

    goto :goto_5f
.end method

.method private installPackageForPersona(IILjava/lang/String;)I
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "pathOrPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2392
    const/16 v2, 0x65

    if-ne p2, v2, :cond_18

    .line 2395
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2396
    .local v0, "apkUri":Landroid/net/Uri;
    if-nez v0, :cond_13

    .line 2397
    const-string v2, "PersonaManagerService"

    const-string v3, "installPackageForPersona apkUri is  null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_12
    :goto_12
    return v1

    .line 2401
    .restart local v0    # "apkUri":Landroid/net/Uri;
    :cond_13
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v1

    goto :goto_12

    .line 2402
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_18
    const/16 v2, 0x66

    if-ne p2, v2, :cond_12

    .line 2403
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2405
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v1

    goto :goto_12
.end method

.method private installPackageUriForPersona(IILandroid/net/Uri;)I
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2371
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v0

    .line 2372
    .local v0, "result":I
    if-gez v0, :cond_14

    .line 2373
    packed-switch p2, :pswitch_data_16

    .line 2381
    const/4 v1, -0x1

    .line 2386
    :goto_a
    return v1

    .line 2375
    :pswitch_b
    const/16 v1, -0x3ee

    goto :goto_a

    .line 2377
    :pswitch_e
    const/16 v1, -0x3ef

    goto :goto_a

    .line 2379
    :pswitch_11
    const/16 v1, -0x7d1

    goto :goto_a

    .line 2386
    :cond_14
    const/4 v1, 0x0

    goto :goto_a

    .line 2373
    :pswitch_data_16
    .packed-switch 0x67
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private isKeyGuardEnabledFromMDM(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 5793
    const/4 v0, 0x1

    .line 5802
    .local v0, "returnValue":Z
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyGuardEnabledFromMDM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    return v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 5576
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    .line 5577
    .local v0, "maximumScreenOffTimeoutFromDeviceAdmin":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const/4 v2, 0x1

    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private isPersonaLimitReachedLocked()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1805
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 1807
    .local v0, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_16

    .line 1809
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_16

    .line 1810
    const-string v2, "PersonaManagerService"

    const-string v3, " isPersonaLimitReachedLocked returns true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :goto_15
    return v1

    .line 1814
    :cond_16
    const-string v1, "PersonaManagerService"

    const-string v2, " isPersonaLimitReachedLocked returns false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isSuperLockState(I)Z
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 4323
    packed-switch p1, :pswitch_data_8

    .line 4329
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4327
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 4323
    nop

    :pswitch_data_8
    .packed-switch 0x7
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isUserLimitReachedLocked()Z
    .registers 3

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 766
    .local v0, "nPersonas":I
    const/4 v1, 0x0

    return v1
.end method

.method private killTimer(I)V
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 5718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    .line 5719
    return-void
.end method

.method private killTimer(IZ)V
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 5722
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 5723
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    if-ne p2, v5, :cond_57

    .line 5724
    :cond_c
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "killtimer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5726
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5727
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5728
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "personaid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5729
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v7, 0x263e

    const/high16 v8, 0x48000000

    invoke-static {v5, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5731
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5732
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5733
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5735
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "token":J
    :cond_57
    monitor-exit v6

    .line 5736
    return-void

    .line 5735
    :catchall_59
    move-exception v5

    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v5
.end method

.method private migrateAndCleanupSharedPreferences(I)V
    .registers 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 5484
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateAndCleanupSharedPreferences id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllowedInstallerListForUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5487
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_a5

    .line 5488
    const/4 v0, 0x0

    .line 5489
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 5490
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_68

    .line 5491
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5492
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fota update: ime list from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5493
    sget-object v3, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 5495
    :cond_68
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 5496
    if-eqz v2, :cond_a6

    .line 5497
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5498
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fota update: install whitelist from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 5504
    :goto_9a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5506
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a5
    return-void

    .line 5501
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a6
    sget-object v3, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v3}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_9a
.end method

.method private printLastTimeToBackground()V
    .registers 6

    .prologue
    .line 4113
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "print lastTimeToBackground size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4115
    .local v1, "tId":Ljava/lang/Integer;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastTimeToBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4117
    .end local v1    # "tId":Ljava/lang/Integer;
    :cond_5d
    return-void
.end method

.method private readAppTypeList(ILjava/lang/String;)Ljava/util/List;
    .registers 16
    .param p1, "id"    # I
    .param p2, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5906
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5907
    .local v5, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5908
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3d

    .line 5909
    const/4 v7, 0x0

    .line 5950
    :cond_3c
    :goto_3c
    return-object v7

    .line 5911
    :cond_3d
    const/4 v7, 0x0

    .line 5912
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 5914
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_3f
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5915
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 5916
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 5917
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5920
    :cond_50
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_53} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_53} :catch_c1
    .catchall {:try_start_3f .. :try_end_53} :catchall_b2

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_5a

    const/4 v10, 0x1

    if-ne v9, v10, :cond_50

    .line 5924
    :cond_5a
    const/4 v10, 0x2

    if-eq v9, v10, :cond_66

    .line 5925
    const/4 v7, 0x0

    .line 5943
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3c

    .line 5945
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_3c

    .line 5946
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_64
    move-exception v10

    goto :goto_3c

    .line 5928
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "type":I
    :cond_66
    const/4 v3, 0x0

    .line 5929
    .local v3, "packages":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v9, v10, :cond_81

    :try_start_6a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_81

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "appType"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_81

    .line 5931
    const/4 v10, 0x0

    invoke-interface {v4, v10, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5934
    :cond_81
    if-eqz v3, :cond_ac

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_ac

    .line 5935
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5936
    .local v6, "pkgArray":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_98} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_98} :catch_c1
    .catchall {:try_start_6a .. :try_end_98} :catchall_b2

    .line 5937
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x2

    :try_start_99
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ab} :catch_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_ab} :catch_ce
    .catchall {:try_start_99 .. :try_end_ab} :catchall_cb

    move-object v7, v8

    .line 5943
    .end local v6    # "pkgArray":[Ljava/lang/String;
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ac
    if-eqz v2, :cond_3c

    .line 5945
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_64

    goto :goto_3c

    .line 5943
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "packages":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catchall_b2
    move-exception v10

    :goto_b3
    if-eqz v2, :cond_b8

    .line 5945
    :try_start_b5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_c9

    .line 5943
    :cond_b8
    :goto_b8
    throw v10

    .line 5940
    :catch_b9
    move-exception v10

    .line 5943
    :goto_ba
    if-eqz v2, :cond_3c

    .line 5945
    :try_start_bc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_3c

    .line 5941
    :catch_c1
    move-exception v10

    .line 5943
    :goto_c2
    if-eqz v2, :cond_3c

    .line 5945
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c7} :catch_64

    goto/16 :goto_3c

    .line 5946
    :catch_c9
    move-exception v11

    goto :goto_b8

    .line 5943
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "packages":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "pkgArray":[Ljava/lang/String;
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "type":I
    :catchall_cb
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_b3

    .line 5941
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_ce
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_c2

    .line 5940
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_d1
    move-exception v10

    move-object v7, v8

    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_ba
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1406
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1407
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1412
    .end local p3    # "defaultValue":I
    :goto_7
    return p3

    .line 1410
    .restart local p3    # "defaultValue":I
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_7

    .line 1411
    :catch_d
    move-exception v0

    .line 1412
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1417
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1423
    .end local p3    # "defaultValue":J
    :goto_7
    return-wide p3

    .line 1421
    .restart local p3    # "defaultValue":J
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p3

    goto :goto_7

    .line 1422
    :catch_d
    move-exception v0

    .line 1423
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readUser(II)Landroid/content/pm/PersonaInfo;
    .registers 58
    .param p1, "id"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 1232
    const/4 v8, 0x0

    .line 1233
    .local v8, "flags":I
    move/from16 v43, p1

    .line 1234
    .local v43, "serialNumber":I
    const/4 v10, -0x1

    .line 1235
    .local v10, "creatorUid":I
    const/16 v47, -0x1

    .line 1236
    .local v47, "timaEcrytfsIndex":I
    const/16 v48, -0x1

    .line 1237
    .local v48, "timaPasswordIndex":I
    const/4 v6, 0x0

    .line 1238
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1239
    .local v7, "iconPath":Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 1240
    .local v13, "creationTime":J
    const-wide/16 v27, 0x0

    .line 1241
    .local v27, "lastLoggedInTime":J
    const-wide/16 v29, 0x0

    .line 1242
    .local v29, "lastLoggedOutTime":J
    const/4 v15, 0x0

    .line 1243
    .local v15, "encryptedId":Ljava/lang/String;
    const/16 v42, 0x0

    .line 1245
    .local v42, "samsungAccount":Ljava/lang/String;
    const/16 v34, 0x0

    .line 1246
    .local v34, "partial":Z
    const/16 v38, 0x0

    .line 1247
    .local v38, "removePersona":Z
    const/16 v25, 0x0

    .line 1248
    .local v25, "isUserManaged":Z
    const/16 v40, 0x0

    .line 1249
    .local v40, "resetPassword":Z
    const/16 v31, -0x1

    .line 1250
    .local v31, "oldState":I
    const/16 v45, -0x1

    .line 1251
    .local v45, "state":I
    const/16 v22, 0x0

    .line 1252
    .local v22, "isFsMounted":Z
    const/16 v23, 0x0

    .line 1253
    .local v23, "isSuperLocked":Z
    const-string v20, ""

    .line 1254
    .local v20, "handlerServiceName":Ljava/lang/String;
    const-string v32, ""

    .line 1255
    .local v32, "packageName":Ljava/lang/String;
    const-string v44, ""

    .line 1256
    .local v44, "setupWizardApkLocation":Ljava/lang/String;
    const-string v19, ""

    .line 1257
    .local v19, "handlerApkLocation":Ljava/lang/String;
    const-string v11, ""

    .line 1258
    .local v11, "adminPackageName":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1259
    .local v12, "adminUid":I
    const-string v35, "default"

    .line 1260
    .local v35, "personaType":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1261
    .local v21, "installedPkgs":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1262
    .local v16, "fis":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 1264
    .local v18, "fwversion":Ljava/lang/String;
    :try_start_36
    new-instance v51, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v53, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-direct {v5, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1265
    .local v51, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v51 .. v51}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v16

    .line 1266
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v33

    .line 1267
    .local v33, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1270
    :cond_92
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v49

    .local v49, "type":I
    const/4 v5, 0x2

    move/from16 v0, v49

    if-eq v0, v5, :cond_a0

    const/4 v5, 0x1

    move/from16 v0, v49

    if-ne v0, v5, :cond_92

    .line 1274
    :cond_a0
    const/4 v5, 0x2

    move/from16 v0, v49

    if-eq v0, v5, :cond_c8

    .line 1275
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Unable to read user "

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_c1} :catch_369
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_c1} :catch_372
    .catchall {:try_start_36 .. :try_end_c1} :catchall_37b

    .line 1276
    const/4 v4, 0x0

    .line 1395
    if-eqz v16, :cond_c7

    .line 1397
    :try_start_c4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_382

    .line 1402
    .end local v33    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v49    # "type":I
    .end local v51    # "userFile":Landroid/util/AtomicFile;
    :cond_c7
    :goto_c7
    return-object v4

    .line 1279
    .restart local v33    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v49    # "type":I
    .restart local v51    # "userFile":Landroid/util/AtomicFile;
    :cond_c8
    const/4 v5, 0x2

    move/from16 v0, v49

    if-ne v0, v5, :cond_2a3

    :try_start_cd
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a3

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a3

    .line 1280
    const-string v5, "id"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v46

    .line 1281
    .local v46, "storedId":I
    move/from16 v0, v46

    move/from16 v1, p1

    if-eq v0, v1, :cond_101

    .line 1282
    const-string v5, "PersonaManagerService"

    const-string v9, "User id does not match the file name"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_f8} :catch_369
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_f8} :catch_372
    .catchall {:try_start_cd .. :try_end_f8} :catchall_37b

    .line 1283
    const/4 v4, 0x0

    .line 1395
    if-eqz v16, :cond_c7

    .line 1397
    :try_start_fb
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff

    goto :goto_c7

    .line 1398
    :catch_ff
    move-exception v5

    goto :goto_c7

    .line 1285
    :cond_101
    :try_start_101
    const-string v5, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v43

    .line 1286
    const-string v5, "flags"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1287
    const/4 v5, 0x0

    const-string v9, "icon"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1288
    const-string v5, "created"

    const-wide/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v53

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1289
    const-string v5, "lastLoggedIn"

    const-wide/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v53

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    .line 1290
    const-string v5, "lastLoggedOut"

    const-wide/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v53

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    .line 1291
    const/4 v5, 0x0

    const-string v9, "encryptedId"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1292
    const/4 v5, 0x0

    const-string v9, "samsungAccount"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1294
    const/4 v5, 0x0

    const-string v9, "partial"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1296
    .local v52, "valueString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "removePersona"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1298
    .local v39, "removeString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "isUserManaged"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1300
    .local v26, "isUserManagedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "resetPassword"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1302
    .local v41, "resetPasswordString":Ljava/lang/String;
    const-string v5, "oldState"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    .line 1304
    const/4 v5, 0x0

    const-string v9, "fsMounted"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1305
    .local v17, "fsMountedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "personatype"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1307
    .local v50, "typeString":Ljava/lang/String;
    const-string v5, "personastate"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v45

    .line 1308
    const/4 v5, 0x0

    const-string v9, "personahandlername"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1309
    const/4 v5, 0x0

    const-string v9, "personahandlerpackage"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1310
    const/4 v5, 0x0

    const-string v9, "setupapklocation"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1311
    const/4 v5, 0x0

    const-string v9, "handlerapklocation"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1312
    const/4 v5, 0x0

    const-string v9, "adminpackagename"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1313
    const-string v5, "adminuid"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 1314
    const-string/jumbo v5, "timaEcrytfsIndex"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v47

    .line 1315
    const-string/jumbo v5, "timaPasswordIndex"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v48

    .line 1316
    const-string v5, "creatorUid"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1318
    const/4 v5, 0x0

    const-string v9, "installedPkgList"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1319
    const/4 v5, 0x0

    const-string/jumbo v9, "superlocked"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1320
    .local v24, "isSuperLockedString":Ljava/lang/String;
    const-string/jumbo v5, "true"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1321
    const/4 v5, 0x0

    const-string v9, "fwversion"

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1322
    if-nez v18, :cond_22c

    .line 1323
    const-string v18, ""

    .line 1325
    :cond_22c
    const-string/jumbo v5, "true"

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_239

    .line 1326
    const/16 v34, 0x1

    .line 1328
    :cond_239
    const-string/jumbo v5, "true"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_246

    .line 1329
    const/16 v38, 0x1

    .line 1331
    :cond_246
    const-string/jumbo v5, "true"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_253

    .line 1332
    const/16 v25, 0x1

    .line 1334
    :cond_253
    const-string/jumbo v5, "true"

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_260

    .line 1335
    const/16 v40, 0x1

    .line 1337
    :cond_260
    const-string/jumbo v5, "true"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26d

    .line 1338
    const/16 v22, 0x1

    .line 1340
    :cond_26d
    if-eqz v50, :cond_271

    .line 1342
    move-object/from16 v35, v50

    .line 1345
    :cond_271
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v49

    const/4 v5, 0x2

    move/from16 v0, v49

    if-eq v0, v5, :cond_27f

    const/4 v5, 0x1

    move/from16 v0, v49

    if-ne v0, v5, :cond_271

    .line 1347
    :cond_27f
    const/4 v5, 0x2

    move/from16 v0, v49

    if-ne v0, v5, :cond_2a3

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a3

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a3

    .line 1348
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v49

    .line 1349
    const/4 v5, 0x4

    move/from16 v0, v49

    if-ne v0, v5, :cond_2a3

    .line 1350
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1355
    .end local v17    # "fsMountedString":Ljava/lang/String;
    .end local v24    # "isSuperLockedString":Ljava/lang/String;
    .end local v26    # "isUserManagedString":Ljava/lang/String;
    .end local v39    # "removeString":Ljava/lang/String;
    .end local v41    # "resetPasswordString":Ljava/lang/String;
    .end local v46    # "storedId":I
    .end local v50    # "typeString":Ljava/lang/String;
    .end local v52    # "valueString":Ljava/lang/String;
    :cond_2a3
    new-instance v4, Landroid/content/pm/PersonaInfo;

    move/from16 v5, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1356
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    move/from16 v0, v43

    iput v0, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1357
    iput-wide v13, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1358
    move-wide/from16 v0, v27

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 1359
    move-wide/from16 v0, v29

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 1360
    iput-object v15, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1361
    move/from16 v0, v34

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1362
    move/from16 v0, v38

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 1363
    move-object/from16 v0, v35

    iput-object v0, v4, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 1364
    move/from16 v0, v45

    iput v0, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 1365
    move/from16 v0, v23

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 1366
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1367
    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1368
    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v4, v11}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v4, v12}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 1372
    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 1373
    move/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    .line 1374
    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 1375
    move/from16 v0, v25

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1376
    move/from16 v0, v40

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 1377
    move/from16 v0, v22

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 1378
    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 1379
    if-eqz v21, :cond_35b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35b

    .line 1380
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "readUser: Installed pkg list: "

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const-string v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 1382
    .local v36, "pkgArray":[Ljava/lang/String;
    new-instance v37, Ljava/util/ArrayList;

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1383
    .local v37, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v53, 0x0

    aput-object v53, v5, v9

    const/4 v9, 0x1

    const-string v53, ""

    aput-object v53, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1384
    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    .line 1389
    .end local v36    # "pkgArray":[Ljava/lang/String;
    .end local v37    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35b
    move/from16 v0, v31

    iput v0, v4, Landroid/content/pm/PersonaInfo;->oldState:I
    :try_end_35f
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_35f} :catch_369
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_101 .. :try_end_35f} :catch_372
    .catchall {:try_start_101 .. :try_end_35f} :catchall_37b

    .line 1395
    if-eqz v16, :cond_c7

    .line 1397
    :try_start_361
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_364
    .catch Ljava/io/IOException; {:try_start_361 .. :try_end_364} :catch_366

    goto/16 :goto_c7

    .line 1398
    :catch_366
    move-exception v5

    goto/16 :goto_c7

    .line 1392
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v33    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v49    # "type":I
    .end local v51    # "userFile":Landroid/util/AtomicFile;
    :catch_369
    move-exception v5

    .line 1395
    if-eqz v16, :cond_36f

    .line 1397
    :try_start_36c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_36f
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_36f} :catch_385

    .line 1402
    :cond_36f
    :goto_36f
    const/4 v4, 0x0

    goto/16 :goto_c7

    .line 1393
    :catch_372
    move-exception v5

    .line 1395
    if-eqz v16, :cond_36f

    .line 1397
    :try_start_375
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_378
    .catch Ljava/io/IOException; {:try_start_375 .. :try_end_378} :catch_379

    goto :goto_36f

    .line 1398
    :catch_379
    move-exception v5

    goto :goto_36f

    .line 1395
    :catchall_37b
    move-exception v5

    if-eqz v16, :cond_381

    .line 1397
    :try_start_37e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_381
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_381} :catch_387

    .line 1399
    :cond_381
    :goto_381
    throw v5

    .line 1398
    .restart local v33    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v49    # "type":I
    .restart local v51    # "userFile":Landroid/util/AtomicFile;
    :catch_382
    move-exception v5

    goto/16 :goto_c7

    .end local v33    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v49    # "type":I
    .end local v51    # "userFile":Landroid/util/AtomicFile;
    :catch_385
    move-exception v5

    goto :goto_36f

    :catch_387
    move-exception v9

    goto :goto_381
.end method

.method private readUserList()V
    .registers 4

    .prologue
    .line 828
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 830
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    .line 832
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 833
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 835
    :cond_21
    monitor-exit v2

    .line 836
    return-void

    .line 835
    .end local v0    # "k":I
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private readUserListLocked(I)V
    .registers 16
    .param p1, "userId"    # I

    .prologue
    .line 840
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 841
    const-string v11, "PersonaManagerService"

    const-string v12, "readUserListLocked"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "personalist.xml"

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .local v7, "personaListFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_82

    .line 844
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File does not exists, creating it "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :try_start_58
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-nez v11, :cond_82

    .line 847
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_82} :catch_ae

    .line 855
    :cond_82
    :goto_82
    const/4 v2, 0x0

    .line 856
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 858
    .local v0, "atomicPersonaListFile":Landroid/util/AtomicFile;
    :try_start_88
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 859
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 860
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v5, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 863
    :cond_94
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_9e

    const/4 v11, 0x1

    if-ne v8, v11, :cond_94

    .line 867
    :cond_9e
    const/4 v11, 0x2

    if-eq v8, v11, :cond_d7

    .line 868
    const-string v11, "PersonaManagerService"

    const-string v12, "Unable to read persona list"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a8} :catch_1af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_a8} :catch_1eb
    .catchall {:try_start_88 .. :try_end_a8} :catchall_206

    .line 924
    if-eqz v2, :cond_ad

    .line 926
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_20d

    .line 931
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :cond_ad
    :goto_ad
    return-void

    .line 849
    .end local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_ae
    move-exception v1

    .line 851
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 852
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 873
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_d7
    const/16 v11, 0x64

    :try_start_d9
    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 874
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10d

    .line 875
    const/4 v11, 0x0

    const-string v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, "lastSerialNumber":Ljava/lang/String;
    if-eqz v4, :cond_fd

    .line 877
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 879
    :cond_fd
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 880
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_10d

    .line 881
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 885
    .end local v4    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_10d
    :goto_10d
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_1f6

    .line 886
    const/4 v11, 0x2

    if-ne v8, v11, :cond_10d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10d

    .line 887
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11, p1}, Lcom/android/server/pm/PersonaManagerService;->readUser(II)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    .line 890
    .local v9, "user":Landroid/content/pm/PersonaInfo;
    if-eqz v9, :cond_10d

    .line 891
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 893
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ba

    .line 894
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found previous persona(s) for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_194

    .line 896
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_194
    :goto_194
    invoke-virtual {v9}, Landroid/content/pm/PersonaInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_19d

    .line 906
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 908
    :cond_19d
    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    if-ltz v11, :cond_1a7

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    if-gt v11, v12, :cond_10d

    .line 909
    :cond_1a7
    iget v11, v9, Landroid/content/pm/PersonaInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_1ad} :catch_1af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d9 .. :try_end_1ad} :catch_1eb
    .catchall {:try_start_d9 .. :try_end_1ad} :catchall_206

    goto/16 :goto_10d

    .line 919
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_1af
    move-exception v11

    .line 924
    if-eqz v2, :cond_ad

    .line 926
    :try_start_1b2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b5} :catch_1b7

    goto/16 :goto_ad

    .line 927
    :catch_1b7
    move-exception v11

    goto/16 :goto_ad

    .line 900
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "user":Landroid/content/pm/PersonaInfo;
    :cond_1ba
    :try_start_1ba
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating new persona list to user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v6, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/Integer;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1ea} :catch_1af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ba .. :try_end_1ea} :catch_1eb
    .catchall {:try_start_1ba .. :try_end_1ea} :catchall_206

    goto :goto_194

    .line 921
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_1eb
    move-exception v11

    .line 924
    if-eqz v2, :cond_ad

    .line 926
    :try_start_1ee
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f3

    goto/16 :goto_ad

    .line 927
    :catch_1f3
    move-exception v11

    goto/16 :goto_ad

    .line 916
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_1f6
    :try_start_1f6
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 917
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1fc} :catch_1af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f6 .. :try_end_1fc} :catch_1eb
    .catchall {:try_start_1f6 .. :try_end_1fc} :catchall_206

    .line 924
    if-eqz v2, :cond_ad

    .line 926
    :try_start_1fe
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_201} :catch_203

    goto/16 :goto_ad

    .line 927
    :catch_203
    move-exception v11

    goto/16 :goto_ad

    .line 924
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catchall_206
    move-exception v11

    if-eqz v2, :cond_20c

    .line 926
    :try_start_209
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_210

    .line 928
    :cond_20c
    :goto_20c
    throw v11

    .line 927
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :catch_20d
    move-exception v11

    goto/16 :goto_ad

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_210
    move-exception v12

    goto :goto_20c
.end method

.method private readUsersWithPersonaLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 938
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_a
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 939
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 940
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 943
    :cond_16
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_1e

    if-ne v4, v11, :cond_16

    .line 947
    :cond_1e
    if-eq v4, v10, :cond_2d

    .line 948
    const-string v8, "PersonaManagerService"

    const-string v9, "Unable to read user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_27} :catch_a8
    .catchall {:try_start_a .. :try_end_27} :catchall_b3

    .line 981
    if-eqz v0, :cond_2c

    .line 983
    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_ba

    .line 988
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2c
    :goto_2c
    return-void

    .line 953
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_2d
    const/4 v8, -0x1

    :try_start_2e
    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 954
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_62

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "users"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 955
    const/4 v8, 0x0

    const-string v9, "nextSerialNumber"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "lastSerialNumber":Ljava/lang/String;
    if-eqz v2, :cond_52

    .line 957
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 959
    :cond_52
    const/4 v8, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 960
    .local v7, "versionNumber":Ljava/lang/String;
    if-eqz v7, :cond_62

    .line 961
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 965
    .end local v2    # "lastSerialNumber":Ljava/lang/String;
    .end local v7    # "versionNumber":Ljava/lang/String;
    :cond_62
    :goto_62
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v11, :cond_a0

    .line 966
    if-ne v4, v10, :cond_62

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_62

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 967
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 969
    .local v5, "userId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 970
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_96} :catch_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_96} :catch_a8
    .catchall {:try_start_2e .. :try_end_96} :catchall_b3

    goto :goto_62

    .line 976
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "userId":Ljava/lang/Integer;
    :catch_97
    move-exception v8

    .line 981
    if-eqz v0, :cond_2c

    .line 983
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_2c

    .line 984
    :catch_9e
    move-exception v8

    goto :goto_2c

    .line 981
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_a0
    if-eqz v0, :cond_2c

    .line 983
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_2c

    .line 984
    :catch_a6
    move-exception v8

    goto :goto_2c

    .line 978
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_a8
    move-exception v8

    .line 981
    if-eqz v0, :cond_2c

    .line 983
    :try_start_ab
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b0

    goto/16 :goto_2c

    .line 984
    :catch_b0
    move-exception v8

    goto/16 :goto_2c

    .line 981
    :catchall_b3
    move-exception v8

    if-eqz v0, :cond_b9

    .line 983
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bd

    .line 985
    :cond_b9
    :goto_b9
    throw v8

    .line 984
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_ba
    move-exception v8

    goto/16 :goto_2c

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_bd
    move-exception v9

    goto :goto_b9
.end method

.method private registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V
    .registers 13
    .param p1, "pi"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1430
    if-nez p1, :cond_3

    .line 1468
    :cond_2
    :goto_2
    return-void

    .line 1434
    :cond_3
    const/16 v2, 0x80

    .line 1436
    .local v2, "flags":I
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v6

    .line 1438
    .local v6, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Iterating through all packages for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1441
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1442
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_31

    .line 1445
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1446
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1447
    .local v3, "handlerProxyServiceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1450
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_7d

    .line 1452
    const-string v8, "HandlerProxyService"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    :goto_4d
    if-eqz v3, :cond_31

    .line 1458
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1459
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Found handlerProxyServiceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in package - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {p1, v3}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    goto :goto_2

    .line 1454
    :cond_7d
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MetaData is null for   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private removeActiveAdmin(I)Z
    .registers 14
    .param p1, "personaHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 3733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3735
    .local v5, "token":J
    :try_start_5
    const-string v8, "device_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 3737
    .local v2, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-nez v2, :cond_1c

    .line 3738
    const-string v8, "PersonaManagerService"

    const-string v9, "DPM service null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_30
    .catchall {:try_start_5 .. :try_end_18} :catchall_4e

    .line 3758
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :goto_18
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3760
    return v7

    .line 3741
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_1c
    :try_start_1c
    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v1

    .line 3742
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_53

    .line 3743
    :cond_28
    const-string v8, "PersonaManagerService"

    const-string v9, "DPM components are null or not present. Going with remove persona"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_30
    .catchall {:try_start_1c .. :try_end_2f} :catchall_4e

    goto :goto_18

    .line 3755
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :catch_30
    move-exception v3

    .line 3756
    .local v3, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occured while removing admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4e

    goto :goto_18

    .line 3758
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3746
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_53
    :try_start_53
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    monitor-enter v9
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_30
    .catchall {:try_start_53 .. :try_end_56} :catchall_4e

    .line 3747
    :try_start_56
    const-string v8, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAdminList size set ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminList:Landroid/util/SparseIntArray;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 3749
    monitor-exit v9
    :try_end_86
    .catchall {:try_start_56 .. :try_end_86} :catchall_b6

    .line 3750
    :try_start_86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3751
    .local v0, "component":Landroid/content/ComponentName;
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing active admin... "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    invoke-interface {v2, v0, p1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b5} :catch_30
    .catchall {:try_start_86 .. :try_end_b5} :catchall_4e

    goto :goto_8a

    .line 3749
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_b6
    move-exception v8

    :try_start_b7
    monitor-exit v9
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v8
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b9} :catch_30
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_4e

    .line 3754
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b9
    const/4 v7, 0x1

    goto/16 :goto_18
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3972
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3973
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3974
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    .line 3975
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3976
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3974
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3979
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3980
    return-void
.end method

.method private removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V
    .registers 11
    .param p1, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .param p2, "personaId"    # I
    .param p3, "dir"    # Ljava/io/File;

    .prologue
    .line 1696
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1697
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4c

    .line 1698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1699
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1700
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1701
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    .line 1703
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    .line 1705
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1708
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4c
    return-void
.end method

.method private removePersonaHelper(I)V
    .registers 5
    .param p1, "personaHandle"    # I

    .prologue
    .line 3764
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePersonaHelper : is called for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeActiveAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3771
    :goto_1e
    return-void

    .line 3769
    :cond_1f
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePersonaHelper going ahead for removing apks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApks(I)V

    goto :goto_1e
.end method

.method private removeThirdPartyApks(I)V
    .registers 6
    .param p1, "personaHandle"    # I

    .prologue
    .line 3774
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeThirdPartyApks : is called for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v0

    .line 3776
    .local v0, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 3777
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    .line 3781
    :goto_2d
    return-void

    .line 3779
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V

    goto :goto_2d
.end method

.method private removeThirdPartyApksOnReset(ILjava/util/Set;)V
    .registers 11
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "excludePkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 3784
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v4

    .line 3785
    .local v4, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3786
    .local v0, "finalpackagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_14

    .line 3787
    const-string v5, "PersonaManagerService"

    const-string v6, "removePersonaHelper : packagesToBeUninstall is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :goto_13
    return-void

    .line 3791
    :cond_14
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3793
    .local v3, "name":Ljava/lang/String;
    if-nez p2, :cond_2c

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 3794
    :cond_2c
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 3798
    .end local v3    # "name":Ljava/lang/String;
    :cond_30
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_46

    .line 3799
    const-string v5, "PersonaManagerService"

    const-string v6, " uninstalling pkgs from finalpackagesToBeUnInstall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    invoke-direct {v5, p0, p1, v0, v7}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    goto :goto_13

    .line 3802
    :cond_46
    const-string v5, "PersonaManagerService"

    const-string v6, "finalpackagesToBeUnInstall is having size zero "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3804
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3805
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method private removeUserStateExternal(I)V
    .registers 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 3907
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-nez v0, :cond_7

    .line 3908
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->deleteTimaKeyStoreKeys(I)V

    .line 3910
    :cond_7
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3911
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 3913
    :cond_14
    return-void
.end method

.method private removeUserStateLocked(I)V
    .registers 11
    .param p1, "personaHandle"    # I

    .prologue
    .line 3918
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    .line 3920
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaHandle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 3925
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v4, :cond_2f

    .line 3926
    const-string v5, "PersonaManagerService"

    const-string v6, "removeUserStateLocked no personaInfo for this persona"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :goto_2e
    return-void

    .line 3929
    :cond_2f
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 3930
    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3932
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3933
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 3936
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v1

    .line 3937
    .local v1, "parentUserId":I
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked parentUserId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 3940
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3941
    .local v3, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3942
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9c

    .line 3943
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3951
    .end local v3    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const-wide/32 v7, 0xea60

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3960
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3961
    .local v2, "personaFile":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3962
    .local v0, "atomicPersonaFile":Landroid/util/AtomicFile;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3965
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 3966
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 3967
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 3968
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    goto/16 :goto_2e
.end method

.method private savePasswordInTima20(ILjava/lang/String;)Z
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 5235
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 5236
    .local v3, "timaService":Landroid/service/tima/ITimaService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5237
    .local v4, "token":J
    if-eqz v3, :cond_53

    .line 5239
    :try_start_a
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 5240
    .local v0, "error":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePasswordInTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    if-nez v0, :cond_39

    .line 5243
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5244
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_41

    .line 5245
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 5250
    .end local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_39
    :goto_39
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3c} :catch_49
    .catchall {:try_start_a .. :try_end_3c} :catchall_4e

    .line 5254
    .end local v0    # "error":I
    :goto_3c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5256
    const/4 v6, 0x1

    .line 5259
    :goto_40
    return v6

    .line 5247
    .restart local v0    # "error":I
    .restart local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_41
    :try_start_41
    const-string v6, "PersonaManagerService"

    const-string v7, "savePasswordInTima20 Persona Info is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49
    .catchall {:try_start_41 .. :try_end_48} :catchall_4e

    goto :goto_39

    .line 5251
    .end local v0    # "error":I
    .end local v2    # "pInfo":Landroid/content/pm/PersonaInfo;
    :catch_49
    move-exception v1

    .line 5252
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_4a
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_3c

    .line 5254
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_4e
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 5258
    :cond_53
    const-string v6, "PersonaManagerService"

    const-string v7, "savePasswordInTima20 failed returning false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    const/4 v6, 0x0

    goto :goto_40
.end method

.method private scheduleTimer(IZ)V
    .registers 16
    .param p1, "personaId"    # I
    .param p2, "forceStart"    # Z

    .prologue
    .line 5611
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5612
    :try_start_3
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scheduleTimer called: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v9

    if-nez v9, :cond_24

    const/4 v9, 0x1

    if-ne p2, v9, :cond_af

    .line 5614
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5616
    .local v7, "token":J
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5617
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5618
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "personaid"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5619
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v11, 0x263e

    const/high16 v12, 0x48000000

    invoke-static {v9, v11, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5621
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5622
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5623
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_ac

    .line 5624
    const/4 v9, 0x1

    if-ne p2, v9, :cond_b1

    const-wide/16 v5, 0x1

    .line 5628
    .local v5, "timeoutMm":J
    :goto_61
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-lez v9, :cond_ac

    .line 5629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5630
    .local v2, "now":J
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scheduleTimer(): force restart: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    const/4 v9, 0x3

    add-long v11, v2, v5

    invoke-virtual {v0, v9, v11, v12, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5633
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5636
    .end local v2    # "now":J
    .end local v5    # "timeoutMm":J
    :cond_ac
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5638
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :cond_af
    monitor-exit v10

    .line 5639
    return-void

    .line 5624
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pi":Landroid/app/PendingIntent;
    .restart local v7    # "token":J
    :cond_b1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v5

    goto :goto_61

    .line 5638
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :catchall_b6
    move-exception v9

    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_3 .. :try_end_b8} :catchall_b6

    throw v9
.end method

.method private sendIntentForAdminLock(Ljava/lang/String;II)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 5823
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.admin.locked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5824
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 5825
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5827
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5828
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5829
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5830
    if-eqz p1, :cond_34

    .line 5831
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5838
    :goto_33
    return-void

    .line 5834
    :cond_34
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private sendIntentForRemoveContainer(Ljava/lang/String;II)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 5841
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.removed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5842
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 5843
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5845
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5846
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5847
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5848
    if-eqz p1, :cond_34

    .line 5849
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5855
    :goto_33
    return-void

    .line 5852
    :cond_34
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private sendPersonaInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 705
    return-void
.end method

.method private setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    .line 5100
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    .local v0, "componentKnoxApps":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 5105
    .local v1, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v1

    .line 5109
    const-string v2, "PersonaManagerService"

    const-string v3, "ALL KnoxApps COMPONENT_ENABLED_STATE_DISABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    return-void
.end method

.method private setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v11, 0x1

    .line 5049
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_20

    .line 5050
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    :goto_1f
    return-void

    .line 5053
    :cond_20
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    const-string v0, "com.sec.android.app.samsungapps"

    .line 5056
    .local v0, "SamsungAppsPKGName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5057
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 5058
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "ro.csc.sales_code"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5060
    .local v7, "szSalesCode":Ljava/lang/String;
    :try_start_44
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 5061
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5062
    if-eqz v1, :cond_99

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Samsung Updates"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 5063
    const-string v8, "CHM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 5064
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V

    .line 5065
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps installed, disable knoxapps and return!! because // szSalesCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_88} :catch_89

    goto :goto_1f

    .line 5070
    :catch_89
    move-exception v4

    .line 5071
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps Not installed..... So just return!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 5068
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_92
    :try_start_92
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps installed, but hidden state !!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_92 .. :try_end_99} :catch_89

    .line 5075
    :cond_99
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    .local v3, "componentSamsungApps":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5082
    .local v2, "componentKnoxApps":Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v3, v9, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 5088
    .local v6, "result1":Z
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps COMPONENT_ENABLED_STATE_DISABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, v2, v11, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 5095
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxApps COMPONENT_ENABLED_STATE_ENABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method

.method private setTimaCompromisedState(I)V
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 5399
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 5400
    return-void
.end method

.method private startResetPersona(I)I
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 4586
    const-string v4, "PersonaManagerService"

    const-string v5, " startResetPersona is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 4589
    .local v2, "i":I
    :goto_d
    if-lez v2, :cond_26

    .line 4590
    add-int/lit8 v2, v2, -0x1

    .line 4592
    :try_start_11
    const-string v4, "PersonaManagerService"

    const-string v5, " sending reset persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v4, p1}, Landroid/content/pm/ISystemPersonaObserver;->onResetPersona(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_d

    .line 4594
    :catch_24
    move-exception v4

    goto :goto_d

    .line 4599
    :cond_26
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4601
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 4602
    .local v0, "actSer":Lcom/android/server/accounts/AccountManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserReset(I)V

    .line 4604
    const/4 v3, 0x0

    .line 4606
    .local v3, "res":I
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3f} :catch_42

    move-result v3

    move v4, v3

    .line 4648
    :goto_41
    return v4

    .line 4644
    :catch_42
    move-exception v1

    .line 4645
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    goto :goto_41
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 5875
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5876
    const/4 v0, 0x0

    .line 5877
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    .line 5878
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5882
    :goto_32
    return-object v0

    .line 5880
    :cond_33
    move-object v0, p1

    goto :goto_32
.end method

.method private updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V
    .registers 15
    .param p1, "pi"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 2597
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateContainerOnlyApks for ContainerId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    if-nez p1, :cond_1e

    .line 2667
    :cond_1d
    :goto_1d
    return-void

    .line 2601
    :cond_1e
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2602
    :try_start_21
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2603
    .local v3, "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_32

    .line 2604
    monitor-exit v10

    goto :goto_1d

    .line 2608
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_2f
    move-exception v9

    monitor-exit v10
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_2f

    throw v9

    .line 2606
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    :cond_32
    const/4 v9, 0x1

    :try_start_33
    iput-boolean v9, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2607
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2608
    monitor-exit v10
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_2f

    .line 2609
    const/4 v6, -0x1

    .line 2613
    .local v6, "updateResult":I
    :try_start_3e
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update handler apk"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const-string v2, "/system/container/KnoxSecureHandler.apk"

    .line 2615
    .local v2, "handlerApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v2}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2616
    if-gez v6, :cond_68

    .line 2617
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_68
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update setup wizard apk"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const-string v8, "/system/container/ContainerAgent2.apk"

    .line 2623
    .local v8, "wizardApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2624
    if-gez v6, :cond_92

    .line 2625
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_92
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update application knox switcher"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const-string v0, "/system/container/KnoxSwitcher.apk"

    .line 2631
    .local v0, "KnoxSwitcherApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v0}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2632
    if-gez v6, :cond_bc

    .line 2633
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_bc
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update application shortcutsms"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const-string v5, "/system/container/ShortcutSms.apk"

    .line 2639
    .local v5, "shortcutsmsApk":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v5}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2640
    if-gez v6, :cond_e6

    .line 2641
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_e6
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "update verifier"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    const-string v7, "/system/container/KnoxPackageVerifier.apk"

    .line 2647
    .local v7, "verifier":Ljava/lang/String;
    iget v9, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v9, v7}, Lcom/android/server/pm/PersonaManagerService;->updateUserApk(ILjava/lang/String;)I

    move-result v6

    .line 2648
    if-gez v6, :cond_110

    .line 2649
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error! (FOTA) Failed to update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_3e .. :try_end_110} :catchall_14a

    .line 2652
    :cond_110
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2653
    :try_start_113
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2654
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_160

    .line 2655
    monitor-exit v10

    goto/16 :goto_1d

    .line 2659
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_122
    move-exception v9

    monitor-exit v10
    :try_end_124
    .catchall {:try_start_113 .. :try_end_124} :catchall_122

    throw v9

    .line 2657
    .end local v0    # "KnoxSwitcherApk":Ljava/lang/String;
    .end local v2    # "handlerApk":Ljava/lang/String;
    .end local v5    # "shortcutsmsApk":Ljava/lang/String;
    .end local v7    # "verifier":Ljava/lang/String;
    .end local v8    # "wizardApk":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    :cond_125
    const/4 v11, 0x0

    :try_start_126
    iput-boolean v11, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2658
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2659
    monitor-exit v10
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_15d

    .line 2660
    iget-boolean v10, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    if-eqz v10, :cond_149

    .line 2661
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    aput v11, v4, v10

    .line 2662
    .local v4, "personaIds":[I
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2664
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    .line 2652
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "personaIds":[I
    :cond_149
    throw v9

    :catchall_14a
    move-exception v9

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2653
    :try_start_14e
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2654
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_125

    .line 2655
    monitor-exit v10

    goto/16 :goto_1d

    .line 2659
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_15d
    move-exception v9

    monitor-exit v10
    :try_end_15f
    .catchall {:try_start_14e .. :try_end_15f} :catchall_15d

    throw v9

    .line 2657
    .restart local v0    # "KnoxSwitcherApk":Ljava/lang/String;
    .restart local v2    # "handlerApk":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "shortcutsmsApk":Ljava/lang/String;
    .restart local v7    # "verifier":Ljava/lang/String;
    .restart local v8    # "wizardApk":Ljava/lang/String;
    :cond_160
    const/4 v9, 0x0

    :try_start_161
    iput-boolean v9, v3, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 2658
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2659
    monitor-exit v10
    :try_end_16b
    .catchall {:try_start_161 .. :try_end_16b} :catchall_122

    .line 2660
    iget-boolean v9, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    if-eqz v9, :cond_1d

    .line 2661
    const/4 v9, 0x1

    new-array v4, v9, [I

    const/4 v9, 0x0

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    aput v10, v4, v9

    .line 2662
    .restart local v4    # "personaIds":[I
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2664
    .restart local v1    # "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    goto/16 :goto_1d
.end method

.method private updateUserApk(ILjava/lang/String;)I
    .registers 15
    .param p1, "personaId"    # I
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 2670
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2671
    .local v2, "apkUri":Landroid/net/Uri;
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserApk: User id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; Apk Path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; Apk Uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const/4 v9, 0x0

    .line 2673
    .local v9, "packageAlreadyInstalled":Z
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v11

    .line 2674
    const/4 v0, -0x1

    :try_start_3c
    iput v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2675
    const/16 v4, 0x82

    .line 2676
    .local v4, "installFlags":I
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageForPersonaWithVerificationAndEncryption(ILandroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 2677
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "updateUserApk: installPackageForPersonaWithVerificationAndEncryption  returns "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_b0

    .line 2679
    :try_start_53
    const-string v0, "PersonaManagerService"

    const-string v1, " calling mPackageInstallObserver  wait "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2681
    const-string v0, "PersonaManagerService"

    const-string v1, "mPackageInstallObserver wait returns"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_95

    .line 2683
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to install package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " package manager result code is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_92} :catch_b3
    .catchall {:try_start_53 .. :try_end_92} :catchall_b0

    .line 2684
    :try_start_92
    monitor-exit v11
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_b0

    move v0, v10

    .line 2692
    :goto_94
    return v0

    .line 2686
    :cond_95
    :try_start_95
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(PMS) Successfully updated apk : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_ad} :catch_b3
    .catchall {:try_start_95 .. :try_end_ad} :catchall_b0

    .line 2687
    const/4 v0, 0x0

    :try_start_ae
    monitor-exit v11

    goto :goto_94

    .line 2694
    .end local v4    # "installFlags":I
    :catchall_b0
    move-exception v0

    monitor-exit v11
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b0

    throw v0

    .line 2689
    .restart local v4    # "installFlags":I
    :catch_b3
    move-exception v8

    .line 2690
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_b4
    const-string v0, "PersonaManagerService"

    const-string v1, "Package installPackageForPersonaWithVerificationAndEncryption  wait error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2692
    monitor-exit v11
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_b0

    move v0, v10

    goto :goto_94
.end method

.method private updateUserIdsLocked()V
    .registers 7

    .prologue
    .line 3996
    const/4 v4, 0x0

    .line 3997
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1b

    .line 3998
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget-boolean v5, v5, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_18

    .line 3999
    add-int/lit8 v4, v4, 0x1

    .line 3997
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4002
    :cond_1b
    new-array v3, v4, [I

    .line 4003
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 4004
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1f
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    .line 4005
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget-boolean v5, v5, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_3e

    .line 4006
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 4004
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 4009
    :cond_41
    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    .line 4010
    return-void
.end method

.method private upgradeIfNecessary()V
    .registers 1

    .prologue
    .line 1026
    return-void
.end method

.method private writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V
    .registers 19
    .param p1, "personaId"    # I
    .param p2, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5954
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 5955
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 5957
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5958
    .local v9, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_88

    .line 5960
    if-eqz p3, :cond_47

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4f

    .line 5961
    :cond_47
    const-string v12, "PersonaManagerService"

    const-string v13, "Empty list passed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void

    .line 5964
    .restart local v4    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v12

    if-nez v12, :cond_88

    .line 5965
    const-string v12, "PersonaManagerService"

    const-string v13, "Error creating app type file."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5c} :catch_5d

    goto :goto_4e

    .line 5991
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :catch_5d
    move-exception v7

    .line 5992
    .local v7, "ioe":Ljava/io/IOException;
    :goto_5e
    const-string v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error writing app type list info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5993
    if-eqz v1, :cond_4e

    .line 5994
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_4e

    .line 5969
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_88
    :try_start_88
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_5d

    .line 5970
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    :try_start_8d
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 5971
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5973
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 5974
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v11, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5975
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5976
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5978
    if-eqz p3, :cond_ef

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ef

    .line 5979
    const/4 v12, 0x0

    const-string v13, "appType"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5980
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 5981
    .local v8, "packages":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5982
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5983
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    .line 5991
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "packages":Ljava/lang/StringBuilder;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_dc
    move-exception v7

    move-object v1, v2

    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_5e

    .line 5985
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "packages":Ljava/lang/StringBuilder;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_df
    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v11, v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5986
    const/4 v12, 0x0

    const-string v13, "appType"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5989
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "packages":Ljava/lang/StringBuilder;
    :cond_ef
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5990
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_f5} :catch_dc

    move-object v1, v2

    .line 5996
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    goto/16 :goto_4e
.end method

.method private writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "info"    # Landroid/content/pm/PersonaInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 789
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 790
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 792
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 797
    :cond_28
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 798
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3d} :catch_41

    .line 801
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_41

    .line 808
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_40
    return-void

    .line 805
    :catch_41
    move-exception v1

    .line 806
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PersonaManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 802
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v4

    goto :goto_40
.end method

.method private writeUserListLocked(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 1178
    const/4 v2, 0x0

    .line 1179
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1229
    :goto_d
    return-void

    .line 1183
    :cond_e
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1185
    .local v4, "mPersonaIdsForUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked AtomicFile PERSONALIST"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "personalist.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .local v5, "personaListFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9a

    .line 1188
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File does not exists, creating it "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :try_start_70
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_9a

    .line 1191
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_9a} :catch_118

    .line 1199
    :cond_9a
    :goto_9a
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1201
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_9f
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1202
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1205
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1206
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1207
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1208
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1210
    const/4 v9, 0x0

    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1211
    const/4 v9, 0x0

    const-string v10, "nextSerialNumber"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1212
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_142

    .line 1215
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 1216
    .local v7, "user":Landroid/content/pm/PersonaInfo;
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1218
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_115} :catch_151

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    .line 1193
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "user":Landroid/content/pm/PersonaInfo;
    .end local v8    # "userListFile":Landroid/util/AtomicFile;
    :catch_118
    move-exception v1

    .line 1195
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1196
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a

    .line 1221
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "i":I
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "userListFile":Landroid/util/AtomicFile;
    :cond_142
    const/4 v9, 0x0

    :try_start_143
    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1224
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14f} :catch_151

    goto/16 :goto_d

    .line 1225
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_151
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1227
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked() Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    .registers 15
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1047
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserLocked called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v1, 0x0

    .line 1050
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1053
    .local v8, "userFile":Landroid/util/AtomicFile;
    :try_start_47
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1054
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1057
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1058
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v7, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1059
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1060
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1062
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v9, 0x0

    const-string v10, "serialNumber"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v9, 0x0

    const-string v10, "flags"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    const/4 v9, 0x0

    const-string v10, "created"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const/4 v9, 0x0

    const-string v10, "lastLoggedIn"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const/4 v9, 0x0

    const-string v10, "lastLoggedOut"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    const/4 v9, 0x0

    const-string v10, "personatype"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-eqz v9, :cond_cf

    .line 1074
    const/4 v9, 0x0

    const-string v10, "icon"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    :cond_cf
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v9, :cond_dc

    .line 1077
    const/4 v9, 0x0

    const-string v10, "partial"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    :cond_dc
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v9, :cond_e9

    .line 1081
    const/4 v9, 0x0

    const-string v10, "removePersona"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    :cond_e9
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_f6

    .line 1085
    const/4 v9, 0x0

    const-string v10, "isUserManaged"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    :cond_f6
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v9, :cond_103

    .line 1089
    const/4 v9, 0x0

    const-string v10, "resetPassword"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    :cond_103
    const/4 v9, 0x0

    const-string v10, "oldState"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    const/4 v9, 0x0

    const-string v10, "personastate"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUserLocked state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v10, 0x0

    const-string/jumbo v11, "superlocked"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v9, :cond_213

    const-string/jumbo v9, "true"

    :goto_141
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1095
    const/4 v10, 0x0

    const-string v11, "fwversion"

    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v9, :cond_217

    const-string v9, ""

    :goto_14d
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    const/4 v10, 0x0

    const-string v11, "fsMounted"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v9, :cond_21b

    const-string/jumbo v9, "true"

    :goto_15a
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const/4 v9, 0x0

    const-string v10, "personahandlername"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    const/4 v9, 0x0

    const-string v10, "personahandlerpackage"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    const/4 v9, 0x0

    const-string v10, "setupapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const/4 v9, 0x0

    const-string v10, "handlerapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    const/4 v9, 0x0

    const-string v10, "adminpackagename"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const/4 v9, 0x0

    const-string v10, "adminuid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const/4 v9, 0x0

    const-string v10, "creatorUid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    const/4 v9, 0x0

    const-string v10, "encryptedId"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const/4 v9, 0x0

    const-string v10, "samsungAccount"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v6

    .line 1107
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_246

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_246

    .line 1108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .local v4, "packages":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1d2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1110
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_1e6} :catch_1e7

    goto :goto_1d2

    .line 1128
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1e7
    move-exception v3

    .line 1129
    .local v3, "ioe":Ljava/lang/Exception;
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error writing user info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1131
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1133
    .end local v3    # "ioe":Ljava/lang/Exception;
    :goto_212
    return-void

    .line 1094
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_213
    :try_start_213
    const-string v9, "false"

    goto/16 :goto_141

    .line 1095
    :cond_217
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    goto/16 :goto_14d

    .line 1096
    :cond_21b
    const-string v9, "false"

    goto/16 :goto_15a

    .line 1113
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "packages":Ljava/lang/StringBuilder;
    .restart local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21f
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUser: Installed pkg list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v9, 0x0

    const-string v10, "installedPkgList"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    :cond_246
    const/4 v9, 0x0

    const-string/jumbo v10, "timaEcrytfsIndex"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const/4 v9, 0x0

    const-string/jumbo v10, "timaPasswordIndex"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_287

    const-string v9, "default"

    :goto_270
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1127
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_212

    .line 1121
    :cond_287
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_289} :catch_1e7

    goto :goto_270
.end method

.method private writeUsersWithPersona()V
    .registers 11

    .prologue
    .line 1138
    const/4 v3, 0x0

    .line 1140
    .local v3, "fos":Ljava/io/FileOutputStream;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeUsersWithPersona() mUserListFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1143
    .local v0, "atomicUserListFile":Landroid/util/AtomicFile;
    :try_start_23
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1144
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1147
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1148
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1149
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1150
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1152
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7d

    .line 1157
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1158
    .local v5, "id":Ljava/lang/Integer;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    const/4 v7, 0x0

    const-string v8, "id"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1163
    .end local v5    # "id":Ljava/lang/Integer;
    :cond_7d
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1166
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_8a} :catch_8b

    .line 1171
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_8a
    return-void

    .line 1167
    :catch_8b
    move-exception v2

    .line 1168
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1169
    const-string v7, "PersonaManagerService"

    const-string/jumbo v8, "writeUsersWithPersona() Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method


# virtual methods
.method public addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 5131
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5148
    :cond_10
    :goto_10
    return-void

    .line 5134
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5137
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5138
    :try_start_1c
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5139
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_27

    .line 5140
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5142
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding pkg to list for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 5144
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5146
    :cond_52
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5147
    monitor-exit v2

    goto :goto_10

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_1c .. :try_end_59} :catchall_57

    throw v1
.end method

.method public addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5113
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5127
    :cond_10
    :goto_10
    return-void

    .line 5116
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5119
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5120
    :try_start_1c
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5121
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_27

    .line 5122
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5124
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5125
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5126
    monitor-exit v2

    goto :goto_10

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4456
    const-string v1, "addLockOnImage"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4457
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 4459
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v1

    .line 4464
    :goto_13
    return-object v1

    .line 4460
    :catch_14
    move-exception v0

    .line 4461
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling Exception - PersonaPolicyManager addLockOnImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5510
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageToInstallWhiteList add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    sget-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5512
    return-void
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .registers 9
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4929
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPersona : persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4932
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_27

    .line 4933
    const-string v3, "PersonaManagerService"

    const-string v4, "Persona Id don\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_26
    return v2

    .line 4937
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_27
    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v3, :cond_60

    .line 4938
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPersona current state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_45} :catch_46

    goto :goto_26

    .line 4942
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_46
    move-exception v0

    .line 4943
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute adminLockPersona. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 4941
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_60
    const/16 v3, 0x8

    :try_start_62
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_46

    .line 4946
    const/4 v2, 0x1

    goto :goto_26
.end method

.method public adminUnLockPersona(I)Z
    .registers 11
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4951
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminUnLockPersona : persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    const/4 v4, 0x0

    .line 4955
    .local v4, "retVal":Z
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 4956
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_28

    .line 4957
    const-string v6, "PersonaManagerService"

    const-string v7, "PersonaId don\'t exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :goto_27
    return v5

    .line 4960
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_28
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adminUnLockPersona state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    iget v5, v2, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4c

    .line 4962
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v4

    .line 4964
    :cond_4c
    if-eqz v4, :cond_61

    .line 4966
    const/4 v5, 0x1

    new-array v3, v5, [I

    const/4 v5, 0x0

    aput p1, v3, v5

    .line 4967
    .local v3, "personaIds":[I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4969
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->softStartPersonas([I)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_61} :catch_63

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaIds":[I
    :cond_61
    :goto_61
    move v5, v4

    .line 4975
    goto :goto_27

    .line 4971
    :catch_63
    move-exception v1

    .line 4972
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 4973
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to execute adminUnLockPersona. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method public clearAppListForPersona(Ljava/lang/String;I)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5776
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAppListForPersona for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " persona id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5778
    const/4 v0, 0x0

    :try_start_26
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5779
    monitor-exit v1

    .line 5780
    return-void

    .line 5779
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .registers 44
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;

    .prologue
    .line 1822
    const-string v6, "createPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1824
    const/4 v15, -0x1

    .local v15, "createResult":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1827
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PersonaManagerService;->checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v15

    .line 1828
    if-gez v15, :cond_1b

    move/from16 v19, v15

    .line 2126
    :goto_1a
    return v19

    .line 1832
    :cond_1b
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " createPersona parameters are  "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n admin "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n handlerApkUri "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "\n setupWizardApkUri "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1839
    .local v10, "creatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1841
    .local v17, "ident":J
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " Uid of creator is "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1848
    .local v9, "creatorUserId":I
    if-eqz v9, :cond_93

    .line 1849
    const-string v6, "PersonaManagerService"

    const-string v7, "\n Only Admin User can create Persona.\n "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/16 v19, -0x1

    goto :goto_1a

    .line 1854
    :cond_93
    const-string v13, ""

    .line 1855
    .local v13, "adminPackageName":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "creating persona with NAME:"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_31a

    .line 1860
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_317

    .line 1861
    :try_start_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_314

    .line 1863
    :try_start_c6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isPersonaLimitReachedLocked()Z

    move-result v6

    if-eqz v6, :cond_d6

    const/16 v19, -0x3f4

    monitor-exit v32
    :try_end_cf
    .catchall {:try_start_c6 .. :try_end_cf} :catchall_311

    :try_start_cf
    monitor-exit v31
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_314

    :try_start_d0
    monitor-exit v30
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 1864
    :cond_d6
    :try_start_d6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getNextAvailableIdLocked()I

    move-result v5

    .line 1865
    .local v5, "personaId":I
    const/4 v8, 0x0

    .line 1866
    .local v8, "personaflags":I
    const-wide/16 v6, 0x2

    and-long v6, v6, p3

    const-wide/16 v33, 0x2

    cmp-long v6, v6, v33

    if-nez v6, :cond_e7

    .line 1867
    or-int/lit8 v8, v8, 0x20

    .line 1868
    :cond_e7
    const-wide/16 v6, 0x4

    and-long v6, v6, p3

    const-wide/16 v33, 0x4

    cmp-long v6, v6, v33

    if-nez v6, :cond_f3

    .line 1869
    or-int/lit8 v8, v8, 0x40

    .line 1871
    :cond_f3
    const-wide/16 v6, 0x100

    and-long v6, v6, p3

    const-wide/16 v33, 0x100

    cmp-long v6, v6, v33

    if-nez v6, :cond_ff

    .line 1872
    or-int/lit16 v8, v8, 0x100

    .line 1877
    :cond_ff
    new-instance v4, Landroid/content/pm/PersonaInfo;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1878
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1879
    .local v28, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iput v6, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1880
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 1882
    const-wide/16 v6, 0x80

    and-long v6, v6, p3

    const-wide/16 v33, 0x80

    cmp-long v6, v6, v33

    if-nez v6, :cond_30c

    .line 1883
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1887
    :goto_13f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1888
    .local v21, "now":J
    const-wide v6, 0xdc46c32800L

    cmp-long v6, v21, v6

    if-lez v6, :cond_31f

    .end local v21    # "now":J
    :goto_14c
    move-wide/from16 v0, v21

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1889
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1890
    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1893
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v33, 0x40

    cmp-long v6, v6, v33

    if-eqz v6, :cond_19d

    .line 1895
    const-string v6, "PersonaManagerService"

    const-string v7, " creating persona FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1897
    if-eqz v13, :cond_19d

    .line 1898
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "creating persona adminPackageName is "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-virtual {v4, v13}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1902
    :cond_19d
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1903
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "personaType: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "persona Handler APK: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "persona Setup Wizard: "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    if-eqz p5, :cond_323

    .line 1907
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 1911
    :goto_209
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 1914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32a

    .line 1915
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "found previous persona(s) for user "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27e

    .line 1917
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    :cond_27e
    :goto_27e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_297

    .line 1930
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_297
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->setEcryptAndPasswordIndex(Landroid/content/pm/PersonaInfo;)V

    .line 1934
    const-string v6, "PersonaManagerService"

    const-string v7, "Writing to xml"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 1936
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 1937
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 1938
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    .line 1940
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z
    :try_end_2b6
    .catchall {:try_start_d6 .. :try_end_2b6} :catchall_311

    move-result v6

    if-eqz v6, :cond_365

    .line 1942
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v33

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v6, v5, v0, v7, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->createPartition(ILjava/lang/String;ZI)Z

    move-result v27

    .line 1943
    .local v27, "status":Z
    if-eqz v27, :cond_3f0

    .line 1944
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v33

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v5, v7, v0, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v20

    .line 1945
    .local v20, "mountStatus":Z
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CreatePersona : mountStatus "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_300} :catch_401
    .catchall {:try_start_2b9 .. :try_end_300} :catchall_311

    .line 1946
    if-nez v20, :cond_362

    .line 1947
    const/16 v19, -0x3f3

    :try_start_304
    monitor-exit v32
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_311

    :try_start_305
    monitor-exit v31
    :try_end_306
    .catchall {:try_start_305 .. :try_end_306} :catchall_314

    :try_start_306
    monitor-exit v30
    :try_end_307
    .catchall {:try_start_306 .. :try_end_307} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 1885
    .end local v20    # "mountStatus":Z
    .end local v27    # "status":Z
    :cond_30c
    const/4 v6, 0x0

    :try_start_30d
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    goto/16 :goto_13f

    .line 1966
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personaId":I
    .end local v8    # "personaflags":I
    .end local v28    # "userPath":Ljava/io/File;
    :catchall_311
    move-exception v6

    monitor-exit v32
    :try_end_313
    .catchall {:try_start_30d .. :try_end_313} :catchall_311

    :try_start_313
    throw v6

    .line 1967
    :catchall_314
    move-exception v6

    monitor-exit v31
    :try_end_316
    .catchall {:try_start_313 .. :try_end_316} :catchall_314

    :try_start_316
    throw v6

    .line 2120
    :catchall_317
    move-exception v6

    monitor-exit v30
    :try_end_319
    .catchall {:try_start_316 .. :try_end_319} :catchall_317

    :try_start_319
    throw v6
    :try_end_31a
    .catchall {:try_start_319 .. :try_end_31a} :catchall_31a

    .line 2122
    :catchall_31a
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1888
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "personaId":I
    .restart local v8    # "personaflags":I
    .restart local v21    # "now":J
    .restart local v28    # "userPath":Ljava/io/File;
    :cond_31f
    const-wide/16 v21, 0x0

    goto/16 :goto_14c

    .line 1909
    .end local v21    # "now":J
    :cond_323
    :try_start_323
    const-string v6, "default"

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    goto/16 :goto_209

    .line 1923
    :cond_32a
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "creating new persona list for user "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v23, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_360
    .catchall {:try_start_323 .. :try_end_360} :catchall_311

    goto/16 :goto_27e

    .line 1949
    .end local v23    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "mountStatus":Z
    .restart local v27    # "status":Z
    :cond_362
    const/4 v6, 0x1

    :try_start_363
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isFsMounted:Z
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_365} :catch_401
    .catchall {:try_start_363 .. :try_end_365} :catchall_311

    .line 1963
    .end local v20    # "mountStatus":Z
    .end local v27    # "status":Z
    :cond_365
    :try_start_365
    sget-object v6, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v6}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->installDefaultApplications(ILjava/util/List;)Z

    .line 1965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->installApplications(ILjava/util/List;)Z

    .line 1966
    monitor-exit v32
    :try_end_385
    .catchall {:try_start_365 .. :try_end_385} :catchall_311

    .line 1967
    :try_start_385
    monitor-exit v31
    :try_end_386
    .catchall {:try_start_385 .. :try_end_386} :catchall_314

    .line 1968
    :try_start_386
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v6

    if-eqz v6, :cond_399

    .line 1969
    const-string v6, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-static {v5, v6, v7, v0}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 1973
    :cond_399
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1974
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 1975
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3a4
    .catchall {:try_start_386 .. :try_end_3a4} :catchall_317

    .line 1976
    :try_start_3a4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1977
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "writeUserLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 1979
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "updateUserIdsLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 1981
    monitor-exit v7
    :try_end_3ce
    .catchall {:try_start_3a4 .. :try_end_3ce} :catchall_428

    .line 1984
    const/16 v19, -0x1

    .line 1987
    .local v19, "installationResult":I
    :try_start_3d0
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->installAdminApk(IJLjava/lang/String;)I

    move-result v19

    .line 1989
    if-gez v19, :cond_42b

    .line 1991
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1992
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Admin Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    monitor-exit v30
    :try_end_3eb
    .catchall {:try_start_3d0 .. :try_end_3eb} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 1952
    .end local v19    # "installationResult":I
    .restart local v27    # "status":Z
    :cond_3f0
    :try_start_3f0
    const-string v6, "PersonaManagerService"

    const-string v7, "Creation failed due to createPartition error response"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f7
    .catch Ljava/lang/Exception; {:try_start_3f0 .. :try_end_3f7} :catch_401
    .catchall {:try_start_3f0 .. :try_end_3f7} :catchall_311

    .line 1953
    const/16 v19, -0x3f3

    :try_start_3f9
    monitor-exit v32
    :try_end_3fa
    .catchall {:try_start_3f9 .. :try_end_3fa} :catchall_311

    :try_start_3fa
    monitor-exit v31
    :try_end_3fb
    .catchall {:try_start_3fa .. :try_end_3fb} :catchall_314

    :try_start_3fb
    monitor-exit v30
    :try_end_3fc
    .catchall {:try_start_3fb .. :try_end_3fc} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 1956
    .end local v27    # "status":Z
    :catch_401
    move-exception v16

    .line 1957
    .local v16, "e":Ljava/lang/Exception;
    :try_start_402
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failed to mount file system. "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v19, -0x3f3

    monitor-exit v32
    :try_end_421
    .catchall {:try_start_402 .. :try_end_421} :catchall_311

    :try_start_421
    monitor-exit v31
    :try_end_422
    .catchall {:try_start_421 .. :try_end_422} :catchall_314

    :try_start_422
    monitor-exit v30
    :try_end_423
    .catchall {:try_start_422 .. :try_end_423} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 1981
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_428
    move-exception v6

    :try_start_429
    monitor-exit v7
    :try_end_42a
    .catchall {:try_start_429 .. :try_end_42a} :catchall_428

    :try_start_42a
    throw v6

    .line 1996
    .restart local v19    # "installationResult":I
    :cond_42b
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "--- Installing Handler Apk --"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/16 v19, -0x1

    .line 1999
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x67

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v19

    .line 2001
    if-gez v19, :cond_469

    .line 2003
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2004
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Handler Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    monitor-exit v30
    :try_end_464
    .catchall {:try_start_42a .. :try_end_464} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 2010
    :cond_469
    :try_start_469
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_495

    .line 2012
    const/16 v19, -0x1

    .line 2013
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x68

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v19

    .line 2015
    if-gez v19, :cond_495

    .line 2016
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing SetupWizard Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2018
    monitor-exit v30
    :try_end_490
    .catchall {:try_start_469 .. :try_end_490} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 2022
    :cond_495
    :try_start_495
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v6, :cond_499

    .line 2029
    :cond_499
    const-string v6, "PersonaManagerService"

    const-string v7, "install application knox switcher"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    new-instance v11, Ljava/io/File;

    const-string v6, "/system/container/KnoxSwitcher.apk"

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v11, "KnoxSwitcherApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2034
    const-string v6, "PersonaManagerService"

    const-string v7, "install application shortcutsms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    new-instance v26, Ljava/io/File;

    const-string v6, "/system/container/ShortcutSms.apk"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2036
    .local v26, "shortcutsmsApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2038
    const-string v6, "PersonaManagerService"

    const-string v7, "install verifier"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v29, Ljava/io/File;

    const-string v6, "/system/container/KnoxPackageVerifier.apk"

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v29, "verifier":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 2042
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2044
    if-eqz v4, :cond_50a

    .line 2045
    new-instance v12, Landroid/content/Intent;

    const-string v6, "android.intent.action.USER_ADDED"

    invoke-direct {v12, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    .local v12, "addedIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2047
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v31, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v31

    invoke-virtual {v6, v12, v7, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2050
    .end local v12    # "addedIntent":Landroid/content/Intent;
    :cond_50a
    const-string v6, "PersonaManagerService"

    const-string v7, "activateAdmin called "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/16 v25, -0x1

    .line 2052
    .local v25, "result":I
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v31, 0x40

    cmp-long v6, v6, v31

    if-eqz v6, :cond_60a

    .line 2053
    const-string v6, "PersonaManagerService"

    const-string v7, "calling activate Admin as FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I

    move-result v25

    .line 2056
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "activateAdmin returns "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    if-gez v25, :cond_5a6

    .line 2059
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_551
    .catchall {:try_start_495 .. :try_end_551} :catchall_317

    .line 2060
    const/4 v6, 0x1

    :try_start_552
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2061
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2062
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "writeUserLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2064
    const-string v6, "PersonaManagerService"

    const-string/jumbo v31, "updateUserIdsLocked called "

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2066
    const-string v6, "PersonaManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "activateAdmin fails "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string v6, "PersonaManagerService"

    const-string v31, "Error Create Persona activating Admin fails"

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/16 v19, -0x3f1

    monitor-exit v7
    :try_end_59d
    .catchall {:try_start_552 .. :try_end_59d} :catchall_5a3

    .end local v19    # "installationResult":I
    :try_start_59d
    monitor-exit v30
    :try_end_59e
    .catchall {:try_start_59d .. :try_end_59e} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 2069
    :catchall_5a3
    move-exception v6

    :try_start_5a4
    monitor-exit v7
    :try_end_5a5
    .catchall {:try_start_5a4 .. :try_end_5a5} :catchall_5a3

    :try_start_5a5
    throw v6

    .line 2072
    .restart local v19    # "installationResult":I
    :cond_5a6
    const/4 v14, -0x1

    .line 2073
    .local v14, "adminUid":I
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(IJLjava/lang/String;)I

    move-result v14

    .line 2075
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 2077
    const-wide/16 v6, 0x8

    and-long v6, v6, p3

    const-wide/16 v31, 0x8

    cmp-long v6, v6, v31

    if-nez v6, :cond_66f

    .line 2081
    if-gez v14, :cond_5d3

    .line 2083
    const-string v6, "PersonaManagerService"

    const-string v7, "Admin Uid not proper"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    const/16 v19, -0x3f1

    monitor-exit v30
    :try_end_5ce
    .catchall {:try_start_5a5 .. :try_end_5ce} :catchall_317

    .line 2122
    .end local v19    # "installationResult":I
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1a

    .line 2088
    .restart local v19    # "installationResult":I
    :cond_5d3
    :try_start_5d3
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " calling  setCreatorUid "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setCreatorUid(I)V

    .line 2091
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " after setCreatorUid "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    .end local v14    # "adminUid":I
    :cond_60a
    :goto_60a
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2104
    const/4 v6, 0x1

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2105
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_615
    .catchall {:try_start_5d3 .. :try_end_615} :catchall_317

    .line 2106
    :try_start_615
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2107
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2108
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2109
    monitor-exit v7
    :try_end_62b
    .catchall {:try_start_615 .. :try_end_62b} :catchall_677

    .line 2113
    :try_start_62b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaStateManagerService;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_63b
    .catch Landroid/os/RemoteException; {:try_start_62b .. :try_end_63b} :catch_67a
    .catchall {:try_start_62b .. :try_end_63b} :catchall_317

    .line 2120
    :goto_63b
    :try_start_63b
    monitor-exit v30
    :try_end_63c
    .catchall {:try_start_63b .. :try_end_63c} :catchall_317

    .line 2122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " returning from createPersona writeUserLocked "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    goto/16 :goto_1a

    .line 2093
    .restart local v14    # "adminUid":I
    :cond_66f
    :try_start_66f
    const-string v6, "PersonaManagerService"

    const-string v7, " Not transferring ownership as FLAG_CREATOR_SELF_DESTROY is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_676
    .catchall {:try_start_66f .. :try_end_676} :catchall_317

    goto :goto_60a

    .line 2109
    .end local v14    # "adminUid":I
    :catchall_677
    move-exception v6

    :try_start_678
    monitor-exit v7
    :try_end_679
    .catchall {:try_start_678 .. :try_end_679} :catchall_677

    :try_start_679
    throw v6

    .line 2114
    :catch_67a
    move-exception v24

    .line 2115
    .local v24, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    const-string v7, "Unable to postEvent"

    move-object/from16 v0, v24

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_684
    .catchall {:try_start_679 .. :try_end_684} :catchall_317

    goto :goto_63b
.end method

.method public disablePersonaKeyGuard(I)Z
    .registers 13
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5643
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5645
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_9

    .line 5676
    :cond_8
    :goto_8
    return v6

    .line 5649
    :cond_9
    iget-boolean v8, v2, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v8, v7, :cond_16

    .line 5650
    const-string v6, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard superLocked."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5651
    goto :goto_8

    .line 5653
    :cond_16
    const/4 v3, 0x0

    .line 5654
    .local v3, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v8, "persona_state"

    invoke-static {p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5655
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_27

    .line 5656
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v3

    .line 5659
    :cond_27
    if-eqz v3, :cond_69

    .line 5660
    :try_start_29
    new-instance v8, Landroid/content/pm/PersonaEvent;

    const/16 v9, 0xe

    invoke-direct {v8, v9}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v3, v8}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v5

    .line 5661
    .local v5, "state":I
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disablePersonaKeyGuard() state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    const/4 v8, -0x1

    if-eq v8, v5, :cond_8

    .line 5663
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5664
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 5665
    const/4 v8, 0x1

    iput v8, v1, Landroid/os/Message;->arg2:I

    .line 5666
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5667
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v6, v7

    .line 5668
    goto :goto_8

    .line 5671
    .end local v1    # "msg":Landroid/os/Message;
    .end local v5    # "state":I
    :cond_69
    const-string v7, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_70} :catch_71

    goto :goto_8

    .line 5673
    :catch_71
    move-exception v4

    .line 5674
    .local v4, "re":Landroid/os/RemoteException;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public enablePersonaKeyGuard(I)Z
    .registers 12
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5682
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5684
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_9

    .line 5713
    :cond_8
    :goto_8
    return v5

    .line 5688
    :cond_9
    iget-boolean v7, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v7, v6, :cond_1b

    .line 5689
    const-string v5, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard superLocked."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    iget v5, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V

    move v5, v6

    .line 5691
    goto :goto_8

    .line 5694
    :cond_1b
    const/4 v2, 0x0

    .line 5695
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v7, "persona_state"

    invoke-static {p1, v7}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5696
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2c

    .line 5697
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 5700
    :cond_2c
    if-eqz v2, :cond_5c

    .line 5701
    :try_start_2e
    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v7}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v4

    .line 5702
    .local v4, "state":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enablePersonaKeyGuard() state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    const/4 v7, -0x1

    if-eq v7, v4, :cond_8

    .line 5704
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v5, v6

    .line 5705
    goto :goto_8

    .line 5708
    .end local v4    # "state":I
    :cond_5c
    const-string v6, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_63} :catch_64

    goto :goto_8

    .line 5710
    :catch_64
    move-exception v3

    .line 5711
    .local v3, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public exists(I)Z
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 676
    const-string v0, "exists"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 677
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    if-eqz v0, :cond_14

    .line 679
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    .line 681
    :goto_13
    return v0

    .line 680
    :cond_14
    monitor-exit v1

    .line 681
    const/4 v0, 0x0

    goto :goto_13

    .line 680
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method finishRemoveUser(I)V
    .registers 27
    .param p1, "userHandle"    # I

    .prologue
    .line 3526
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishRemoveUser is called "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 3533
    .local v17, "ident":J
    :try_start_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v19

    .line 3535
    .local v19, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v19, :cond_a3

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 3536
    const-string v4, "PersonaManagerService"

    const-string/jumbo v6, "unmounting and removing partitions for persona."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_9e

    .line 3538
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    .line 3539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v6

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/sec/knox/container/util/KnoxFileHandler;->removePartition(IZ)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_84
    .catchall {:try_start_32 .. :try_end_48} :catchall_9e

    .line 3547
    :goto_48
    :try_start_48
    new-instance v15, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3548
    .local v15, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v22

    .line 3549
    .local v22, "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v24

    .line 3550
    .local v24, "pkgNames":[Ljava/lang/String;
    if-eqz v24, :cond_ab

    .line 3551
    move-object/from16 v13, v24

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_6e
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_b5

    aget-object v23, v13, v16

    .line 3552
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3551
    add-int/lit8 v16, v16, 0x1

    goto :goto_6e

    .line 3540
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "ownerUid":I
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :catch_84
    move-exception v14

    .line 3541
    .local v14, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmount file system. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_48 .. :try_end_9d} :catchall_9e

    goto :goto_48

    .line 3588
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_9e
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3544
    .restart local v19    # "info":Landroid/content/pm/PersonaInfo;
    :cond_a3
    :try_start_a3
    const-string v4, "PersonaManagerService"

    const-string v6, "Not a secure file system..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 3555
    .restart local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v22    # "ownerUid":I
    .restart local v24    # "pkgNames":[Ljava/lang/String;
    :cond_ab
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3557
    :cond_b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3558
    .local v21, "msg":Landroid/os/Message;
    move/from16 v0, p1

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3560
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3561
    .local v5, "addedIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/PersonaManagerService$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_f4
    .catchall {:try_start_a3 .. :try_end_f4} :catchall_9e

    .line 3588
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3590
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 2167
    const-string v1, "getAdminUidForPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2168
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 2170
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_10

    .line 2172
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v1

    .line 2176
    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5170
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5180
    :cond_9
    :goto_9
    return-object v0

    .line 5173
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5176
    const/4 v0, 0x0

    .line 5177
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5178
    :try_start_16
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5179
    monitor-exit v2

    goto :goto_9

    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getCurrentPersonaForUser(I)I
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 4207
    const-string v0, "getCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4208
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4210
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4211
    .end local p1    # "userId":I
    :cond_39
    return p1
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5784
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisabledHomeLaunchers for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; clearList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5786
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_39

    if-eqz p2, :cond_39

    .line 5787
    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 5789
    :cond_39
    return-object v0
.end method

.method public getHandlerComponentName(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1507
    const-string v4, "getHandlerComponentName"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1509
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 1510
    .local v3, "pi":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_11

    .line 1533
    :cond_10
    :goto_10
    return-object v0

    .line 1513
    :cond_11
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, "handlerProxyServiceName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_34

    .line 1517
    :cond_21
    invoke-direct {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1519
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1520
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1522
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1526
    :cond_34
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_10

    .line 1531
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_10
.end method

.method public getNormalizedState(I)I
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 4284
    const-string v4, "getNormalizedState"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4285
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    .line 4286
    .local v1, "personaState":I
    const/4 v0, -0x1

    .line 4288
    .local v0, "normalizedState":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    .line 4290
    const-string v4, "persona_state_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 4293
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_1c

    .line 4294
    :try_start_17
    invoke-interface {v2, v1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I

    move-result v0

    .line 4305
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_1b
    :goto_1b
    return v0

    .line 4296
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_1c
    const-string v4, "PersonaManagerService"

    const-string v5, "getNormalizedState() personaStateManagerService is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_23} :catch_25

    .line 4297
    move v0, v1

    goto :goto_1b

    .line 4299
    :catch_25
    move-exception v3

    .line 4300
    .local v3, "re":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .registers 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5536
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagesFromInstallWhiteList for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5537
    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5538
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5541
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2a
    return-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    goto :goto_2a
.end method

.method public getParentId(I)I
    .registers 6
    .param p1, "parentId"    # I

    .prologue
    .line 4223
    const-string v1, "getParentId"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4224
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentId() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    const-string v1, "read users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4230
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4231
    .local v0, "myInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_32

    .line 4232
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 4236
    .end local v0    # "myInfo":Landroid/content/pm/PersonaInfo;
    .end local p1    # "parentId":I
    :cond_32
    return p1
.end method

.method public getParentUserForCurrentPersona()I
    .registers 3

    .prologue
    .line 546
    const-string v1, "getParentUserForCurrentPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 547
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 548
    .local v0, "currentPersona":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 550
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    .line 554
    .end local v0    # "currentPersona":I
    :cond_1d
    return v0
.end method

.method public getParentUserForPersona(I)I
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 558
    const-string v0, "getParentUserForPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 566
    .end local p1    # "personaId":I
    :cond_19
    return p1
.end method

.method public getPasswordHint()Ljava/lang/String;
    .registers 9

    .prologue
    .line 5886
    const-string v5, "PersonaManagerService"

    const-string v6, "getPasswordHint"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5888
    const-string v0, ""

    .line 5889
    .local v0, "hint":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5890
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5891
    .local v3, "token":J
    const/4 v1, 0x0

    .line 5892
    .local v1, "password":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v5, :cond_7a

    .line 5893
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima20(I)Ljava/lang/String;

    move-result-object v1

    .line 5896
    :goto_1e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5897
    if-eqz v1, :cond_57

    .line 5898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5900
    :cond_57
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPasswordHint : password -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and personaid -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5902
    return-object v0

    .line 5895
    :cond_7a
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e
.end method

.method public getPersonaBackgroundTime(I)J
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 4121
    const-string v0, "getPersonaBackgroundTime"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4123
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    const-wide/16 v0, 0x0

    :goto_13
    return-wide v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_13
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 4190
    const-string v2, "getPersonaIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4191
    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4192
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4193
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4194
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_20

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_3a

    .line 4195
    :cond_20
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersonaIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    monitor-exit v2

    .line 4201
    :goto_39
    return-object v1

    .line 4198
    :cond_3a
    iget-object v3, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 4199
    monitor-exit v2

    goto :goto_39

    .line 4202
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw v1

    .line 4201
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_43
    :try_start_43
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    goto :goto_39
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 4704
    const-string v1, "getPersonaIdentification"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4705
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4706
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_e

    .line 4707
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 4711
    :goto_d
    return-object v1

    .line 4710
    :cond_e
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get persona identification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getPersonaIds()[I
    .registers 3

    .prologue
    .line 817
    const-string v0, "getPersonaIds"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 819
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    monitor-exit v1

    return-object v0

    .line 820
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getPersonaIdsLPr()[I
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    return-object v0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 599
    const-string v0, "getPersonaInfo"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 600
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 603
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 654
    const-string v1, "getPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 656
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getPersonaSamsungAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-eqz v0, :cond_2c

    .line 658
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v1

    .line 660
    :goto_2b
    return-object v1

    :cond_2c
    const-string v1, ""

    goto :goto_2b
.end method

.method public getPersonaState(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 4311
    const-string v1, "getPersonaState"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4312
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4313
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_14

    .line 4314
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    const/4 v1, -0x1

    .line 4318
    :goto_13
    return v1

    .line 4317
    :cond_14
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is not null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    goto :goto_13
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 632
    const-string v1, "getPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 635
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_10

    .line 637
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v1

    .line 639
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "default"

    goto :goto_f
.end method

.method public getPersonas(Z)Ljava/util/List;
    .registers 8
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    const-string v3, "getPersonas"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 507
    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 509
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3d

    .line 511
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 512
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_2a

    .line 510
    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 515
    :cond_2a
    if-eqz p1, :cond_36

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 517
    :cond_36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 521
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v3

    .line 520
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_3d
    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    return-object v1
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .registers 10
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4150
    const-string v3, "getPersonasForCreator"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4153
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4154
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4155
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_73

    .line 4156
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 4157
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_25

    .line 4155
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4160
    :cond_25
    if-eqz p2, :cond_31

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_31
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v3

    if-ne v3, p1, :cond_58

    .line 4161
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 4168
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_55

    throw v3

    .line 4164
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .restart local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_58
    :try_start_58
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Excluding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 4167
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_73
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_58 .. :try_end_74} :catchall_55

    return-object v1
.end method

.method public getPersonasForUser(IZ)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    const-string v4, "getPersonasForUser"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 571
    const-string v4, "query user"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 572
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 574
    :try_start_d
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 575
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 576
    .local v1, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found personas "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_d1

    .line 579
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting personaInfo for ID  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 581
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v4, :cond_a2

    .line 582
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persona is partially created "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_9f
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 585
    :cond_a2
    if-eqz p2, :cond_ae

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 586
    :cond_ae
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding persona in result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 592
    .end local v0    # "i":I
    .end local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :catchall_ce
    move-exception v4

    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_d .. :try_end_d0} :catchall_ce

    throw v4

    .line 590
    .restart local v0    # "i":I
    .restart local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_d1
    :try_start_d1
    monitor-exit v5

    .line 594
    .end local v0    # "i":I
    .end local v1    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :goto_d2
    return-object v3

    .line 592
    :cond_d3
    monitor-exit v5
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_ce

    .line 593
    const-string v4, "PersonaManagerService"

    const-string v5, "returning null in  getPersonasForUser"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v3, 0x0

    goto :goto_d2
.end method

.method public getPhoneCaller()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4248
    const-string v2, "getPhoneCaller"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4249
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4250
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4251
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->setPhoneCaller(I)V

    .line 4255
    :goto_19
    return v1

    .line 4254
    :cond_1a
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneCaller as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    goto :goto_19
.end method

.method public getScreenOffTime(I)J
    .registers 12
    .param p1, "personaId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 4082
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getTimeToLock(I)J

    move-result-wide v0

    .line 4084
    .local v0, "timeout":J
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " personaid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_76

    cmp-long v4, v0, v8

    if-lez v4, :cond_76

    .line 4087
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4094
    :cond_56
    :goto_56
    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 4095
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked final: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 4096
    .end local v0    # "timeout":J
    .local v2, "timeout":J
    :goto_75
    return-wide v2

    .line 4088
    .end local v2    # "timeout":J
    .restart local v0    # "timeout":J
    :cond_76
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 4089
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    goto :goto_56

    .line 4090
    :cond_81
    cmp-long v4, v0, v8

    if-gtz v4, :cond_56

    move-wide v2, v0

    .line 4091
    .end local v0    # "timeout":J
    .restart local v2    # "timeout":J
    goto :goto_75
.end method

.method public getSetupWizardPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 1538
    const-string v1, "getSetupWizardPath"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1540
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_10

    .line 1541
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1543
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getShortcutMode(I)Z
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .registers 9
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const-string v3, "getUserManagedPersonas"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 526
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 528
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 530
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 531
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_3f

    .line 532
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona is partially created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 535
    :cond_3f
    if-eqz p1, :cond_4b

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3c

    :cond_4b
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v3, :cond_3c

    .line 536
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding persona in result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 541
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_6d
    move-exception v3

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_8 .. :try_end_6f} :catchall_6d

    throw v3

    .line 540
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_70
    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6d

    return-object v1
.end method

.method public handleHomeShow()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3465
    const-string v2, "handleHomeShow"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3466
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3467
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3468
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 3471
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z
    .registers 11
    .param p1, "info"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 4979
    if-nez p1, :cond_b

    .line 4980
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaId don\'t exist"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    const/4 v3, 0x0

    .line 5009
    :cond_a
    :goto_a
    return v3

    .line 4983
    :cond_b
    const/4 v3, 0x0

    .line 4984
    .local v3, "retVal":Z
    const/4 v2, 0x2

    .line 4985
    .local v2, "newState":I
    iget v4, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8a

    iget v4, p1, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8a

    .line 4986
    const/16 v2, 0x8

    .line 4990
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 4991
    .local v0, "doMount":Z
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->isSuperLockState(I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4992
    const/4 v0, 0x0

    .line 4994
    :cond_23
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_5b

    if-eqz v0, :cond_5b

    .line 4995
    const-string v4, "PersonaManagerService"

    const-string v5, "mounting file system: super --> unlock persona called."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    iget v5, p1, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_90

    move-result v3

    .line 5002
    :goto_43
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount status - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    :cond_5b
    if-nez v3, :cond_5f

    if-nez v0, :cond_a

    .line 5006
    :cond_5f
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "super unlock: new State for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    iget v4, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    goto :goto_a

    .line 4987
    .end local v0    # "doMount":Z
    :cond_8a
    iget-boolean v4, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v4, :cond_1b

    .line 4988
    const/4 v2, 0x5

    goto :goto_1b

    .line 4998
    .restart local v0    # "doMount":Z
    :catch_90
    move-exception v1

    .line 4999
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5000
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to do mount. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method handleWakeLockChange(ZIII)V
    .registers 9
    .param p1, "type"    # Z
    .param p2, "flag"    # I
    .param p3, "uid"    # I
    .param p4, "userid"    # I

    .prologue
    .line 2811
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 2813
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    const v1, 0xffff

    and-int/2addr v1, p2

    sparse-switch v1, :sswitch_data_a2

    .line 2838
    :cond_f
    :goto_f
    :sswitch_f
    return-void

    .line 2820
    :sswitch_10
    if-eqz v0, :cond_f

    .line 2821
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5b

    .line 2822
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2823
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in acquire : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-lez v1, :cond_f

    .line 2825
    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    goto :goto_f

    .line 2828
    :cond_5b
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2829
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-nez v1, :cond_f

    .line 2831
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto/16 :goto_f

    .line 2813
    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_10
        0xa -> :sswitch_10
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
    .end sparse-switch
.end method

.method public installApplications(ILjava/util/List;)Z
    .registers 9
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1663
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "installApplications"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1664
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1665
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3a

    .line 1666
    :try_start_b
    const-string v1, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " in PMS, calling PkgMgr default apps  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1668
    .local v0, "userPath":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->installApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1679
    const/4 v1, 0x1

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_37

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3a

    return v1

    .line 1680
    .end local v0    # "userPath":Ljava/io/File;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v1

    .line 1681
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method isFromApprovedInstaller(I)Z
    .registers 11
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 4743
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4744
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 4746
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 4747
    .local v1, "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_7b

    .line 4748
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4750
    .local v3, "installer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 4752
    .local v0, "allowedPackageUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install package for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    const/4 v6, -0x1

    if-eq v0, v6, :cond_15

    if-ne p1, v0, :cond_15

    .line 4756
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowing app installation from installer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    .end local v0    # "allowedPackageUid":I
    .end local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installer":Ljava/lang/String;
    :cond_7a
    :goto_7a
    return v5

    .line 4762
    .restart local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    const-string v5, "PersonaManagerService"

    const-string v6, "rejecting app installation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    const/4 v5, 0x0

    goto :goto_7a
.end method

.method isFromApprovedInstaller(II)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 4777
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4778
    .local v2, "callingUserId":I
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 4780
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 4781
    .local v1, "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_7b

    .line 4782
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4784
    .local v4, "installer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 4786
    .local v0, "allowedPackageUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install package for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    const/4 v6, -0x1

    if-eq v0, v6, :cond_15

    if-ne p1, v0, :cond_15

    .line 4790
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowing app installation from installer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    .end local v0    # "allowedPackageUid":I
    .end local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "installer":Ljava/lang/String;
    :cond_7a
    :goto_7a
    return v5

    .line 4796
    .restart local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-ne v6, v7, :cond_97

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_97

    .line 4798
    const-string v6, "PersonaManagerService"

    const-string v7, "caller is system_service process...."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 4802
    :cond_97
    const-string v5, "PersonaManagerService"

    const-string v6, "rejecting app installation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    const/4 v5, 0x0

    goto :goto_7a
.end method

.method public isInitialized(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 746
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 747
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 750
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_1c

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_36

    .line 751
    :cond_1c
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    monitor-exit v2

    .line 757
    :goto_35
    return v1

    .line 754
    :cond_36
    iget v3, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_41

    .line 755
    monitor-exit v2

    goto :goto_35

    .line 758
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3e

    throw v1

    .line 757
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_41
    const/4 v1, 0x1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3e

    goto :goto_35
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5526
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageInInstallWhiteList check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5528
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 5529
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 5531
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public isSessionExpired(I)Z
    .registers 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 4915
    const-string v2, "isSessionExpired"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4916
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionExpired() id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4919
    .local v0, "currentId":I
    if-ne p1, v0, :cond_25

    .line 4923
    :goto_24
    return v1

    .line 4921
    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v3, p1, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v1, 0x1

    .line 4923
    .local v1, "sessionExpired":Z
    :cond_30
    goto :goto_24
.end method

.method public isSetupWizardInstalled(I)Z
    .registers 10
    .param p1, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1738
    const-string v5, "isSetupWizardInstalled"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1741
    .local v1, "ident":J
    const-string v5, "PersonaManagerService"

    const-string v6, " calling getSetupWizardPath   "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v0

    .line 1743
    .local v0, "apkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got apkLocation  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_50

    .line 1746
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1747
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_50

    .line 1748
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1749
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    const/4 v4, 0x1

    .line 1757
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_4f
    return v4

    .line 1756
    :cond_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4f
.end method

.method public lockPersona(I)V
    .registers 12
    .param p1, "personaId"    # I

    .prologue
    .line 4865
    const-string v5, "lockPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4867
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 4911
    :cond_11
    :goto_11
    return-void

    .line 4870
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-ne p1, v5, :cond_39

    .line 4872
    const-string v5, "persona_state_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 4874
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_31

    .line 4875
    :try_start_22
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_11

    .line 4879
    :catch_2c
    move-exception v4

    .line 4880
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11

    .line 4877
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_31
    :try_start_31
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_2c

    goto :goto_11

    .line 4885
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_39
    const/4 v2, 0x0

    .line 4886
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v5, "persona_state"

    invoke-static {p1, v5}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 4887
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_4a

    .line 4888
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 4892
    :cond_4a
    if-eqz v2, :cond_9f

    .line 4893
    :try_start_4c
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_a7

    .line 4902
    :goto_55
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4903
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 4904
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    .line 4905
    .local v3, "queuedUp":Z
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockPersona() queued a message to notify session expires right away? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4908
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 4895
    .end local v1    # "message":Landroid/os/Message;
    .end local v3    # "queuedUp":Z
    :cond_9f
    :try_start_9f
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a6} :catch_a7

    goto :goto_55

    .line 4897
    :catch_a7
    move-exception v4

    .line 4898
    .restart local v4    # "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_55
.end method

.method public makeInitialized(I)V
    .registers 7
    .param p1, "personaId"    # I

    .prologue
    .line 728
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 730
    const-string v1, "PersonaManagerService"

    const-string v2, "makeInitialized() NOT CHECKING PERMISSION!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 733
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_37

    .line 734
    :cond_1d
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    monitor-exit v2

    .line 742
    :goto_36
    return-void

    .line 737
    :cond_37
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_46

    .line 738
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 739
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 741
    :cond_46
    monitor-exit v2

    goto :goto_36

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_f .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4716
    const-string v1, "markForRemoval"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4717
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4722
    .local v0, "removalIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4723
    const-string v1, "isLockRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4724
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    .line 4727
    return-void
.end method

.method public needVerificationForPackage(ILjava/lang/String;)Z
    .registers 11
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1565
    const-string v5, "needVerificationForPackage"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1566
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_18

    :cond_16
    move v3, v4

    .line 1657
    :cond_17
    :goto_17
    return v3

    .line 1575
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1576
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage for Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1580
    :cond_3b
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v2, 0x0

    .line 1586
    .local v2, "setupWizardApkLocation":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1587
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting setupWizardApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1589
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    if-nez v2, :cond_b1

    .line 1592
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation == null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_81
    :goto_81
    const/4 v0, 0x0

    .line 1612
    .local v0, "handlerApkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting handlerApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getHandlerApkLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    if-nez v0, :cond_109

    .line 1617
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation == null "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1618
    goto/16 :goto_17

    .line 1595
    .end local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_b1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1596
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    if-eqz v1, :cond_81

    .line 1598
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_df

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e7

    .line 1599
    :cond_df
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation pkgInfo.packageName == null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 1601
    :cond_e7
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1602
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage setupWizardApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1620
    .restart local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_109
    const/4 v1, 0x0

    .line 1621
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1622
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-eqz v1, :cond_17e

    .line 1624
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_138

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_142

    .line 1625
    :cond_138
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation pkgInfo.packageName == null  "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1626
    goto/16 :goto_17

    .line 1627
    :cond_142
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 1628
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage handlerApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1631
    :cond_164
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation return true for   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_17e
    const-string v5, "com.sec.knox.containeragent2"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 1637
    const-string v4, "PersonaManagerService"

    const-string v5, "containeragent2 return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1641
    :cond_18f
    const-string v5, "com.sec.knox.switcher"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 1642
    const-string v4, "PersonaManagerService"

    const-string v5, "b2bswitcher demo return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1646
    :cond_1a0
    const-string v5, "com.sec.knox.packageverifier"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b2

    .line 1647
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "verifier return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1652
    :cond_1b2
    const-string v5, "com.sec.knox.shortcutsms"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1656
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage return true for  at the end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1657
    goto/16 :goto_17
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .registers 11
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5741
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5742
    const-string v2, "flag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5743
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5744
    const-string v2, "pid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5745
    const-string v2, "package"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5746
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5747
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5748
    return-void
.end method

.method public preSystemReady()V
    .registers 2

    .prologue
    .line 2517
    const-string v0, "preSystemReady"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2518
    return-void
.end method

.method public refreshTimer(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 5596
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    if-nez v1, :cond_14

    .line 5597
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5598
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5599
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5601
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3355
    const-string v1, "registerHandler"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3357
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMS:: registerHandler for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3360
    .local v0, "personaId":I
    if-eqz p2, :cond_28

    if-eqz p1, :cond_28

    .line 3361
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 3363
    :cond_28
    return-void
.end method

.method public registerObserver(Landroid/content/pm/IPersonaObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3367
    const-string v1, "registerObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3370
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3372
    .local v0, "personaId":I
    invoke-static {v0, p1}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3374
    return-void
.end method

.method public registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3378
    const-string v0, "registerOutsideObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3380
    invoke-static {p1, p2}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3381
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 608
    const-string v0, "registerSystemPersonaObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_10

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 612
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .registers 5
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 495
    const-string v0, "registerUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  PersonaManagerService.registerUser  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 498
    const/4 v0, 0x0

    .line 501
    :goto_11
    return v0

    .line 499
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  size of mClients :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 5152
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5166
    :cond_10
    :goto_10
    return-void

    .line 5155
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5158
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5159
    :try_start_1c
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5160
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4a

    .line 5161
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing pkg from list for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5163
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V

    .line 5165
    :cond_4a
    monitor-exit v2

    goto :goto_10

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5516
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5517
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be removed as installer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    :goto_20
    return-void

    .line 5520
    :cond_21
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePackageFromInstallWhiteList remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    sget-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_20
.end method

.method public removePersona(I)I
    .registers 16
    .param p1, "personaHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    .line 3400
    const-string v8, "removePersona"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3406
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3407
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3409
    .local v1, "currentUser":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3410
    :try_start_1a
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_7b

    .line 3412
    :try_start_1d
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 3413
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz p1, :cond_29

    if-nez v5, :cond_2e

    .line 3414
    :cond_29
    const/16 v7, -0x4b2

    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_bd

    :try_start_2c
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_7b

    .line 3459
    :cond_2d
    :goto_2d
    return v7

    .line 3417
    :cond_2e
    :try_start_2e
    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " callingUid - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    const/16 v10, 0x3e8

    if-eq v0, v10, :cond_7e

    .line 3419
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v10

    if-eq v0, v10, :cond_7e

    .line 3421
    const-string v7, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Only creator fo persona can remove it. Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not equal to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    const/16 v7, -0x4b3

    monitor-exit v9
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_bd

    :try_start_79
    monitor-exit v8

    goto :goto_2d

    .line 3441
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_7b
    move-exception v7

    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    throw v7

    .line 3427
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_7e
    :try_start_7e
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3433
    const/4 v10, 0x3

    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 3434
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 3435
    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3436
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3437
    .local v4, "msg":Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 3438
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v10, v4, v11, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3440
    monitor-exit v9
    :try_end_a0
    .catchall {:try_start_7e .. :try_end_a0} :catchall_bd

    .line 3441
    :try_start_a0
    monitor-exit v8
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_7b

    .line 3444
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_c0

    .line 3445
    const-string v8, "PersonaManagerService"

    const-string v9, " Calling handler : MSG_START_REMOVE_PERSONA_AFTER_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3447
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 3448
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2d

    .line 3440
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_bd
    move-exception v7

    :try_start_be
    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v7
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_7b

    .line 3453
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_c0
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopping user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v6

    .line 3456
    .local v6, "res":I
    if-eqz v6, :cond_2d

    .line 3459
    const/16 v7, -0x4b1

    goto/16 :goto_2d
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .registers 12
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 5264
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    const/4 v4, 0x0

    .line 5267
    .local v4, "status":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5268
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5269
    .local v5, "token":J
    const/4 v1, 0x0

    .line 5270
    .local v1, "oldPassword":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v7, :cond_80

    .line 5271
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima20(I)Ljava/lang/String;

    move-result-object v1

    .line 5274
    :goto_1d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5276
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : password -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and personaid -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ac

    .line 5279
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5280
    .local v0, "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v3

    .line 5281
    .local v3, "quality":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : quality -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    const/high16 v7, 0x20000

    if-lt v3, v7, :cond_8d

    const/high16 v7, 0x60000

    if-gt v3, v7, :cond_8d

    .line 5285
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 5286
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 5287
    const/4 v4, 0x1

    .line 5306
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_7f
    :goto_7f
    return v4

    .line 5273
    :cond_80
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 5289
    .restart local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v3    # "quality":I
    :cond_85
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPassword is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 5292
    :cond_8d
    const/high16 v7, 0x10000

    if-ne v3, v7, :cond_7f

    .line 5294
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 5295
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 5296
    const/4 v4, 0x1

    goto :goto_7f

    .line 5298
    :cond_a4
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPattern is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 5303
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_ac
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : old password cannot be null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f
.end method

.method public resetPersona(I)I
    .registers 15
    .param p1, "perId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 4494
    const-string v9, "resetPersona"

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4498
    move v6, p1

    .line 4499
    .local v6, "personaId":I
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resetPersona :personaId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4502
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4503
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4504
    .local v1, "currentUser":Ljava/lang/Integer;
    const-string v9, "PersonaManagerService"

    const-string v10, "getting handler for persona"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4508
    :try_start_39
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 4509
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_45

    if-nez v5, :cond_62

    .line 4510
    :cond_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetPersona : not valid persona : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    monitor-exit v10

    .line 4580
    :goto_61
    return v8

    .line 4517
    :cond_62
    const/16 v9, 0x3e8

    if-eq v0, v9, :cond_97

    .line 4518
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v9

    if-eq v0, v9, :cond_97

    .line 4520
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Only creator fo persona can reset it. Calling uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not equal to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    monitor-exit v10

    goto :goto_61

    .line 4564
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_94
    move-exception v9

    monitor-exit v10
    :try_end_96
    .catchall {:try_start_39 .. :try_end_96} :catchall_94

    throw v9

    .line 4551
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_97
    :try_start_97
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v7

    .line 4556
    .local v7, "personaState":I
    const/16 v9, 0x63

    invoke-virtual {p0, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4564
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_94

    .line 4568
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_be

    .line 4569
    const-string v9, "PersonaManagerService"

    const-string v10, " Calling handler : MSG_START_RESET_PERSONA_AFTER_SWITCH"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4571
    .local v4, "msg":Landroid/os/Message;
    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 4572
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4574
    const/4 v8, 0x0

    goto :goto_61

    .line 4578
    .end local v4    # "msg":Landroid/os/Message;
    :cond_be
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I

    move-result v8

    .line 4579
    .local v8, "result":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_61
.end method

.method public rollBackToPersona(I)V
    .registers 10
    .param p1, "parentId"    # I

    .prologue
    .line 4832
    const-string v5, "rollBackToPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4833
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    move v4, p1

    .line 4837
    .local v4, "personaId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 4838
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4839
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 4842
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing still exists "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    :goto_80
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4850
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4852
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_a8
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_c8

    .line 4857
    :goto_ab
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4861
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "ident":J
    :cond_ae
    return-void

    .line 4844
    :cond_af
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing good job"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 4853
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "ident":J
    :catch_c8
    move-exception v1

    .line 4854
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab
.end method

.method public rollUpToParent(I)V
    .registers 10
    .param p1, "personaId"    # I

    .prologue
    .line 4811
    const-string v5, "rollUpToParent"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4812
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    .line 4815
    .local v4, "parentId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4817
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4820
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4822
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_56
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5d

    .line 4827
    :goto_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4828
    return-void

    .line 4823
    :catch_5d
    move-exception v1

    .line 4824
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .registers 15
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 5185
    const/4 v3, 0x0

    .line 5186
    .local v3, "resullt":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5188
    .local v7, "token":J
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5189
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 5190
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  SecureStorage is not enabled  for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_29} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_29} :catch_d1
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_29} :catch_d6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_db
    .catchall {:try_start_5 .. :try_end_29} :catchall_c4

    .line 5191
    const/4 v9, 0x0

    .line 5228
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5231
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_2d
    return v9

    .line 5193
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2e
    :try_start_2e
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  personaId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    if-eqz p2, :cond_c9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c9

    .line 5196
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->changeEncryptFsKey(ILjava/lang/String;)Z

    .line 5197
    const/4 v6, -0x1

    .line 5198
    .local v6, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v9

    if-eqz v9, :cond_5c

    .line 5199
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTIMAStatus()I

    move-result v6

    .line 5201
    :cond_5c
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tima device status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    sget-boolean v9, Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z

    if-eqz v9, :cond_83

    if-nez v6, :cond_83

    .line 5203
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->savePasswordInTima20(ILjava/lang/String;)Z
    :try_end_7d
    .catch Ljava/security/KeyStoreException; {:try_start_2e .. :try_end_7d} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_7d} :catch_d1
    .catch Ljava/security/cert/CertificateException; {:try_start_2e .. :try_end_7d} :catch_d6
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_7d} :catch_db
    .catchall {:try_start_2e .. :try_end_7d} :catchall_c4

    move-result v3

    .line 5228
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "timaStatus":I
    :goto_7e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v3

    .line 5231
    goto :goto_2d

    .line 5204
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "timaStatus":I
    :cond_83
    if-nez v6, :cond_bb

    .line 5205
    :try_start_85
    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 5206
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5207
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, ""

    invoke-direct {v4, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5208
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 5210
    .local v5, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v10

    invoke-virtual {v2, v9, v5, v10}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 5211
    const/4 v3, 0x1

    .line 5212
    goto :goto_7e

    .line 5213
    .end local v2    # "ks":Ljava/security/KeyStore;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_bb
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_be
    .catch Ljava/security/KeyStoreException; {:try_start_85 .. :try_end_be} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_85 .. :try_end_be} :catch_d1
    .catch Ljava/security/cert/CertificateException; {:try_start_85 .. :try_end_be} :catch_d6
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_be} :catch_db
    .catchall {:try_start_85 .. :try_end_be} :catchall_c4

    goto :goto_7e

    .line 5219
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "timaStatus":I
    :catch_bf
    move-exception v0

    .line 5220
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_c0
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_7e

    .line 5228
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catchall_c4
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 5216
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_c9
    :try_start_c9
    const-string v9, "PersonaManagerService"

    const-string v10, "password cannot be null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/security/KeyStoreException; {:try_start_c9 .. :try_end_d0} :catch_bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c9 .. :try_end_d0} :catch_d1
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_d0} :catch_d6
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d0} :catch_db
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_c4

    goto :goto_7e

    .line 5221
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_d1
    move-exception v0

    .line 5222
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_d2
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_7e

    .line 5223
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_d6
    move-exception v0

    .line 5224
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_7e

    .line 5225
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_db
    move-exception v0

    .line 5226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_c4

    goto :goto_7e
.end method

.method public setCurrentPersonaForUser(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 4216
    const-string v0, "setCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4217
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    return-void
.end method

.method setEcryptAndPasswordIndex(Landroid/content/pm/PersonaInfo;)V
    .registers 13
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x64

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 2134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2135
    .local v1, "listOfKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2136
    .local v6, "unusedListOfKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2138
    const/16 v7, 0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    const/16 v7, 0x67

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    move-object v6, v1

    .line 2141
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 2142
    .local v4, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_8c

    .line 2143
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_44

    .line 2145
    invoke-virtual {p1, v9}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 2146
    invoke-virtual {p1, v10}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    .line 2163
    :cond_43
    :goto_43
    return-void

    .line 2148
    :cond_44
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_43

    .line 2150
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 2151
    .local v5, "pInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2152
    .local v2, "mEcrptyfsKey":Ljava/lang/Integer;
    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2153
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2154
    .local v3, "mPasswordKey":Ljava/lang/Integer;
    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2155
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setTimaEcrytfsIndex(I)V

    .line 2156
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setTimaPasswordIndex(I)V

    goto :goto_4e

    .line 2161
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mEcrptyfsKey":Ljava/lang/Integer;
    .end local v3    # "mPasswordKey":Ljava/lang/Integer;
    .end local v5    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_8c
    const-string v7, "PersonaManagerService"

    const-string v8, "mPersonaInfoList is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public setFsMountState(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 4424
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFsMountState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4426
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4427
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_2a

    .line 4428
    const-string v1, "PersonaManagerService"

    const-string v3, "setFsMountState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    monitor-exit v2

    .line 4435
    :goto_29
    return-void

    .line 4432
    :cond_2a
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 4433
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4434
    monitor-exit v2

    goto :goto_29

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .registers 10
    .param p1, "timeInMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 5551
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMaximumScreenOffTimeoutFromDeviceAdmin called but may not be entered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " persona:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    const/16 v2, 0x1388

    .line 5553
    .local v2, "timeMs":I
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-lez v3, :cond_5a

    .line 5554
    const v2, 0x7fffffff

    .line 5559
    :goto_2e
    :try_start_2e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5560
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_59

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_59

    .line 5561
    const-string v3, "PersonaManagerService"

    const-string v4, "Pinfo is not null & Persona not removing. Going to refresh timer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    const/16 v3, 0x1388

    if-gt v2, v3, :cond_49

    .line 5563
    const/16 v2, 0x1388

    .line 5565
    :cond_49
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5567
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_59} :catch_5c

    .line 5573
    .end local v1    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_59
    :goto_59
    return-void

    .line 5556
    :cond_5a
    long-to-int v2, p1

    goto :goto_2e

    .line 5569
    :catch_5c
    move-exception v0

    .line 5570
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4174
    const-string v1, "setPersonaIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4175
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4176
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4177
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4178
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_20

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v1, :cond_20

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v1, :cond_3a

    .line 4179
    :cond_20
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPersonaIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    monitor-exit v2

    .line 4186
    :goto_39
    return-void

    .line 4182
    :cond_3a
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V

    .line 4183
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4184
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_45

    .line 4185
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_39

    .line 4184
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .registers 9
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4260
    const-string v2, "setPersonaName"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4261
    const-string v2, "PersonaManagerService"

    const-string v3, "setPersonaName()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4263
    const/4 v0, 0x0

    .line 4264
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4265
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 4266
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_23

    iget-boolean v2, v1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v2, :cond_3d

    .line 4267
    :cond_23
    const-string v2, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPersonaName() unknown persona #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    monitor-exit v3

    .line 4280
    :cond_3c
    :goto_3c
    return-void

    .line 4271
    :cond_3d
    if-eqz p2, :cond_4d

    iget-object v2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 4272
    iput-object p2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 4273
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4274
    const/4 v0, 0x1

    .line 4276
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_54

    .line 4277
    if-eqz v0, :cond_3c

    .line 4278
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_3c

    .line 4276
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 664
    const-string v1, "setPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 666
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_1a

    .line 667
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 669
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    monitor-exit v2

    .line 673
    :cond_1a
    return-void

    .line 671
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setPersonaState(II)V
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4344
    const-string v3, "setPersonaState"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4345
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPersonaState: new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    const/4 v2, -0x1

    .line 4347
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq p2, v3, :cond_26

    if-ne p2, v8, :cond_30

    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 4348
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4403
    :goto_2f
    return-void

    .line 4351
    :cond_30
    const/4 v1, 0x0

    .line 4352
    .local v1, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4353
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4354
    if-nez v1, :cond_46

    .line 4355
    const-string v3, "PersonaManagerService"

    const-string v5, "setPersonaState personaInfo is null "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    monitor-exit v4

    goto :goto_2f

    .line 4380
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_43

    throw v3

    .line 4358
    :cond_46
    :try_start_46
    iget v2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4359
    if-ne v2, p2, :cond_64

    .line 4360
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPersonaState: current and new state are same.. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    monitor-exit v4

    goto :goto_2f

    .line 4363
    :cond_64
    iput v2, v1, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 4364
    iput p2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4365
    if-ne p2, v8, :cond_6d

    .line 4366
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4368
    :cond_6d
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->isSuperLockState(I)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 4369
    iget-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-nez v3, :cond_82

    .line 4370
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4371
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->handleSuperLockPersona(II)V

    .line 4372
    if-ne v2, v8, :cond_82

    .line 4373
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4379
    :cond_82
    :goto_82
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4380
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_46 .. :try_end_86} :catchall_43

    .line 4382
    if-ne v2, v6, :cond_be

    if-nez p2, :cond_be

    .line 4383
    const-string v3, "PersonaManagerService"

    const-string v4, "setPersonaState : first time switch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4385
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4386
    .local v0, "i":I
    :goto_a3
    if-lez v0, :cond_b9

    .line 4387
    add-int/lit8 v0, v0, -0x1

    .line 4389
    :try_start_a7
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v3, p1}, Landroid/content/pm/ISystemPersonaObserver;->onPersonaActive(I)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b2} :catch_b3

    goto :goto_a3

    .line 4390
    :catch_b3
    move-exception v3

    goto :goto_a3

    .line 4377
    .end local v0    # "i":I
    :cond_b5
    const/4 v3, 0x0

    :try_start_b6
    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_43

    goto :goto_82

    .line 4395
    .restart local v0    # "i":I
    :cond_b9
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4398
    .end local v0    # "i":I
    :cond_be
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    if-eqz v3, :cond_c9

    .line 4399
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/pm/HandlerCacheManager;->onStateChange(III)V

    goto/16 :goto_2f

    .line 4401
    :cond_c9
    const-string v3, "PersonaManagerService"

    const-string v4, "setPersonaState mHandlerCacheManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string v1, "setPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 645
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_17

    .line 646
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 648
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    monitor-exit v2

    .line 651
    :cond_17
    return-void

    .line 649
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setPhoneCaller(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 4241
    const-string v0, "setPhoneCaller"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4242
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneCaller as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 4244
    return-void
.end method

.method public setResetPasswordState(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 4439
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4440
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResetPasswordState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4442
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4443
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_30

    .line 4444
    const-string v1, "PersonaManagerService"

    const-string v3, "setResetPasswordState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    monitor-exit v2

    .line 4451
    :goto_2f
    return-void

    .line 4448
    :cond_30
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4449
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4450
    monitor-exit v2

    goto :goto_2f

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setShortcutMode(IZ)V
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 3476
    const-string v0, "setShortcutMode"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3477
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3478
    return-void
.end method

.method public setSuperLock(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 4407
    const-string v1, "setSuperLock"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4408
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSuperLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4410
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4411
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_2f

    .line 4412
    const-string v1, "PersonaManagerService"

    const-string v3, "setSuperLock personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    monitor-exit v2

    .line 4419
    :goto_2e
    return-void

    .line 4416
    :cond_2f
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4417
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4418
    monitor-exit v2

    goto :goto_2e

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public settingSyncAllowed(I)Z
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 5807
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 5809
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    packed-switch v1, :pswitch_data_e

    .line 5817
    :pswitch_9
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 5814
    :pswitch_b
    const/4 v1, 0x1

    goto :goto_a

    .line 5809
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public startRemovingPersona(I)I
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 3491
    const-string/jumbo v0, "startRemovingPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3492
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "startRemovingPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public stopAndRemovePersona(IZ)I
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "removePersona"    # Z

    .prologue
    .line 3497
    const-string/jumbo v2, "stopAndRemovePersona"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3498
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "stopAndRemovePersona is called.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    const/4 v1, -0x1

    .line 3501
    .local v1, "res":I
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;IZ)V

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_1d

    move-result v1

    .line 3521
    :goto_1c
    return v1

    .line 3518
    :catch_1d
    move-exception v0

    .line 3519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopAndRemovePersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public stopPersona(I)I
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    .line 3485
    const-string/jumbo v0, "stopPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3486
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "stopPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public switchPersona(I)Z
    .registers 11
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 3305
    const-string/jumbo v6, "switchPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3306
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 3309
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_33

    .line 3310
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 3311
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because removePersona flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :goto_32
    return v5

    .line 3316
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3317
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3319
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_41
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->switchPersona(I)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_46

    move-result v5

    goto :goto_32

    .line 3320
    :catch_46
    move-exception v1

    .line 3321
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3330
    const-string/jumbo v6, "switchPersonaAndLaunch"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3331
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 3334
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_3d

    .line 3335
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3d

    .line 3336
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because either partial flag or remove flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :goto_3c
    return v5

    .line 3341
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3342
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3344
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_4b
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_50

    move-result v5

    goto :goto_3c

    .line 3345
    :catch_50
    move-exception v1

    .line 3346
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c
.end method

.method public systemReady()V
    .registers 10

    .prologue
    .line 2698
    const-string/jumbo v5, "systemReady"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2700
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaPolicyManagerService;->registerReceivers()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_d0

    .line 2704
    :goto_d
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v7, 0x9

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 2705
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 2706
    const-string v5, "ro.config.knox"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2708
    .local v4, "version":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2710
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_53

    .line 2711
    const-string/jumbo v5, "v30"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2712
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v7, 0x5

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2729
    :cond_53
    const-string v5, "PersonaManagerService"

    const-string v6, "Pruning of unwanted persona has started..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning mPersonas\'s size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2733
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7c
    :try_start_7c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_d6

    .line 2734
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 2735
    .local v3, "ui":Landroid/content/pm/PersonaInfo;
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pruning info is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_ba

    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v5, :cond_cd

    .line 2737
    :cond_ba
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_cd
    .catchall {:try_start_7c .. :try_end_cd} :catchall_e5

    .line 2733
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 2701
    .end local v1    # "i":I
    .end local v3    # "ui":Landroid/content/pm/PersonaInfo;
    .end local v4    # "version":Ljava/lang/String;
    :catch_d0
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 2741
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v4    # "version":Ljava/lang/String;
    :cond_d6
    :try_start_d6
    monitor-exit v6
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_e5

    .line 2743
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2744
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2745
    return-void

    .line 2741
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_e5
    move-exception v5

    :try_start_e6
    monitor-exit v6
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v5
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .registers 14
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1713
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "unInstallSystemApplications"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1714
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1715
    :try_start_9
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_70

    .line 1716
    const/4 v4, -0x1

    .line 1717
    .local v4, "result":I
    :try_start_d
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " in PMS, calling PkgMgr uninstall system apps  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1719
    .local v5, "userPath":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->unInstallSystemApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)I

    move-result v4

    .line 1721
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 1723
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1724
    .local v2, "pkg":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " removing files for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1727
    .local v3, "pkgDir":Ljava/io/File;
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    goto :goto_40

    .line 1731
    .end local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkgDir":Ljava/io/File;
    .end local v5    # "userPath":Ljava/io/File;
    :catchall_6d
    move-exception v6

    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_d .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v6

    .line 1732
    .end local v4    # "result":I
    :catchall_70
    move-exception v6

    monitor-exit v7
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_70

    throw v6

    .line 1730
    .restart local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":I
    .restart local v5    # "userPath":Ljava/io/File;
    :cond_73
    :try_start_73
    monitor-exit v8
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_6d

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_70

    return v4
.end method

.method public unmarkForRemoval(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 4731
    const-string/jumbo v0, "unmarkForRemoval"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4732
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmarkForRemoval() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4734
    return-void
.end method

.method public unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3385
    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3388
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3390
    .local v0, "personaId":I
    invoke-static {v0, p1}, Lcom/android/server/pm/HandlerCacheManager;->unregisterObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 3391
    return-void
.end method

.method public userActivity(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 5605
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5606
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5607
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5608
    return-void
.end method

.method public userBackground(I)V
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 4041
    const-string/jumbo v8, "userBackground"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4042
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4043
    :try_start_9
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4044
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_1b

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v8, :cond_1b

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v8, :cond_35

    .line 4045
    :cond_1b
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "personaBackground: unknown user #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    monitor-exit v9

    .line 4077
    :goto_34
    return-void

    .line 4048
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4049
    .local v3, "now":J
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userBackground() now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iput-wide v3, v0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 4052
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4054
    const-string v8, "SwitchPersona"

    const-string/jumbo v10, "userBackground() changing value in lastTimeToBackground"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4056
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 4059
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 4061
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v6

    .line 4062
    .local v6, "sessionLength":J
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4063
    .local v1, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 4064
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_bc

    .line 4066
    const-wide v6, 0x7fffffffffffffffL

    .line 4067
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4072
    :goto_a5
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4073
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 4074
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4076
    monitor-exit v9

    goto/16 :goto_34

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "now":J
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "sessionLength":J
    :catchall_b9
    move-exception v8

    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_9 .. :try_end_bb} :catchall_b9

    throw v8

    .line 4070
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v3    # "now":J
    .restart local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "sessionLength":J
    :cond_bc
    :try_start_bc
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_b9

    goto :goto_a5
.end method

.method public userForeground(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 4018
    const-string/jumbo v3, "userForeground"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4019
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4020
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 4021
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_1b

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_1b

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_36

    .line 4022
    :cond_1b
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    monitor-exit v4

    .line 4033
    :goto_35
    return-void

    .line 4025
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4026
    .local v1, "now":J
    const-wide v5, 0xdc46c32800L

    cmp-long v3, v1, v5

    if-lez v3, :cond_48

    .line 4027
    iput-wide v1, v0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 4028
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4030
    :cond_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_65

    .line 4031
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User foreground during switch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto :goto_35

    .line 4030
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "now":J
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v3
.end method
