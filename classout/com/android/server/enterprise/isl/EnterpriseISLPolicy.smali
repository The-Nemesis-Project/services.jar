.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final ENTERPRISE_MDM_ID:Ljava/lang/String; = "mAdminID"

.field private static final IM_MIGRATION_STATUS:Ljava/lang/String; = "migrationRequiredPrefs"

.field private static final ISL_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.ISA_BIND_ACTION"

.field private static final ISL_VERSION:Ljava/lang/String; = "2.0"

.field private static final KNOX1_PREFIX:Ljava/lang/String; = "sec_container_1."

.field private static final MIGRATION_ACTION:Ljava/lang/String; = "com.sec.knox.migrationagent.START_IM_MIGRATION"

.field private static final MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

.field private static final MIGRATION_FLAG:Ljava/lang/String; = "migrationIMFlag"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String; = null

.field public static final WATCH_EVENTS:I = 0xfc6

.field private static mAdminIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilesCount:I

.field private static mISAInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mISAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersonaManager:Landroid/os/IPersonaManager;

.field private static mProgress:I

.field private static mSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mSystemBinObserver:Landroid/os/FileObserver;

.field private mSystemFmwrkObserver:Landroid/os/FileObserver;

.field private mSystemXbinObserver:Landroid/os/FileObserver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

.field private mySharedPreference:Landroid/content/SharedPreferences;

.field private perAdminPackageListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    .line 109
    const-string v0, "EnterpriseISLPolicyService"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    .line 166
    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    .line 168
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 126
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 134
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    .line 170
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 171
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 172
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 174
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 175
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    .line 176
    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TIMA_SERVICE:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    .line 185
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_31
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 190
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    .line 194
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor ===== registerEnterpriseISLpolicyReciever() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    .line 197
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_75

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor ===== registerMigrationReceiver() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v1, "migrationRequiredPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    .line 201
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 102
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 102
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic access$1104()I
    .registers 1

    .prologue
    .line 102
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .prologue
    .line 102
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 102
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAllPackagesFromOwnerspace(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    return-object v0
.end method

.method private checkContainerOwner(II)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 493
    .local v0, "ownerUid":I
    if-ne p2, v0, :cond_30

    .line 494
    const/4 v1, 0x1

    .line 495
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_30

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContainerOwner: Container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " owned by Admin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_30
    return v1
.end method

.method private static checkIfUserIsContainer(I)Z
    .registers 6
    .param p0, "containerId"    # I

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "isUserPersona":Z
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfUserIsContainer: containerId value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 479
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    invoke-interface {v2, p0}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_2a

    move-result v1

    .line 484
    :cond_29
    :goto_29
    return v1

    .line 481
    :catch_2a
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_29

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error at checkIfUserIsContainer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private doMigration3rdPartyUpdate()Z
    .registers 13

    .prologue
    .line 319
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, ">>>> doMigration3rdPartyUpdate"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_b
    const/4 v1, 0x0

    .line 322
    .local v1, "bRet":Z
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 323
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_1f

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "mMultiMap is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v2, v1

    .line 380
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_20
    return v2

    .line 328
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_21
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_2c

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "full package list in DB"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mappingAdminPackageList()V

    .line 331
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 332
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_42

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "No 3rd party in DB, do not need to migration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_42
    const/4 v1, 0x1

    move v2, v1

    .line 334
    .restart local v2    # "bRet":I
    goto :goto_20

    .line 337
    .end local v2    # "bRet":I
    :cond_45
    const/4 v1, 0x1

    .line 339
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_51

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "check prefix & putBaseline"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_51
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    .local v0, "admin":I
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_87

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "admin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_87
    const/4 v6, 0x0

    .line 343
    .local v6, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v6

    .line 344
    if-nez v6, :cond_9c

    .line 345
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_99

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "interfaceISA is null, need to bind isa"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_99
    const/4 v1, 0x0

    .end local v0    # "admin":I
    .end local v6    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    :cond_9a
    :goto_9a
    move v2, v1

    .line 380
    .restart local v2    # "bRet":I
    goto :goto_20

    .line 350
    .end local v2    # "bRet":I
    .restart local v0    # "admin":I
    .restart local v6    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    :cond_9c
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 351
    .local v8, "perAdminPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5b

    .line 354
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_ae
    :goto_ae
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_101

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 355
    .local v7, "packageName":Ljava/lang/String;
    const-string v9, "sec_container_1."

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 357
    :try_start_c2
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_de

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "migration - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_de
    invoke-interface {v6, v7}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_104

    .line 360
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_100

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removePackage failed - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_100
    const/4 v1, 0x0

    .line 375
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_101
    if-nez v1, :cond_5b

    goto :goto_9a

    .line 365
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_104
    const-string v9, "sec_container_1."

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ae

    .line 366
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_ae

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "putPackage failed - packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_12e} :catch_12f

    goto :goto_ae

    .line 368
    :catch_12f
    move-exception v3

    .line 369
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_14c

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "migration exception : packagename : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_14c
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae
.end method

.method private enforceEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)I
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 421
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 422
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 423
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 427
    :goto_1f
    return v1

    .line 426
    :cond_20
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_1f
.end method

.method private enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getAdminISAMAPFromDB()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ISL getAdminISAMAPFromDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_b
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adminUid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isaPackageName"

    aput-object v2, v0, v1

    .line 1076
    .local v0, "sReturnColumns":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .registers 7
    .param p1, "callMe"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 464
    const/4 v2, -0x1

    .line 465
    .local v2, "retVal":I
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in getAdminId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_c
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 467
    .local v0, "i":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_16

    .line 468
    move v2, v0

    goto :goto_16

    .line 471
    .end local v0    # "i":I
    :cond_34
    return v2
.end method

.method private getAllPackagesFromOwnerspace(I)Ljava/util/List;
    .registers 16
    .param p1, "ownerUid"    # I
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
    .line 502
    iget-object v11, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 503
    .local v8, "userManager":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 504
    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v3, "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 506
    .local v10, "userlistSize":I
    sget-boolean v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v11, :cond_34

    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Userlist size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_34
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 508
    .local v4, "pNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 510
    .local v7, "uf":Landroid/content/pm/UserInfo;
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-lez v11, :cond_55

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 515
    :cond_55
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-eqz v11, :cond_61

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v11, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 516
    :cond_61
    iget-object v11, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x5040

    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 518
    .local v5, "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-boolean v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v11, :cond_9b

    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "in getPackageList-- USER ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Total PackageLists Size ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_9b
    if-eqz v5, :cond_3d

    .line 521
    :try_start_9d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a1
    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 522
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_a1

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-eq v11, v12, :cond_a1

    .line 523
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bf} :catch_c0

    goto :goto_a1

    .line 526
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_c0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "uf":Landroid/content/pm/UserInfo;
    :cond_cc
    if-eqz v4, :cond_d1

    .line 533
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_d1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_d8

    .end local v3    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d7
    return-object v3

    .restart local v3    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d8
    const/4 v3, 0x0

    goto :goto_d7
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 433
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 436
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static native getFileAttributes(Ljava/lang/String;)I
.end method

.method private getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 5
    .param p1, "adminUID"    # I

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in getISAInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    .line 458
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getISAInterface - ISAInterface not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_33
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method private getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1080
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ISL getPackageListfromDB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_e
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    const-string v3, "isaPackageName"

    aput-object v3, v0, v6

    .line 1082
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    .line 1083
    .local v2, "sValues":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "packageName"

    aput-object v3, v1, v5

    .line 1084
    .local v1, "sReturnColumns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_10

    .line 205
    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 207
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method

.method private getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .registers 5
    .param p1, "adminUID"    # I

    .prologue
    .line 447
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in getSubscriberInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    .line 449
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInstance - Subscriber not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_33
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method private islMigration(Z)V
    .registers 8
    .param p1, "bSendIntent"    # Z

    .prologue
    const/4 v5, 0x1

    .line 232
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, ">>> islMigration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_c
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 234
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->doMigration3rdPartyUpdate()Z

    move-result v0

    .line 237
    .local v0, "bMigration":Z
    if-ne v0, v5, :cond_42

    .line 238
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_23
    const-string v3, "migrationIMFlag"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    :cond_2c
    :goto_2c
    if-ne p1, v5, :cond_41

    .line 246
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "in":Landroid/content/Intent;
    const-string v3, "IM_MIGRATION_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 250
    .end local v2    # "in":Landroid/content/Intent;
    :cond_41
    return-void

    .line 242
    :cond_42
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private mappingAdminPackageList()V
    .registers 10

    .prologue
    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 388
    .local v0, "admin":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select packageName from EnterpriseIslFpTable Where adminUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NOT IN ( \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "prebaseLine"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' , \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 394
    .local v1, "cr":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_af

    .line 397
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 398
    const-string v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "pckg":Ljava/lang/String;
    if-eqz v4, :cond_6b

    .line 400
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    sget-boolean v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v6, :cond_6b

    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The Admin id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " The package Name is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_6b .. :try_end_a6} :catchall_a7

    goto :goto_6b

    .line 405
    .end local v4    # "pckg":Ljava/lang/String;
    :catchall_a7
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_ac
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_af
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 409
    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 412
    .end local v0    # "admin":I
    .end local v1    # "cr":Landroid/database/Cursor;
    .end local v5    # "sql":Ljava/lang/String;
    :cond_c0
    return-void
.end method

.method private removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1090
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1091
    if-eqz p1, :cond_42

    .line 1092
    const-string v1, "sec_container_1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 1093
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove the knox 1.0 prefix - package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_3a
    const-string v1, "sec_container_1."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1099
    :cond_42
    return-object p1
.end method

.method private removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1106
    if-eqz p1, :cond_33

    .line 1107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v2, "packageNamesModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1109
    .local v3, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1111
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_32
    move-object p1, v2

    .line 1114
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageNamesModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    return-object p1
.end method

.method private sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    const/4 v7, -0x1

    .line 263
    .local v7, "mdmUid":I
    const/4 v1, 0x0

    .line 264
    .local v1, "flag":Z
    const/4 v6, 0x0

    .line 265
    .local v6, "mdmPkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 266
    .local v3, "isMdmuser":Z
    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 267
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v5

    .line 268
    .local v5, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v12, "android.intent.extra.user_handle"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 269
    .local v11, "userHandle":I
    const-string v12, "android.intent.extra.UID"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 270
    .local v10, "uID":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "package:"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, "pkg":Ljava/lang/String;
    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_bb

    .line 273
    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 274
    .local v4, "key":I
    move v7, v4

    .line 275
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 276
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/4 v12, -0x1

    if-le v7, v12, :cond_a2

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 279
    const/4 v3, 0x1

    .line 280
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_99

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_99
    const/4 v1, 0x1

    .line 310
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_9a
    :goto_9a
    if-eqz v1, :cond_a1

    .line 311
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    .line 315
    :cond_a1
    return-void

    .line 283
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":I
    :cond_a2
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_42

    if-eqz v11, :cond_42

    .line 284
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_b5

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b5
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_42

    .line 289
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_bb
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_13c

    .line 290
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_c9
    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 291
    .restart local v4    # "key":I
    move v7, v4

    .line 292
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 293
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/4 v12, -0x1

    if-le v7, v12, :cond_123

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_123

    .line 296
    const/4 v3, 0x1

    .line 297
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_120

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_120
    const/4 v1, 0x1

    .line 299
    goto/16 :goto_9a

    .line 300
    :cond_123
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_c9

    if-eqz v11, :cond_c9

    .line 301
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_136

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_136
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_c9

    .line 306
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_13c
    sget-boolean v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v12, :cond_9a

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v13, "No Admin on Device !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a
.end method

.method private sendintent(Landroid/content/Intent;Z)V
    .registers 7
    .param p1, "in"    # Landroid/content/Intent;
    .param p2, "isMdmuser"    # Z

    .prologue
    .line 254
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, ">>>> sendintent to Admins  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_b
    const-string v2, "isMdmUser"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 257
    .local v0, "id":J
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return-void
.end method


# virtual methods
.method public clearBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 980
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in clearBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 982
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 983
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 984
    if-eqz v2, :cond_29

    .line 986
    :try_start_18
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v3

    .line 994
    :goto_1c
    return v3

    .line 987
    :catch_1d
    move-exception v1

    .line 988
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_1c

    .line 991
    :cond_29
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public convertEventToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_1e

    .line 837
    :goto_4
    return-object v0

    .line 802
    :sswitch_5
    const-string v0, "Attribute modified"

    .line 803
    goto :goto_4

    .line 806
    :sswitch_8
    const-string v0, "File modified"

    .line 807
    goto :goto_4

    .line 810
    :sswitch_b
    const-string v0, "File or subdirectory moved from"

    .line 811
    goto :goto_4

    .line 814
    :sswitch_e
    const-string v0, "File or subdirectory moved to"

    .line 815
    goto :goto_4

    .line 818
    :sswitch_11
    const-string v0, "New file or subdirectory created"

    .line 819
    goto :goto_4

    .line 822
    :sswitch_14
    const-string v0, "File deleted"

    .line 823
    goto :goto_4

    .line 826
    :sswitch_17
    const-string v0, "Deleted Self"

    .line 827
    goto :goto_4

    .line 830
    :sswitch_1a
    const-string v0, "Moved Self"

    .line 831
    goto :goto_4

    .line 800
    nop

    :sswitch_data_1e
    .sparse-switch
        0x2 -> :sswitch_8
        0x4 -> :sswitch_5
        0x40 -> :sswitch_b
        0x80 -> :sswitch_e
        0x100 -> :sswitch_11
        0x200 -> :sswitch_14
        0x400 -> :sswitch_17
        0x800 -> :sswitch_1a
    .end sparse-switch
.end method

.method public establishBaselineScan(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compareWithPreBaseline"    # Z

    .prologue
    .line 945
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in establishBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 947
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 948
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 949
    if-eqz v2, :cond_29

    .line 951
    :try_start_18
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v3

    .line 958
    :goto_1c
    return v3

    .line 952
    :catch_1d
    move-exception v1

    .line 953
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_1c

    .line 956
    :cond_29
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "establishBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public getISAList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "in getISAList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_b
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 565
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 566
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v9

    iget v0, v9, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 568
    .local v0, "adminId":I
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.ISA_BIND_ACTION"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 571
    .local v3, "id":J
    const/4 v9, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v5, v1, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 572
    .local v8, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8f

    .line 575
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 576
    .local v6, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 577
    .local v7, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_3d

    .line 579
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getISAList - Package  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getISAList - Service  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 584
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_8f
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_9a

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "getISAList - No package found with ISL intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_9a
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    return-object v9
.end method

.method public isISAReady(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 720
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in isISAReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 722
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 723
    const/4 v1, 0x1

    .line 726
    :goto_18
    return v1

    .line 725
    :cond_19
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA Service could not be found for Admin_uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_35
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1817
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1829
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1830
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1831
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1832
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1833
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1835
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1823
    return-void
.end method

.method public performPreBaselineScan(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 927
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in performPreBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 929
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 930
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 931
    if-eqz v2, :cond_29

    .line 933
    :try_start_18
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v3

    .line 941
    :goto_1c
    return v3

    .line 934
    :catch_1d
    move-exception v1

    .line 935
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_1c

    .line 938
    :cond_29
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "performPreBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public performScanNow(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 962
    .local p3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in performScanNow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 964
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 965
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 966
    if-eqz v2, :cond_2d

    .line 968
    :try_start_18
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 969
    invoke-interface {v2, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    move-result v3

    .line 976
    :goto_20
    return v3

    .line 970
    :catch_21
    move-exception v1

    .line 971
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    const/4 v3, 0x0

    goto :goto_20

    .line 974
    :cond_2d
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "performScanNow - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public putPackageToBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 998
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in putPackageToBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1000
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1001
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1002
    if-eqz v2, :cond_2d

    .line 1004
    :try_start_18
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1005
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    move-result v3

    .line 1012
    :goto_20
    return v3

    .line 1006
    :catch_21
    move-exception v1

    .line 1007
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    const/4 v3, 0x0

    goto :goto_20

    .line 1010
    :cond_2d
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "putPackageToBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public registerEnterpriseISLpolicyReciever()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 547
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "registerEnterpriseISLpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_c
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 549
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 556
    return-void
.end method

.method public registerMigrationReceiver()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 539
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "registerMigrationReceiver - Registering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_c
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    .line 541
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v3, "migrationfilter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_IM_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 544
    return-void
.end method

.method public removePackageFromBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1016
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in removePackageFromBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1018
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1019
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1020
    if-eqz v2, :cond_2d

    .line 1022
    :try_start_18
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1023
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    move-result v3

    .line 1030
    :goto_20
    return v3

    .line 1024
    :catch_21
    move-exception v1

    .line 1025
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    const/4 v3, 0x0

    goto :goto_20

    .line 1028
    :cond_2d
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public requestBindISA(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 597
    const/16 v18, 0x0

    .line 598
    .local v18, "ret":Z
    const/4 v12, 0x1

    .line 600
    .local v12, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3f

    .line 601
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_16

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "EnterpriseISLPolicyReceiver already registered"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_16
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_43

    .line 607
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_29

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "EnterpriseISLPolicyMigrationReceiver already registered"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_29
    :goto_29
    if-eqz p2, :cond_31

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_47

    .line 614
    :cond_31
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_3c

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - packageName is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_3c
    const/16 v22, 0x0

    .line 713
    :goto_3e
    return v22

    .line 603
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    goto :goto_16

    .line 609
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    goto :goto_29

    .line 618
    :cond_47
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_67

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "in requestBindISA - packageName is -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_67
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 621
    .local v4, "adminId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v15

    .line 623
    .local v15, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v22, "MigrationAgent"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_db

    .line 624
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_8a

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA from Migration Agent"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_8a
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_db

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 626
    .local v14, "key":I
    move v4, v14

    .line 627
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "packageName":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .line 628
    .restart local p2    # "packageName":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_db

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "adminID : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", packageName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":I
    :cond_db
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_118

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v22

    if-lez v22, :cond_118

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_118

    .line 636
    :cond_109
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_114

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "in requestBindISA - when the map is empty we must check the DB and get the admin for which last binding was there"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_114
    const/16 v22, 0x0

    goto/16 :goto_3e

    .line 642
    :cond_118
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_13b

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_13b

    .line 643
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_137

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "in requestBindISA - add the multiple MDM support backtracking"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_137
    const/16 v22, 0x0

    goto/16 :goto_3e

    .line 648
    :cond_13b
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_174

    .line 649
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_14d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_174

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 650
    .restart local v14    # "key":I
    if-ne v4, v14, :cond_14d

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14d

    .line 651
    const/4 v12, 0x0

    .line 657
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":I
    :cond_174
    if-nez v12, :cond_185

    .line 658
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_181

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "in requestBindISA - checking if any of the entries do have ISA so prevent other MDM to bind to that ISA, failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_181
    const/16 v22, 0x0

    goto/16 :goto_3e

    .line 662
    :cond_185
    new-instance v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V

    .line 663
    .local v8, "cISAConnect":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 666
    .local v16, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v22, "com.samsung.android.ISA_BIND_ACTION"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v7, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 668
    .local v5, "backupUID":J
    const/16 v22, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v20

    .line 669
    .local v20, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_30d

    .line 672
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1c0
    :goto_1c0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2ca

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 673
    .local v17, "resInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 674
    .local v19, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_218

    .line 675
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "requestBindISA - Package  Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "requestBindISA - Service  Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_218
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c0

    .line 680
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_300

    .line 685
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_287

    .line 686
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Comp Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Comp Class -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_287
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 694
    new-instance v21, Landroid/os/UserHandle;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    .line 695
    .local v21, "uHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 696
    .local v9, "callID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 697
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    const/16 v18, 0x1

    .line 709
    .end local v3    # "action":Landroid/content/Intent;
    .end local v9    # "callID":J
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "uHandle":Landroid/os/UserHandle;
    :cond_2ca
    :goto_2ca
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "migrationIMFlag"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2fc

    .line 710
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_2f3

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, ">>> requestBind IM Migration Starts-- "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_2f3
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    :cond_2fc
    move/from16 v22, v18

    .line 713
    goto/16 :goto_3e

    .line 701
    .restart local v11    # "compName":Landroid/content/ComponentName;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_300
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_1c0

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - ComponentName is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c0

    .line 706
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_30d
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_2ca

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - No package found with ISL intent"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ca
.end method

.method public setISLCallBack(I)V
    .registers 7
    .param p1, "adminId"    # I

    .prologue
    .line 781
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in setISLCallBack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_b
    const/4 v2, 0x0

    .line 783
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 784
    if-eqz v2, :cond_38

    .line 786
    :try_start_12
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    .line 787
    .local v0, "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    invoke-interface {v2, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V

    .line 788
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2c} :catch_2d

    .line 796
    .end local v0    # "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    :cond_2c
    :goto_2c
    return-void

    .line 790
    :catch_2d
    move-exception v1

    .line 791
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 794
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_38
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "setISLCallBack - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public setIntegrityResultSubscriber(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "subscriber"    # Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    .prologue
    .line 1052
    if-nez p2, :cond_e

    .line 1053
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "setIntegrityResultSubscriber - subscriber is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_d
    :goto_d
    return-void

    .line 1056
    :cond_e
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "in setIntegrityResultSubscriber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    iget v0, v2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1059
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v2, :cond_d

    .line 1065
    :try_start_35
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    new-instance v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 1066
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "call back registered with TIMA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 1067
    :catch_4b
    move-exception v1

    .line 1068
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public startRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v3, 0xfc6

    .line 841
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in startRuntimeWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 843
    .local v0, "adminUid":I
    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_29

    .line 846
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/bin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 848
    :cond_29
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 850
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_3b

    .line 851
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/xbin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 853
    :cond_3b
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 856
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_4d

    .line 857
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/framework/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 859
    :cond_4d
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 861
    const/4 v1, 0x1

    return v1
.end method

.method public stopRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 865
    const/4 v2, 0x0

    .line 866
    .local v2, "retValue":Z
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in stopRuntimeWatch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 868
    .local v0, "admin_UID":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3d

    .line 869
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 870
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_3a

    .line 871
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 872
    const/4 v2, 0x1

    .line 894
    .end local v1    # "i":I
    :cond_39
    :goto_39
    return v2

    .line 869
    .restart local v1    # "i":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 877
    .end local v1    # "i":I
    :cond_3d
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 878
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List contains Admin Id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    sget-object v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 880
    const/4 v2, 0x1

    .line 881
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 882
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 883
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 884
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 885
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 886
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 887
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system bin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system xbin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system framework watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1811
    return-void
.end method

.method public updatePlatformBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1034
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in updatePlatformBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1036
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1037
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 1038
    if-eqz v2, :cond_29

    .line 1040
    :try_start_18
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v3

    .line 1047
    :goto_1c
    return v3

    .line 1041
    :catch_1d
    move-exception v1

    .line 1042
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_1c

    .line 1045
    :cond_29
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
