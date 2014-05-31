.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FAILED_ATTEMPTS:Ljava/lang/String; = "failedAttempts"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_RETRY_MS:Ljava/lang/String; = "lastAttemptMs"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PIN_HASH:Ljava/lang/String; = "pinHash"

.field private static final ATTR_SALT:Ljava/lang/String; = "salt"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final BACKOFF_INC_INTERVAL:I = 0x5

.field private static final BACKOFF_TIMES:[I

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_LOG_FILE:Ljava/lang/String; = "system/users/userlog.txt"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x4

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final MAX_RETRY_READ:I

.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mLogFile:Ljava/io/File;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPw:Ljava/io/PrintWriter;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mRestrictionsPinStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$RestrictionsPinState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUserPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
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

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    return-void

    :array_28
    .array-data 4
        0x0
        0x7530
        0xea60
        0x493e0
        0x1b7740
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 209
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

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 213
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;
    .param p7, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 156
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 157
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    .line 159
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->MAX_RETRY_READ:I

    .line 172
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    .line 180
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 185
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1813
    new-instance v8, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v8, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 222
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 223
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 225
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 227
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 229
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 230
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 231
    :try_start_4a
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_f5

    .line 232
    :try_start_4d
    new-instance v8, Ljava/io/File;

    sget-object v11, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v8, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 233
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_f2

    .line 237
    :try_start_5d
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "system/users/userlog.txt"

    move-object/from16 v0, p5

    invoke-direct {v8, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mLogFile:Ljava/io/File;

    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, "append":Z
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mLogFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/32 v13, 0x500000

    cmp-long v8, v11, v13

    if-lez v8, :cond_78

    .line 240
    const/4 v1, 0x0

    .line 242
    :cond_78
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mLogFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_85

    .line 243
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mLogFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 245
    :cond_85
    new-instance v8, Ljava/io/PrintWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mLogFile:Ljava/io/File;

    invoke-direct {v11, v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_93} :catch_e1
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_93} :catch_f8
    .catchall {:try_start_5d .. :try_end_93} :catchall_f2

    .line 256
    .end local v1    # "append":Z
    :goto_93
    :try_start_93
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v11, "0"

    invoke-direct {v7, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v7, "userZeroDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 258
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    .line 259
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1fd

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v8, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 263
    new-instance v8, Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v12, "userlist.xml"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 264
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v5, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c5
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_109

    .line 268
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 269
    .local v6, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v8, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v8, :cond_de

    if-eqz v3, :cond_de

    .line 270
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_de
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    .line 246
    .end local v3    # "i":I
    .end local v5    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    .end local v7    # "userZeroDir":Ljava/io/File;
    :catch_e1
    move-exception v2

    .line 247
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    if-eqz v8, :cond_ee

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    .line 248
    :cond_ee
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_93

    .line 280
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_f2
    move-exception v8

    monitor-exit v10
    :try_end_f4
    .catchall {:try_start_93 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw v8

    .line 281
    :catchall_f5
    move-exception v8

    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f5

    throw v8

    .line 249
    :catch_f8
    move-exception v4

    .line 250
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_f9
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    if-eqz v8, :cond_105

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    .line 251
    :cond_105
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    .line 273
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v5    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "userZeroDir":Ljava/io/File;
    :cond_109
    const/4 v3, 0x0

    :goto_10a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_148

    .line 274
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 275
    .restart local v6    # "ui":Landroid/content/pm/UserInfo;
    const-string v8, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing partially created user #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_10a

    .line 279
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    :cond_148
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 280
    monitor-exit v10
    :try_end_14b
    .catchall {:try_start_f9 .. :try_end_14b} :catchall_f2

    .line 281
    :try_start_14b
    monitor-exit v9
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_f5

    .line 282
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 199
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 580
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

    .line 584
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

    .line 586
    :cond_2d
    return-void
.end method

.method private cleanAppRestrictions(IZ)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "all"    # Z

    .prologue
    .line 1115
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1116
    :try_start_3
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 1117
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_f

    monitor-exit v9

    .line 1135
    :goto_e
    return-void

    .line 1119
    :cond_f
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_42

    aget-object v2, v0, v4

    .line 1120
    .local v2, "fileName":Ljava/lang/String;
    const-string v8, "res_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1121
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1122
    .local v7, "resFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1123
    if-eqz p2, :cond_31

    .line 1124
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1119
    .end local v7    # "resFile":Ljava/io/File;
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1126
    .restart local v7    # "resFile":Ljava/io/File;
    :cond_31
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->restrictionsFileNameToPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1127
    .local v6, "pkg":Ljava/lang/String;
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1128
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_2e

    .line 1134
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "resFile":Ljava/io/File;
    :catchall_3f
    move-exception v8

    monitor-exit v9
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v8

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "files":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_42
    :try_start_42
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    goto :goto_e
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1141
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1142
    :try_start_3
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1143
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1144
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1145
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1147
    :cond_19
    monitor-exit v3

    .line 1148
    return-void

    .line 1147
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private static convertToUserInfo(Landroid/content/pm/PersonaInfo;)Landroid/content/pm/UserInfo;
    .registers 5
    .param p0, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 339
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converting/truncating PersonaInfo with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to UserInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 342
    .local v0, "ret":Landroid/content/pm/UserInfo;
    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    iput v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 343
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 345
    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 346
    iget v1, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iput v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 347
    iget-wide v1, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    iput-wide v1, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 348
    iget-wide v1, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iput-wide v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 349
    iget-boolean v1, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    .line 350
    return-object v0
.end method

.method private fallbackToSingleUserLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 794
    new-instance v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104099b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 797
    .local v0, "primary":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 799
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 801
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 802
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 804
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 806
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 807
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 808
    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .prologue
    .line 190
    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    .line 191
    :try_start_3
    sget-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getNextAvailableIdLocked()I
    .registers 4

    .prologue
    .line 1746
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1747
    const/16 v0, 0xa

    .line 1748
    .local v0, "i":I
    :goto_5
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1a

    .line 1749
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1754
    :cond_1a
    monitor-exit v2

    return v0

    .line 1752
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1755
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I
    .registers 8
    .param p1, "pinState"    # Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .prologue
    .line 1430
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1432
    .local v0, "backoffIndex":I
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_28

    sget-object v2, Lcom/android/server/pm/UserManagerService;->BACKOFF_TIMES:[I

    aget v1, v2, v0

    .line 1434
    .local v1, "backoffTime":I
    :goto_17
    int-to-long v2, v1

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 1432
    .end local v1    # "backoffTime":I
    :cond_28
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1536
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    .line 1541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return v3

    .line 1538
    :catch_16
    move-exception v2

    .line 1539
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 1541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 387
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2f

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 388
    const-string v1, "UserManagerService"

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

    .line 389
    const/4 v0, 0x0

    .line 391
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_2f
    return-object v0
.end method

.method private hasRestrictionsPinLocked(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1448
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_16

    iget-wide v1, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 1449
    :cond_16
    const/4 v1, 0x0

    .line 1451
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1103
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_11

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_13

    .line 1104
    :cond_11
    const/4 v1, 0x0

    .line 1106
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private isUserLimitReachedLocked()Z
    .registers 4

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 567
    .local v0, "nUsers":I
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private passwordToHash(Ljava/lang/String;J)Ljava/lang/String;
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # J

    .prologue
    .line 1507
    if-nez p1, :cond_4

    .line 1508
    const/4 v2, 0x0

    .line 1520
    :goto_3
    return-object v2

    .line 1510
    :cond_4
    const/4 v0, 0x0

    .line 1511
    .local v0, "algo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "hashed":Ljava/lang/String;
    :try_start_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1514
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1515
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1516
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_57} :catch_59

    move-result-object v2

    goto :goto_3

    .line 1517
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_59
    move-exception v1

    .line 1518
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1547
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1548
    .local v5, "restrictions":Landroid/os/Bundle;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1552
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v6, Lcom/android/server/pm/StrictAtomicFile;

    new-instance v12, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v12}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 1555
    .local v6, "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v12}, Lcom/android/server/pm/StrictAtomicFile;->openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1556
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1557
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1560
    :cond_2b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v12, 0x2

    if-eq v7, v12, :cond_35

    const/4 v12, 0x1

    if-ne v7, v12, :cond_2b

    .line 1564
    :cond_35
    const/4 v12, 0x2

    if-eq v7, v12, :cond_66

    .line 1565
    const-string v12, "UserManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to read restrictions file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/pm/StrictAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_54} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_54} :catch_ef
    .catchall {:try_start_b .. :try_end_54} :catchall_104

    .line 1600
    if-eqz v1, :cond_59

    .line 1602
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_10b

    .line 1607
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .end local v7    # "type":I
    :cond_59
    :goto_59
    return-object v5

    .line 1584
    .local v0, "count":I
    .local v2, "key":Ljava/lang/String;
    .local v3, "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v7    # "type":I
    .local v8, "valType":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 1585
    .local v10, "valueStrings":[Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1586
    invoke-virtual {v5, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1570
    .end local v0    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v8    # "valType":Ljava/lang/String;
    .end local v10    # "valueStrings":[Ljava/lang/String;
    :cond_66
    :goto_66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_fa

    .line 1571
    const/4 v12, 0x2

    if-ne v7, v12, :cond_66

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "entry"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66

    .line 1572
    const/4 v12, 0x0

    const-string v13, "key"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1573
    .restart local v2    # "key":Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "type"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1574
    .restart local v8    # "valType":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "m"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1575
    .restart local v3    # "multiple":Ljava/lang/String;
    if-eqz v3, :cond_bf

    .line 1576
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1577
    .restart local v0    # "count":I
    :cond_98
    :goto_98
    if-lez v0, :cond_5a

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_5a

    .line 1578
    const/4 v12, 0x2

    if-ne v7, v12, :cond_98

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "value"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 1580
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    add-int/lit8 v0, v0, -0x1

    goto :goto_98

    .line 1587
    .end local v0    # "count":I
    :cond_bf
    const-string v12, "b"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e2

    .line 1588
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_d6} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_d6} :catch_ef
    .catchall {:try_start_5a .. :try_end_d6} :catchall_104

    goto :goto_66

    .line 1597
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    :catch_d7
    move-exception v12

    .line 1600
    if-eqz v1, :cond_59

    .line 1602
    :try_start_da
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_df

    goto/16 :goto_59

    .line 1603
    :catch_df
    move-exception v12

    goto/16 :goto_59

    .line 1591
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v7    # "type":I
    .restart local v8    # "valType":Ljava/lang/String;
    :cond_e2
    :try_start_e2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1592
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v5, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ed} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_ed} :catch_ef
    .catchall {:try_start_e2 .. :try_end_ed} :catchall_104

    goto/16 :goto_66

    .line 1598
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_ef
    move-exception v12

    .line 1600
    if-eqz v1, :cond_59

    .line 1602
    :try_start_f2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f7

    goto/16 :goto_59

    .line 1603
    :catch_f7
    move-exception v12

    goto/16 :goto_59

    .line 1600
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v7    # "type":I
    :cond_fa
    if-eqz v1, :cond_59

    .line 1602
    :try_start_fc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_101

    goto/16 :goto_59

    .line 1603
    :catch_101
    move-exception v12

    goto/16 :goto_59

    .line 1600
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .end local v7    # "type":I
    :catchall_104
    move-exception v12

    if-eqz v1, :cond_10a

    .line 1602
    :try_start_107
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10e

    .line 1604
    :cond_10a
    :goto_10a
    throw v12

    .line 1603
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v7    # "type":I
    :catch_10b
    move-exception v12

    goto/16 :goto_59

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    .end local v7    # "type":I
    :catch_10e
    move-exception v13

    goto :goto_10a
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 1067
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    :cond_e
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1080
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1085
    .end local p3    # "defaultValue":I
    :goto_7
    return p3

    .line 1083
    .restart local p3    # "defaultValue":I
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_7

    .line 1084
    :catch_d
    move-exception v0

    .line 1085
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1090
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1095
    .end local p3    # "defaultValue":J
    :goto_7
    return-wide p3

    .line 1093
    .restart local p3    # "defaultValue":J
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p3

    goto :goto_7

    .line 1094
    :catch_d
    move-exception v0

    .line 1095
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readUserListLocked()V
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 665
    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 666
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_11

    .line 667
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    .line 751
    :cond_10
    :goto_10
    return-void

    .line 670
    :cond_11
    const/4 v0, 0x0

    .line 671
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v8, Lcom/android/server/pm/StrictAtomicFile;

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v10}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 673
    .local v8, "userListFile":Lcom/android/server/pm/StrictAtomicFile;
    :try_start_19
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v8, v10}, Lcom/android/server/pm/StrictAtomicFile;->openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 674
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 675
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 678
    :cond_27
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v14, :cond_2f

    if-ne v6, v13, :cond_27

    .line 682
    :cond_2f
    if-eq v6, v14, :cond_48

    .line 683
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 684
    const/4 v10, 0x6

    const-string v11, "Unable to read user list"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 685
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->delete()V

    .line 686
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_40} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_40} :catch_fb
    .catchall {:try_start_19 .. :try_end_40} :catchall_142

    .line 744
    if-eqz v0, :cond_10

    .line 746
    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_10

    .line 747
    :catch_46
    move-exception v10

    goto :goto_10

    .line 690
    :cond_48
    const/4 v10, -0x1

    :try_start_49
    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 691
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "users"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 692
    const/4 v10, 0x0

    const-string v11, "nextSerialNumber"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_67

    .line 694
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 696
    :cond_67
    const/4 v10, 0x0

    const-string/jumbo v11, "version"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 697
    .local v9, "versionNumber":Ljava/lang/String;
    if-eqz v9, :cond_77

    .line 698
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 702
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v9    # "versionNumber":Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v13, :cond_118

    .line 703
    if-ne v6, v14, :cond_77

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 704
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 707
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_db

    .line 708
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 710
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 712
    :cond_ad
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v10, :cond_b7

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-gt v10, v11, :cond_77

    .line 713
    :cond_b7
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_bd} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_bd} :catch_fb
    .catchall {:try_start_49 .. :try_end_bd} :catchall_142

    goto :goto_77

    .line 731
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catch_be
    move-exception v2

    .line 732
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_bf
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 733
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->delete()V

    .line 734
    const/4 v10, 0x6

    const-string v11, "IOException during readUserListLocked"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 735
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 736
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_d1
    .catchall {:try_start_bf .. :try_end_d1} :catchall_142

    .line 744
    if-eqz v0, :cond_10

    .line 746
    :try_start_d3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_10

    .line 747
    :catch_d8
    move-exception v10

    goto/16 :goto_10

    .line 716
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_db
    const/4 v10, 0x6

    :try_start_dc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " might be broken"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_f9} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_dc .. :try_end_f9} :catch_fb
    .catchall {:try_start_dc .. :try_end_f9} :catchall_142

    goto/16 :goto_77

    .line 737
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catch_fb
    move-exception v5

    .line 738
    .local v5, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_fc
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 739
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->delete()V

    .line 740
    const/4 v10, 0x6

    const-string v11, "XmlPullParserException during readUserListLocked"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 741
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 742
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_10e
    .catchall {:try_start_fc .. :try_end_10e} :catchall_142

    .line 744
    if-eqz v0, :cond_10

    .line 746
    :try_start_110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_115

    goto/16 :goto_10

    .line 747
    :catch_115
    move-exception v10

    goto/16 :goto_10

    .line 721
    .end local v5    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_118
    :try_start_118
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_13b

    .line 722
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 723
    const/4 v10, 0x6

    const-string/jumbo v11, "there isn\'t owner user, fallback to single user"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 724
    invoke-virtual {v8}, Lcom/android/server/pm/StrictAtomicFile;->delete()V

    .line 725
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_131} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_118 .. :try_end_131} :catch_fb
    .catchall {:try_start_118 .. :try_end_131} :catchall_142

    .line 744
    :goto_131
    if-eqz v0, :cond_10

    .line 746
    :try_start_133
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_138

    goto/16 :goto_10

    .line 747
    :catch_138
    move-exception v10

    goto/16 :goto_10

    .line 727
    :cond_13b
    :try_start_13b
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 728
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLocked()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_141} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13b .. :try_end_141} :catch_fb
    .catchall {:try_start_13b .. :try_end_141} :catchall_142

    goto :goto_131

    .line 744
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_142
    move-exception v10

    if-eqz v0, :cond_148

    .line 746
    :try_start_145
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    .line 748
    :cond_148
    :goto_148
    throw v10

    .line 747
    :catch_149
    move-exception v11

    goto :goto_148
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .registers 43
    .param p1, "id"    # I

    .prologue
    .line 932
    const/16 v25, 0x0

    .line 934
    .local v25, "retry":I
    const/16 v33, 0x0

    .line 935
    .local v33, "userFile":Lcom/android/server/pm/StrictAtomicFile;
    const/4 v9, 0x0

    .local v9, "fis":Ljava/io/FileInputStream;
    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .local v34, "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 937
    .end local v25    # "retry":I
    .local v26, "retry":I
    :goto_9
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "retry":I
    .restart local v25    # "retry":I
    const/16 v37, 0x3

    move/from16 v0, v26

    move/from16 v1, v37

    if-ge v0, v1, :cond_39c

    .line 938
    const/4 v10, 0x0

    .line 939
    .local v10, "flags":I
    move/from16 v29, p1

    .line 940
    .local v29, "serialNumber":I
    const/16 v17, 0x0

    .line 941
    .local v17, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 942
    .local v11, "iconPath":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 943
    .local v5, "creationTime":J
    const-wide/16 v15, 0x0

    .line 944
    .local v15, "lastLoggedInTime":J
    const-wide/16 v27, 0x0

    .line 945
    .local v27, "salt":J
    const/16 v22, 0x0

    .line 946
    .local v22, "pinHash":Ljava/lang/String;
    const/4 v8, 0x0

    .line 947
    .local v8, "failedAttempts":I
    const-wide/16 v13, 0x0

    .line 948
    .local v13, "lastAttemptTime":J
    const/16 v20, 0x0

    .line 949
    .local v20, "partial":Z
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 951
    .local v24, "restrictions":Landroid/os/Bundle;
    if-eqz v9, :cond_31

    .line 952
    :try_start_2d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_bd

    const/4 v9, 0x0

    .line 957
    :cond_31
    :goto_31
    :try_start_31
    new-instance v33, Lcom/android/server/pm/StrictAtomicFile;

    new-instance v37, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ".xml"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_5c} :catch_3ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_5c} :catch_364
    .catchall {:try_start_31 .. :try_end_5c} :catchall_393

    .line 959
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPw:Ljava/io/PrintWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StrictAtomicFile;->openRead(Ljava/io/PrintWriter;)Ljava/io/FileInputStream;

    move-result-object v9

    .line 960
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 961
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v37, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 964
    :cond_77
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, "type":I
    const/16 v37, 0x2

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_8b

    const/16 v37, 0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_77

    .line 968
    :cond_8b
    const/16 v37, 0x2

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_ca

    .line 969
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 970
    const/16 v37, 0x6

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unable to read user "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_b2} :catch_2be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_b2} :catch_3cc
    .catchall {:try_start_5c .. :try_end_b2} :catchall_3ca

    .line 1051
    if-eqz v9, :cond_3d3

    .line 1053
    :try_start_b4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_c3

    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 1055
    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9

    .line 952
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "retry":I
    .end local v32    # "type":I
    .restart local v25    # "retry":I
    :catch_bd
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_31

    .line 1054
    .end local v7    # "e":Ljava/io/IOException;
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v32    # "type":I
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :catch_c3
    move-exception v37

    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 1055
    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9

    .line 974
    .end local v26    # "retry":I
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v25    # "retry":I
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :cond_ca
    const/16 v37, 0x2

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_2ec

    :try_start_d2
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v38, "user"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2ec

    .line 975
    const-string v37, "id"

    const/16 v38, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v30

    .line 976
    .local v30, "storedId":I
    move/from16 v0, v30

    move/from16 v1, p1

    if-eq v0, v1, :cond_134

    .line 977
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 978
    const/16 v37, 0x6

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unable id "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " does not match the file name "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_122} :catch_2be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_122} :catch_3cc
    .catchall {:try_start_d2 .. :try_end_122} :catchall_3ca

    .line 1051
    if-eqz v9, :cond_3d3

    .line 1053
    :try_start_124
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_12d

    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 1055
    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9

    .line 1054
    .end local v26    # "retry":I
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v25    # "retry":I
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :catch_12d
    move-exception v37

    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 1055
    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9

    .line 981
    .end local v26    # "retry":I
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v25    # "retry":I
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :cond_134
    :try_start_134
    const-string v37, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v29

    .line 982
    const-string v37, "flags"

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 983
    const/16 v37, 0x0

    const-string v38, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 984
    const-string v37, "created"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    .line 985
    const-string v37, "lastLoggedIn"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    .line 986
    const-string v37, "salt"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    .line 987
    const/16 v37, 0x0

    const-string v38, "pinHash"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 988
    const-string v37, "failedAttempts"

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 989
    const-string v37, "lastAttemptMs"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 990
    const/16 v37, 0x0

    const-string v38, "partial"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 991
    .local v36, "valueString":Ljava/lang/String;
    const-string/jumbo v37, "true"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1db

    .line 992
    const/16 v20, 0x1

    .line 995
    :cond_1db
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 997
    .local v18, "outerDepth":I
    :cond_1df
    :goto_1df
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/16 v37, 0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_2ec

    const/16 v37, 0x3

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_1fd

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v18

    if-le v0, v1, :cond_2ec

    .line 998
    :cond_1fd
    const/16 v37, 0x3

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_1df

    const/16 v37, 0x4

    move/from16 v0, v32

    move/from16 v1, v37

    if-eq v0, v1, :cond_1df

    .line 1001
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 1002
    .local v31, "tag":Ljava/lang/String;
    const-string v37, "name"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_22e

    .line 1003
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .line 1004
    const/16 v37, 0x4

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_1df

    .line 1005
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    goto :goto_1df

    .line 1007
    :cond_22e
    const-string v37, "restrictions"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1df

    .line 1008
    const-string v37, "no_config_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1009
    const-string v37, "no_modify_accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1010
    const-string v37, "no_install_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1011
    const-string v37, "no_uninstall_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1012
    const-string v37, "no_share_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1013
    const-string v37, "no_install_unknown_sources"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1015
    const-string v37, "no_config_bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1016
    const-string v37, "no_usb_file_transfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1017
    const-string v37, "no_config_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1018
    const-string v37, "no_remove_user"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_2bc
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_2bc} :catch_2be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_2bc} :catch_3cc
    .catchall {:try_start_134 .. :try_end_2bc} :catchall_3ca

    goto/16 :goto_1df

    .line 1042
    .end local v18    # "outerDepth":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v30    # "storedId":I
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v36    # "valueString":Ljava/lang/String;
    :catch_2be
    move-exception v12

    .line 1043
    .local v12, "ioe":Ljava/io/IOException;
    :goto_2bf
    :try_start_2bf
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 1044
    const/16 v37, 0x6

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "IOException during readUserLocked for id "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1045
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e1
    .catchall {:try_start_2bf .. :try_end_2e1} :catchall_3ca

    .line 1051
    if-eqz v9, :cond_2e6

    .line 1053
    :try_start_2e3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2e6
    .catch Ljava/io/IOException; {:try_start_2e3 .. :try_end_2e6} :catch_3c5

    .end local v12    # "ioe":Ljava/io/IOException;
    :cond_2e6
    :goto_2e6
    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .line 1058
    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9

    .line 1023
    .end local v26    # "retry":I
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "retry":I
    .restart local v32    # "type":I
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :cond_2ec
    :try_start_2ec
    new-instance v35, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v35

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v11, v10}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1024
    .local v35, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v29

    move-object/from16 v1, v35

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1025
    move-object/from16 v0, v35

    iput-wide v5, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1026
    move-object/from16 v0, v35

    iput-wide v15, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1027
    move/from16 v0, v20

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1029
    const-wide/16 v37, 0x0

    cmp-long v37, v27, v37

    if-eqz v37, :cond_35e

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1031
    .local v23, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v23, :cond_34a

    .line 1032
    new-instance v23, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v23    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1033
    .restart local v23    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1035
    :cond_34a
    move-wide/from16 v0, v27

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1036
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, v23

    iput v8, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1038
    move-object/from16 v0, v23

    iput-wide v13, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J
    :try_end_35e
    .catch Ljava/io/IOException; {:try_start_2ec .. :try_end_35e} :catch_2be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ec .. :try_end_35e} :catch_3cc
    .catchall {:try_start_2ec .. :try_end_35e} :catchall_3ca

    .line 1051
    .end local v23    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_35e
    if-eqz v9, :cond_363

    .line 1053
    :try_start_360
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_363
    .catch Ljava/io/IOException; {:try_start_360 .. :try_end_363} :catch_3c3

    .line 1060
    .end local v5    # "creationTime":J
    .end local v8    # "failedAttempts":I
    .end local v10    # "flags":I
    .end local v11    # "iconPath":Ljava/lang/String;
    .end local v13    # "lastAttemptTime":J
    .end local v15    # "lastLoggedInTime":J
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "partial":Z
    .end local v22    # "pinHash":Ljava/lang/String;
    .end local v24    # "restrictions":Landroid/os/Bundle;
    .end local v27    # "salt":J
    .end local v29    # "serialNumber":I
    .end local v32    # "type":I
    .end local v35    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_363
    :goto_363
    return-object v35

    .line 1046
    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v5    # "creationTime":J
    .restart local v8    # "failedAttempts":I
    .restart local v10    # "flags":I
    .restart local v11    # "iconPath":Ljava/lang/String;
    .restart local v13    # "lastAttemptTime":J
    .restart local v15    # "lastLoggedInTime":J
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v20    # "partial":Z
    .restart local v22    # "pinHash":Ljava/lang/String;
    .restart local v24    # "restrictions":Landroid/os/Bundle;
    .restart local v27    # "salt":J
    .restart local v29    # "serialNumber":I
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :catch_364
    move-exception v21

    move-object/from16 v33, v34

    .line 1047
    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .local v21, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :goto_367
    :try_start_367
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/pm/StrictAtomicFile;->saveCorruptedFile()V

    .line 1048
    const/16 v37, 0x6

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "XmlPullParserException during readUserLocked for id "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1049
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_389
    .catchall {:try_start_367 .. :try_end_389} :catchall_3ca

    .line 1051
    if-eqz v9, :cond_2e6

    .line 1053
    :try_start_38b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_38e
    .catch Ljava/io/IOException; {:try_start_38b .. :try_end_38e} :catch_390

    goto/16 :goto_2e6

    .line 1054
    :catch_390
    move-exception v37

    goto/16 :goto_2e6

    .line 1051
    .end local v21    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :catchall_393
    move-exception v37

    move-object/from16 v33, v34

    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :goto_396
    if-eqz v9, :cond_39b

    .line 1053
    :try_start_398
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_39b
    .catch Ljava/io/IOException; {:try_start_398 .. :try_end_39b} :catch_3c8

    .line 1055
    :cond_39b
    :goto_39b
    throw v37

    .line 1059
    .end local v5    # "creationTime":J
    .end local v8    # "failedAttempts":I
    .end local v10    # "flags":I
    .end local v11    # "iconPath":Ljava/lang/String;
    .end local v13    # "lastAttemptTime":J
    .end local v15    # "lastLoggedInTime":J
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "partial":Z
    .end local v22    # "pinHash":Ljava/lang/String;
    .end local v24    # "restrictions":Landroid/os/Bundle;
    .end local v27    # "salt":J
    .end local v29    # "serialNumber":I
    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :cond_39c
    const/16 v37, 0x6

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "failed to read user "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", giving up"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1060
    const/16 v35, 0x0

    move-object/from16 v33, v34

    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    goto :goto_363

    .line 1054
    .restart local v5    # "creationTime":J
    .restart local v8    # "failedAttempts":I
    .restart local v10    # "flags":I
    .restart local v11    # "iconPath":Ljava/lang/String;
    .restart local v13    # "lastAttemptTime":J
    .restart local v15    # "lastLoggedInTime":J
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "partial":Z
    .restart local v22    # "pinHash":Ljava/lang/String;
    .restart local v24    # "restrictions":Landroid/os/Bundle;
    .restart local v27    # "salt":J
    .restart local v29    # "serialNumber":I
    .restart local v32    # "type":I
    .restart local v35    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_3c3
    move-exception v37

    goto :goto_363

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v32    # "type":I
    .end local v35    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "ioe":Ljava/io/IOException;
    :catch_3c5
    move-exception v37

    goto/16 :goto_2e6

    .end local v12    # "ioe":Ljava/io/IOException;
    :catch_3c8
    move-exception v38

    goto :goto_39b

    .line 1051
    :catchall_3ca
    move-exception v37

    goto :goto_396

    .line 1046
    :catch_3cc
    move-exception v21

    goto :goto_367

    .line 1042
    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :catch_3ce
    move-exception v12

    move-object/from16 v33, v34

    .end local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    goto/16 :goto_2bf

    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v32    # "type":I
    :cond_3d3
    move-object/from16 v34, v33

    .end local v33    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    .restart local v34    # "userFile":Lcom/android/server/pm/StrictAtomicFile;
    move/from16 v26, v25

    .end local v25    # "retry":I
    .restart local v26    # "retry":I
    goto/16 :goto_9
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 1316
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1317
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1318
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

    .line 1319
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1320
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1318
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1323
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1324
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "unblockApps"    # Z

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1464
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestrictions(Landroid/os/Bundle;I)V

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->setRestrictionsChallenge(Ljava/lang/String;)Z

    .line 1468
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictions(IZ)V

    .line 1469
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 1470
    if-eqz p2, :cond_19

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->unblockAllAppsForUser(I)V

    .line 1473
    :cond_19
    return-void

    .line 1469
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private removeUserStateLocked(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    .line 1291
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1296
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1305
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1307
    new-instance v0, Lcom/android/server/pm/StrictAtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 1308
    .local v0, "userFile":Lcom/android/server/pm/StrictAtomicFile;
    invoke-virtual {v0}, Lcom/android/server/pm/StrictAtomicFile;->delete()V

    .line 1310
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1311
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1312
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1313
    return-void
.end method

.method private restrictionsFileNameToPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1763
    const-string v0, "res_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".xml"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "changedIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 452
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 1524
    const-string v0, "0123456789ABCDEF"

    .line 1525
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1526
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1530
    :cond_43
    return-object v2
.end method

.method private unblockAllAppsForUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    return-void
.end method

.method private updateUserIdsLocked()V
    .registers 7

    .prologue
    .line 1698
    const/4 v4, 0x0

    .line 1699
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1b

    .line 1700
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_18

    .line 1701
    add-int/lit8 v4, v4, 0x1

    .line 1699
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1704
    :cond_1b
    new-array v3, v4, [I

    .line 1705
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 1706
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    .line 1707
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3e

    .line 1708
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 1706
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1711
    :cond_41
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 1712
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 757
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 758
    .local v1, "userVersion":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2c

    .line 760
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 761
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 762
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104099b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 763
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 765
    :cond_2b
    const/4 v1, 0x1

    .line 768
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 770
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 771
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_46

    .line 772
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 773
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 775
    :cond_46
    const/4 v1, 0x2

    .line 779
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    if-ge v1, v5, :cond_4a

    .line 780
    const/4 v1, 0x4

    .line 783
    :cond_4a
    if-ge v1, v5, :cond_71

    .line 784
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_70
    return-void

    .line 787
    :cond_71
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 788
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    goto :goto_70
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1612
    const/4 v5, 0x0

    .line 1613
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Lcom/android/server/pm/StrictAtomicFile;

    new-instance v14, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 1617
    .local v10, "restrictionsFile":Lcom/android/server/pm/StrictAtomicFile;
    :try_start_13
    invoke-virtual {v10}, Lcom/android/server/pm/StrictAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1618
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1621
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1622
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v14, "utf-8"

    invoke-interface {v11, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1623
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1624
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1626
    const/4 v14, 0x0

    const-string v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1629
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1630
    .local v12, "value":Ljava/lang/Object;
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1631
    const/4 v14, 0x0

    const-string v15, "key"

    invoke-interface {v11, v14, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1633
    instance-of v14, v12, Ljava/lang/Boolean;

    if-eqz v14, :cond_8b

    .line 1634
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string v16, "b"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1635
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1649
    .end local v12    # "value":Ljava/lang/Object;
    :cond_78
    :goto_78
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7e} :catch_7f

    goto :goto_44

    .line 1656
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_7f
    move-exception v4

    .line 1657
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v10, v5}, Lcom/android/server/pm/StrictAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1658
    const-string v14, "UserManagerService"

    const-string v15, "Error writing application restrictions list"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8a
    return-void

    .line 1636
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_8b
    if-eqz v12, :cond_91

    :try_start_8d
    instance-of v14, v12, Ljava/lang/String;

    if-eqz v14, :cond_a7

    .line 1637
    :cond_91
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string v16, "s"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1638
    if-eqz v12, :cond_a4

    check-cast v12, Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    :goto_a0
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_78

    .restart local v12    # "value":Ljava/lang/Object;
    :cond_a4
    const-string v12, ""

    goto :goto_a0

    .line 1640
    :cond_a7
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string v16, "sa"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1641
    check-cast v12, [Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1642
    .local v13, "values":[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "m"

    array-length v0, v13

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1643
    move-object v1, v13

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_ca
    if-ge v7, v9, :cond_78

    aget-object v3, v1, v7

    .line 1644
    .local v3, "choice":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1645
    if-eqz v3, :cond_e4

    .end local v3    # "choice":Ljava/lang/String;
    :goto_d7
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1646
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1643
    add-int/lit8 v7, v7, 0x1

    goto :goto_ca

    .line 1645
    .restart local v3    # "choice":Ljava/lang/String;
    :cond_e4
    const-string v3, ""

    goto :goto_d7

    .line 1652
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "choice":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v13    # "values":[Ljava/lang/String;
    :cond_e7
    const/4 v14, 0x0

    const-string v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1654
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1655
    invoke-virtual {v10, v5}, Lcom/android/server/pm/StrictAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_f3} :catch_7f

    goto :goto_8a
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 590
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 591
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 592
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 600
    :cond_28
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 601
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3d} :catch_41

    .line 604
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_41

    .line 611
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_40
    return-void

    .line 608
    :catch_41
    move-exception v1

    .line 609
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "UserManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 605
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v4

    goto :goto_40
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    :cond_12
    return-void
.end method

.method private writeUserListLocked()V
    .registers 11

    .prologue
    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/android/server/pm/StrictAtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 901
    .local v6, "userListFile":Lcom/android/server/pm/StrictAtomicFile;
    :try_start_8
    invoke-virtual {v6}, Lcom/android/server/pm/StrictAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 902
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 905
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 906
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 907
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 908
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 910
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    const/4 v7, 0x0

    const-string v8, "nextSerialNumber"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    const/4 v7, 0x0

    const-string/jumbo v8, "version"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_79

    .line 915
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 916
    .local v5, "user":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 917
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 921
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_79
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 924
    invoke-virtual {v6, v2}, Lcom/android/server/pm/StrictAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_86} :catch_87

    .line 929
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_86
    return-void

    .line 925
    :catch_87
    move-exception v1

    .line 926
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Lcom/android/server/pm/StrictAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 927
    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 13
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/android/server/pm/StrictAtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/server/pm/StrictAtomicFile;-><init>(Ljava/io/File;)V

    .line 821
    .local v6, "userFile":Lcom/android/server/pm/StrictAtomicFile;
    :try_start_22
    invoke-virtual {v6}, Lcom/android/server/pm/StrictAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 822
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 825
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 826
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 827
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 828
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 830
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v7, 0x0

    const-string v8, "serialNumber"

    iget v9, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const/4 v7, 0x0

    const-string v8, "flags"

    iget v9, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    const/4 v7, 0x0

    const-string v8, "created"

    iget-wide v9, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    const/4 v7, 0x0

    const-string v8, "lastLoggedIn"

    iget-wide v9, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 838
    .local v3, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v3, :cond_d0

    .line 839
    iget-wide v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a8

    .line 840
    const/4 v7, 0x0

    const-string v8, "salt"

    iget-wide v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    :cond_a8
    iget-object v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-eqz v7, :cond_b4

    .line 843
    const/4 v7, 0x0

    const-string v8, "pinHash"

    iget-object v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    :cond_b4
    iget v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    if-eqz v7, :cond_d0

    .line 846
    const/4 v7, 0x0

    const-string v8, "failedAttempts"

    iget v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    const/4 v7, 0x0

    const-string v8, "lastAttemptMs"

    iget-wide v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    :cond_d0
    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v7, :cond_dc

    .line 853
    const/4 v7, 0x0

    const-string v8, "icon"

    iget-object v9, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    :cond_dc
    iget-boolean v7, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_e9

    .line 856
    const/4 v7, 0x0

    const-string v8, "partial"

    const-string/jumbo v9, "true"

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    :cond_e9
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 864
    .local v4, "restrictions":Landroid/os/Bundle;
    if-eqz v4, :cond_144

    .line 865
    const/4 v7, 0x0

    const-string v8, "restrictions"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    const-string v7, "no_config_wifi"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 867
    const-string v7, "no_modify_accounts"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 868
    const-string v7, "no_install_apps"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 869
    const-string v7, "no_uninstall_apps"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 870
    const-string v7, "no_share_location"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 871
    const-string v7, "no_install_unknown_sources"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 873
    const-string v7, "no_config_bluetooth"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 874
    const-string v7, "no_usb_file_transfer"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 875
    const-string v7, "no_config_credentials"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 876
    const-string v7, "no_remove_user"

    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 877
    const/4 v7, 0x0

    const-string v8, "restrictions"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    :cond_144
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 882
    invoke-virtual {v6, v1}, Lcom/android/server/pm/StrictAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_151} :catch_152

    .line 887
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v4    # "restrictions":Landroid/os/Bundle;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_151
    return-void

    .line 883
    :catch_152
    move-exception v2

    .line 884
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing user info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {v6, v1}, Lcom/android/server/pm/StrictAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_151
.end method


# virtual methods
.method public checkRestrictionsChallenge(Ljava/lang/String;)I
    .registers 11
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1397
    const-string v3, "Only system can verify the restrictions pin"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1399
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1400
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1402
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_22

    iget-wide v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v3, :cond_25

    .line 1403
    :cond_22
    const/4 v2, -0x2

    monitor-exit v4

    .line 1423
    :goto_24
    return v2

    .line 1404
    :cond_25
    if-nez p1, :cond_48

    .line 1406
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1407
    .local v2, "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime peek="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    monitor-exit v4

    goto :goto_24

    .line 1426
    .end local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v2    # "waitTime":I
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_45

    throw v3

    .line 1410
    .restart local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_48
    :try_start_48
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1411
    .restart local v2    # "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    if-lez v2, :cond_68

    .line 1413
    monitor-exit v4

    goto :goto_24

    .line 1415
    :cond_68
    iget-wide v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/pm/UserManagerService;->passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1416
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1417
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1418
    const/4 v2, -0x1

    monitor-exit v4

    goto :goto_24

    .line 1420
    :cond_87
    iget v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    .line 1422
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1423
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_48 .. :try_end_9f} :catchall_45

    goto :goto_24
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1152
    const-string v11, "Only the system can create users"

    invoke-static {v11}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_16

    .line 1155
    const/4 v9, 0x0

    .line 1198
    :goto_15
    return-object v9

    .line 1159
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1162
    .local v3, "ident":J
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_104

    .line 1163
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_101

    .line 1164
    :try_start_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 1165
    const-string v11, "UserManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couln\'t create user - user limitation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v9, 0x0

    monitor-exit v13
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_fe

    :try_start_48
    monitor-exit v12
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_101

    .line 1196
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .line 1168
    :cond_4d
    :try_start_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    move-result v8

    .line 1169
    .local v8, "userId":I
    new-instance v9, Landroid/content/pm/UserInfo;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v9, v8, v0, v11, v1}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1170
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1171
    .local v10, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v11, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1173
    .local v5, "now":J
    const-wide v14, 0xdc46c32800L

    cmp-long v11, v5, v14

    if-lez v11, :cond_fb

    .end local v5    # "now":J
    :goto_81
    iput-wide v5, v9, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1174
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    .line 1175
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 1176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1178
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v8, v10}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 1180
    const/4 v11, 0x0

    iput-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    .line 1181
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1183
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1184
    .local v7, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v11, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1185
    monitor-exit v13
    :try_end_bd
    .catchall {:try_start_4d .. :try_end_bd} :catchall_fe

    .line 1186
    :try_start_bd
    monitor-exit v12
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_101

    .line 1187
    if-eqz v9, :cond_f6

    .line 1188
    :try_start_c0
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v2, "addedIntent":Landroid/content/Intent;
    const/high16 v11, 0x10000000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1190
    const-string v11, "android.intent.extra.user_handle"

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1191
    const-string v11, "UserManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DBG_USER] broadcast intent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "android.permission.MANAGE_USERS"

    invoke-virtual {v11, v2, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_c0 .. :try_end_f6} :catchall_104

    .line 1196
    .end local v2    # "addedIntent":Landroid/content/Intent;
    :cond_f6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_15

    .line 1173
    .end local v7    # "restrictions":Landroid/os/Bundle;
    .restart local v5    # "now":J
    :cond_fb
    const-wide/16 v5, 0x0

    goto :goto_81

    .line 1185
    .end local v5    # "now":J
    .end local v8    # "userId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userPath":Ljava/io/File;
    :catchall_fe
    move-exception v11

    :try_start_ff
    monitor-exit v13
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    throw v11

    .line 1186
    :catchall_101
    move-exception v11

    monitor-exit v12
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_101

    :try_start_103
    throw v11
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    .line 1196
    :catchall_104
    move-exception v11

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x0

    .line 1769
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    .line 1771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    :goto_40
    return-void

    .line 1779
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1780
    .local v1, "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1782
    :try_start_4d
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Max support users: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_ff

    .line 1785
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1786
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_82

    .line 1784
    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 1787
    :cond_82
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1788
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    :cond_a7
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_b0

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    :cond_b0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1791
    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_d7

    .line 1793
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    :goto_c3
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_eb

    .line 1802
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7f

    .line 1810
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_d4
    move-exception v5

    monitor-exit v6
    :try_end_d6
    .catchall {:try_start_4d .. :try_end_d6} :catchall_d4

    throw v5

    .line 1795
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_d7
    const/4 v5, 0x0

    :try_start_d8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1796
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1797
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_c3

    .line 1804
    :cond_eb
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1805
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1806
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7f

    .line 1810
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_ff
    monitor-exit v6
    :try_end_100
    .catchall {:try_start_d8 .. :try_end_100} :catchall_d4

    goto/16 :goto_40
.end method

.method public exists(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 397
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 399
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 400
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 401
    const/4 v1, 0x1

    .line 406
    :goto_20
    return v1

    .line 405
    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_24
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v2

    goto :goto_20

    .line 407
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method finishRemoveUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .prologue
    .line 1248
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishRemoveUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1253
    .local v9, "ident":J
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v1, "addedIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1255
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1256
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_5b

    .line 1282
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1284
    return-void

    .line 1282
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_5b
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1333
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1335
    :cond_14
    const-string v0, "Only system can get restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1337
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1340
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    .line 1345
    :goto_2b
    return-object v0

    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    goto :goto_2b

    .line 1346
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    throw v0
.end method

.method public getUserHandle(I)I
    .registers 10
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 1679
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1681
    const/16 v4, 0x64

    if-lt p1, v4, :cond_21

    .line 1682
    :try_start_7
    const-string v4, "PERSONA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PERSONA,returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    monitor-exit v5

    .line 1690
    .end local p1    # "userSerialNumber":I
    :goto_20
    return p1

    .line 1686
    .restart local p1    # "userSerialNumber":I
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_25
    if-ge v1, v2, :cond_37

    aget v3, v0, v1

    .line 1687
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v4, p1, :cond_34

    monitor-exit v5

    move p1, v3

    goto :goto_20

    .line 1686
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1690
    .end local v3    # "userId":I
    :cond_37
    const/4 p1, -0x1

    monitor-exit v5

    goto :goto_20

    .line 1691
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local p1    # "userSerialNumber":I
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 457
    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "info":Landroid/content/pm/UserInfo;
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 462
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 467
    :goto_1c
    if-eqz v1, :cond_22

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_48

    .line 468
    :cond_22
    const-string v2, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    monitor-exit v4

    move-object v2, v3

    .line 474
    :goto_3c
    return-object v2

    .line 464
    :cond_3d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/UserInfo;

    move-object v1, v0

    goto :goto_1c

    .line 471
    :cond_48
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v2, :cond_4f

    .line 472
    monitor-exit v4

    move-object v2, v3

    goto :goto_3c

    .line 474
    :cond_4f
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v4

    goto :goto_3c

    .line 475
    :catchall_57
    move-exception v2

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_57

    throw v2
.end method

.method public getUserIds()[I
    .registers 11

    .prologue
    .line 620
    const/4 v5, 0x0

    .line 621
    .local v5, "personaIds":[I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v7, :cond_b

    .line 622
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v5

    .line 624
    :cond_b
    const/4 v0, 0x0

    .line 625
    .local v0, "adminFlag":Z
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 626
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    :try_start_10
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1f

    .line 627
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v7, v7, v2

    if-nez v7, :cond_1c

    .line 628
    const/4 v0, 0x1

    .line 626
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 632
    :cond_1f
    if-eqz v5, :cond_5e

    .line 633
    const/4 v1, 0x0

    .line 635
    .local v1, "allIds":[I
    if-nez v0, :cond_44

    .line 636
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v7, v7

    array-length v9, v5

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    new-array v1, v7, [I

    .line 637
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v7, v7

    array-length v9, v5

    add-int/2addr v7, v9

    const/4 v9, 0x0

    aput v9, v1, v7

    .line 641
    :goto_35
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_36
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v7, v7

    if-ge v3, v7, :cond_4c

    .line 642
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v7, v7, v3

    aput v7, v1, v3

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 639
    .end local v3    # "j":I
    :cond_44
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v7, v7

    array-length v9, v5

    add-int/2addr v7, v9

    new-array v1, v7, [I

    goto :goto_35

    .line 644
    .restart local v3    # "j":I
    :cond_4c
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v6, v7

    .line 645
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_50
    array-length v7, v5

    if-ge v4, v7, :cond_5c

    .line 646
    add-int v7, v6, v4

    aget v9, v5, v4

    aput v9, v1, v7

    .line 645
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 649
    :cond_5c
    monitor-exit v8

    .line 652
    .end local v1    # "allIds":[I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v6    # "size":I
    :goto_5d
    return-object v1

    :cond_5e
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v8

    goto :goto_5d

    .line 655
    :catchall_62
    move-exception v7

    monitor-exit v8
    :try_end_64
    .catchall {:try_start_10 .. :try_end_64} :catchall_62

    throw v7
.end method

.method getUserIdsLPr()[I
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 364
    :goto_12
    return-object v0

    .line 362
    :cond_13
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    goto :goto_12

    .line 365
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 538
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 543
    :goto_e
    return-object v1

    .line 541
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 543
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_22

    move-object v1, v0

    :goto_1d
    monitor-exit v2

    goto :goto_e

    .line 544
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1

    .line 543
    .restart local v0    # "restrictions":Landroid/os/Bundle;
    :cond_22
    :try_start_22
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1f

    goto :goto_1d
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1666
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1667
    monitor-exit v1

    .line 1673
    .end local p1    # "userHandle":I
    :goto_10
    return p1

    .line 1672
    .restart local p1    # "userHandle":I
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 p1, -0x1

    monitor-exit v1

    goto :goto_10

    .line 1674
    .end local p1    # "userHandle":I
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0

    .line 1673
    .restart local p1    # "userHandle":I
    :cond_1d
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget p1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .end local p1    # "userHandle":I
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    goto :goto_10
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 12
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    const-string v7, "query users"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 294
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 295
    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3e

    .line 297
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 298
    .local v5, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_2b

    .line 296
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 301
    :cond_2b
    if-eqz p1, :cond_37

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_28

    .line 302
    :cond_37
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 328
    .end local v0    # "i":I
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_3b
    move-exception v7

    monitor-exit v8
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v7

    .line 311
    .restart local v0    # "i":I
    .restart local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3e
    move-object v4, v6

    .line 312
    .local v4, "resultUMS":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .line 313
    .local v3, "resultPMS":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :try_start_40
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v7, :cond_4a

    .line 314
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 316
    :cond_4a
    if-eqz v3, :cond_6b

    .line 317
    if-nez v4, :cond_53

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "resultUMS":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v4    # "resultUMS":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 322
    .local v2, "personaInfo":Landroid/content/pm/PersonaInfo;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->convertToUserInfo(Landroid/content/pm/PersonaInfo;)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 326
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_6b
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_3b

    return-object v4
.end method

.method public hasRestrictionsChallenge()Z
    .registers 4

    .prologue
    .line 1440
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1441
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1442
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasRestrictionsPinLocked(I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1443
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isGuestEnabled()Z
    .registers 3

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    monitor-exit v1

    return v0

    .line 511
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isRestricted()Z
    .registers 4

    .prologue
    .line 371
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 372
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 373
    const/4 v1, 0x0

    .line 377
    :goto_11
    return v1

    .line 376
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v2

    goto :goto_11

    .line 378
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1
.end method

.method logToFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1826
    const-string v2, "UserManagerService"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    if-eqz p1, :cond_88

    .line 1828
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1829
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v2, "%d-%d-%d-%d-%d-%d-%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x6

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, "dateString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1836
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateString":Ljava/lang/String;
    :cond_88
    return-void
.end method

.method public makeInitialized(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 521
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 524
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_2e

    .line 525
    :cond_16
    const-string v1, "UserManagerService"

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

    .line 527
    :cond_2e
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3d

    .line 528
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 529
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 531
    :cond_3d
    monitor-exit v2

    .line 532
    return-void

    .line 531
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public removeRestrictions()V
    .registers 3

    .prologue
    .line 1456
    const-string v1, "Only system can remove restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1458
    .local v0, "userHandle":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->removeRestrictionsForUser(IZ)V

    .line 1459
    return-void
.end method

.method public removeUser(I)Z
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1207
    const-string v5, "Only the system can remove users"

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1209
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1244
    :goto_13
    return v4

    .line 1215
    :cond_14
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1216
    :try_start_17
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1217
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_23

    if-nez v2, :cond_28

    .line 1218
    :cond_23
    monitor-exit v5

    goto :goto_13

    .line 1226
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_25
    move-exception v3

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_25

    throw v3

    .line 1220
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_28
    :try_start_28
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1224
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/content/pm/UserInfo;->partial:Z

    .line 1225
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1226
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_25

    .line 1227
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :try_start_4d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_59} :catch_5e

    move-result v1

    .line 1244
    .local v1, "res":I
    if-nez v1, :cond_60

    :goto_5c
    move v4, v3

    goto :goto_13

    .line 1240
    .end local v1    # "res":I
    :catch_5e
    move-exception v0

    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_13

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_60
    move v3, v4

    .line 1244
    goto :goto_5c
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p3, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1354
    :cond_14
    const-string v0, "Only system can set restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1356
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1359
    monitor-exit v1

    .line 1366
    :goto_29
    return-void

    .line 1364
    :cond_2a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1365
    monitor-exit v1

    goto :goto_29

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public setGuestEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 480
    const-string v2, "enable guest users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 482
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_15

    .line 505
    :goto_14
    return-void

    .line 486
    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 487
    :try_start_18
    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    if-eq v2, p1, :cond_50

    .line 488
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 491
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 492
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v2, :cond_45

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 493
    if-nez p1, :cond_40

    .line 494
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 496
    :cond_40
    monitor-exit v3

    goto :goto_14

    .line 504
    .end local v0    # "i":I
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_18 .. :try_end_44} :catchall_42

    throw v2

    .line 490
    .restart local v0    # "i":I
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 500
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_48
    if-eqz p1, :cond_50

    .line 501
    :try_start_4a
    const-string v2, "Guest"

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/UserManagerService;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 504
    .end local v0    # "i":I
    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_42

    goto :goto_14
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .registers 11
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 1370
    const-string v3, "Only system can modify the restrictions pin"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1372
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1373
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1374
    .local v1, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v1, :cond_1b

    .line 1375
    new-instance v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1377
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_1b
    if-nez p1, :cond_37

    .line 1378
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1379
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1389
    :goto_24
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1390
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1391
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_4f

    .line 1392
    const/4 v3, 0x1

    return v3

    .line 1382
    :cond_37
    :try_start_37
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_43} :catch_52
    .catchall {:try_start_37 .. :try_end_43} :catchall_4f

    .line 1386
    :goto_43
    :try_start_43
    iget-wide v5, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/pm/UserManagerService;->passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1387
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    goto :goto_24

    .line 1391
    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catchall_4f
    move-exception v3

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_4f

    throw v3

    .line 1383
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catch_52
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x43e0000000000000L

    mul-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_4f

    goto :goto_43
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 433
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 436
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_31

    .line 437
    :cond_17
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v2

    .line 444
    :goto_30
    return-void

    .line 440
    :cond_31
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 441
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 442
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_3c

    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_30

    .line 442
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 416
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_17

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_31

    .line 417
    :cond_17
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v3

    .line 429
    :cond_30
    :goto_30
    return-void

    .line 420
    :cond_31
    if-eqz p2, :cond_41

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 421
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 422
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 423
    const/4 v0, 0x1

    .line 425
    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_48

    .line 426
    if-eqz v0, :cond_30

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_30

    .line 425
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 549
    const-string v0, "setUserRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 560
    :goto_11
    return-void

    .line 555
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 559
    monitor-exit v1

    goto :goto_11

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method systemReady()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 286
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userForeground(I)V

    .line 289
    return-void
.end method

.method public userForeground(I)V
    .registers 13
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1719
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1720
    :try_start_5
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1721
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1722
    .local v0, "now":J
    if-eqz v5, :cond_17

    iget-boolean v9, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v9, :cond_32

    .line 1723
    :cond_17
    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userForeground: unknown user #"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    monitor-exit v8

    .line 1737
    :goto_31
    return-void

    .line 1726
    :cond_32
    const-wide v9, 0xdc46c32800L

    cmp-long v9, v0, v9

    if-lez v9, :cond_40

    .line 1727
    iput-wide v0, v5, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1728
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1733
    :cond_40
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1734
    .local v2, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v2, :cond_5e

    move-wide v3, v6

    .line 1735
    .local v3, "salt":J
    :goto_4b
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-nez v9, :cond_61

    cmp-long v6, v3, v6

    if-nez v6, :cond_61

    const/4 v6, 0x1

    :goto_56
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictions(IZ)V

    .line 1736
    monitor-exit v8

    goto :goto_31

    .end local v0    # "now":J
    .end local v2    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v3    # "salt":J
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :catchall_5b
    move-exception v6

    monitor-exit v8
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5b

    throw v6

    .line 1734
    .restart local v0    # "now":J
    .restart local v2    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_5e
    :try_start_5e
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_5b

    goto :goto_4b

    .line 1735
    .restart local v3    # "salt":J
    :cond_61
    const/4 v6, 0x0

    goto :goto_56
.end method

.method public wipeUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 516
    const-string/jumbo v0, "wipe user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 518
    return-void
.end method
