.class public Lcom/android/server/ssrm/SortingMachine;
.super Ljava/lang/Object;
.source "SortingMachine.java"


# static fields
.field public static final CATEGORY_BROWSER:I = 0x0

.field public static final CATEGORY_GAME_2D:I = 0x1

.field public static final CATEGORY_GAME_3D:I = 0x2

.field public static final CATEGORY_GHEAVY_CONTENT:I = 0x4

.field public static final CATEGORY_HEAVY_CONTENT:I = 0x3

.field public static final CATEGORY_MAX:I = 0x6

.field public static final CATEGORY_PRELOAD:I = 0x5

.field private static final DB_FULL_PATH:Ljava/lang/String; = "/data/system/ssrm_secure.db"

.field static final SNS1_PKG:Ljava/lang/String;

.field static final SNS2_PKG:Ljava/lang/String;

.field static final SNS3_PKG:Ljava/lang/String;

.field static final SNS4_PKG:Ljava/lang/String;

.field static final SNS5_PKG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/SortingMachine;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBootComplete:Z

.field private final mContext:Landroid/content/Context;

.field private final mCpuCoreHelper:Landroid/os/DVFSHelper;

.field private final mCpuHelper:Landroid/os/DVFSHelper;

.field private mId:Ljava/lang/String;

.field private final mPackageAddedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x13

    .line 279
    new-array v0, v1, [I

    fill-array-data v0, :array_40

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS1_PKG:Ljava/lang/String;

    .line 283
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS2_PKG:Ljava/lang/String;

    .line 287
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS3_PKG:Ljava/lang/String;

    .line 291
    new-array v0, v1, [I

    fill-array-data v0, :array_a6

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS4_PKG:Ljava/lang/String;

    .line 295
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_d0

    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS5_PKG:Ljava/lang/String;

    return-void

    .line 279
    :array_40
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

    .line 283
    :array_6a
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

    .line 287
    :array_8a
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

    .line 291
    :array_a6
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

    .line 295
    :array_d0
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
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v2, "SSRMv2:SortingMachine"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    .line 194
    new-instance v2, Lcom/android/server/ssrm/SortingMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ssrm/SortingMachine$1;-><init>(Lcom/android/server/ssrm/SortingMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mPackageAddedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    .line 448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    .line 89
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2e
    const/4 v2, 0x6

    if-ge v15, v2, :cond_40

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    .line 93
    :cond_40
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v5, "filterPackageAdded":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ssrm/SortingMachine;->mPackageAddedIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    sget-boolean v2, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v2, :cond_d1

    .line 101
    const-string v2, "7373726d5f746573745f6b6579"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    .line 112
    :goto_6c
    new-instance v6, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v8, "SSRM_PKG_OPT"

    const/16 v9, 0xc

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v17

    .line 114
    .local v17, "table":[I
    if-eqz v17, :cond_96

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    const/4 v4, 0x0

    aget v4, v17, v4

    int-to-long v6, v4

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 118
    :cond_96
    new-instance v6, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v8, "SSRM_PKG_OPT2"

    const/16 v9, 0xe

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v13

    .line 121
    .local v13, "coreTable":[I
    if-eqz v13, :cond_c0

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    aget v4, v13, v4

    int-to-long v6, v4

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 125
    :cond_c0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ssrm_secure.db"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d0

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/SortingMachine;->scanAndCreateDb()V

    .line 128
    :cond_d0
    return-void

    .line 103
    .end local v13    # "coreTable":[I
    .end local v17    # "table":[I
    :cond_d1
    new-instance v12, Lcom/android/server/ssrm/AESEncryption;

    invoke-direct {v12}, Lcom/android/server/ssrm/AESEncryption;-><init>()V

    .line 105
    .local v12, "aes":Lcom/android/server/ssrm/AESEncryption;
    :try_start_d6
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v16

    .line 106
    .local v16, "key":Ljavax/crypto/SecretKey;
    invoke-interface/range {v16 .. v16}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e9} :catch_ea

    goto :goto_6c

    .line 107
    .end local v16    # "key":Ljavax/crypto/SecretKey;
    :catch_ea
    move-exception v14

    .line 108
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "7373726d5f746573745f6b6579"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    goto/16 :goto_6c
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/SortingMachine;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ssrm/SortingMachine;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/SortingMachine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    .line 75
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    return-object v0
.end method

.method private getNonPreloadApplications(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 173
    .local v5, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "launcherIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/16 v8, 0x20

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 177
    .local v4, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 181
    .local v6, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    :try_start_2e
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 183
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1c

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1c

    .line 184
    if-eqz v6, :cond_1c

    .line 185
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_3f} :catch_40

    goto :goto_1c

    .line 188
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_40
    move-exception v1

    .line 189
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1c

    .line 192
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_45
    return-void
.end method

.method private getPackageList(I)Ljava/lang/String;
    .registers 9
    .param p1, "category"    # I

    .prologue
    .line 553
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 554
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 555
    .local v1, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 556
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 557
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 560
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "packageList":Ljava/lang/String;
    return-object v3
.end method

.method public static isSnsApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS1_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS2_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS3_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS4_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->SNS5_PKG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private registerBrowserPackages()V
    .registers 9

    .prologue
    .line 220
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 222
    .local v3, "powerManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 224
    .local v0, "browserTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v6, "http://"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    const/16 v6, 0x200

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 230
    .local v5, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 232
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 236
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_50
    return-void
.end method

.method private reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 153
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_18
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 157
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    .line 160
    .local v1, "hash":I
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I

    move-result v6

    .line 162
    .local v6, "result":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_33

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 163
    :cond_33
    invoke-virtual {p2, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_36} :catch_37

    goto :goto_a

    .line 165
    .end local v1    # "hash":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "result":I
    :catch_37
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a

    .line 169
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private scanAndCreateDb()V
    .registers 11

    .prologue
    .line 131
    const-wide/16 v3, 0x0

    .local v3, "startTime":J
    const-wide/16 v1, 0x0

    .line 133
    .local v1, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "downloadAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SortingMachine;->getNonPreloadApplications(Ljava/util/ArrayList;)V

    .line 139
    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    .line 141
    .local v5, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, v5}, Lcom/android/server/ssrm/SortingMachine;->reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 147
    const-string v6, "SSRMv2:SortingMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scanAndCreateDb:: elapsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .registers 2
    .param p0, "raw"    # [I

    .prologue
    .line 619
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bootComplete()V
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    if-eqz v0, :cond_5

    .line 217
    :goto_4
    return-void

    .line 210
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    .line 212
    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    .line 214
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->registerPreloadPackages()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->readAppListFromDb()V

    goto :goto_4
.end method

.method public isAppInCategory(ILjava/lang/String;)Z
    .registers 6
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    const/4 v2, 0x6

    if-ge p1, v2, :cond_6

    if-nez p2, :cond_7

    .line 267
    :cond_6
    :goto_6
    return v1

    .line 263
    :cond_7
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 264
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6
.end method

.method public isBrowserApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 240
    .local v0, "browserTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_d

    if-nez p1, :cond_e

    .line 244
    :cond_d
    :goto_d
    return v1

    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_d
.end method

.method public isHeavyApp(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 249
    .local v0, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 256
    :cond_12
    :goto_12
    return v2

    .line 252
    :cond_13
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 253
    .local v1, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 256
    :cond_24
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public isPreloadApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 272
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_d

    if-nez p1, :cond_f

    .line 273
    :cond_d
    const/4 v1, 0x0

    .line 276
    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_e
.end method

.method parseDex(Ljava/io/ByteArrayOutputStream;)Lcom/android/server/ssrm/Dex;
    .registers 9
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 591
    if-nez p1, :cond_4

    .line 592
    const/4 v0, 0x0

    .line 615
    :goto_3
    return-object v0

    .line 595
    :cond_4
    const/4 v0, 0x0

    .line 598
    .local v0, "dex":Lcom/android/server/ssrm/Dex;
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 600
    .local v3, "rawData":[B
    new-instance v1, Lcom/android/server/ssrm/Dex;

    invoke-direct {v1, v3}, Lcom/android/server/ssrm/Dex;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_71

    .line 601
    .end local v0    # "dex":Lcom/android/server/ssrm/Dex;
    .local v1, "dex":Lcom/android/server/ssrm/Dex;
    :try_start_e
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderFileSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->parseStringItems()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_67} :catch_8f

    move-object v0, v1

    .line 610
    .end local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .end local v3    # "rawData":[B
    .restart local v0    # "dex":Lcom/android/server/ssrm/Dex;
    :goto_68
    :try_start_68
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_3

    .line 611
    :catch_6c
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 605
    .end local v2    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v2

    .line 606
    .local v2, "e":Ljava/lang/Exception;
    :goto_72
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDex:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 605
    .end local v0    # "dex":Lcom/android/server/ssrm/Dex;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .restart local v3    # "rawData":[B
    :catch_8f
    move-exception v2

    move-object v0, v1

    .end local v1    # "dex":Lcom/android/server/ssrm/Dex;
    .restart local v0    # "dex":Lcom/android/server/ssrm/Dex;
    goto :goto_72
.end method

.method readAppListFromDb()V
    .registers 22

    .prologue
    .line 451
    new-instance v19, Ljava/io/File;

    const-string v20, "/data/system/ssrm_secure.db"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_e

    .line 504
    :cond_d
    return-void

    .line 457
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v15

    .line 458
    .local v15, "mSecureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    const/4 v10, 0x0

    .line 459
    .local v10, "heavyAppList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 461
    .local v7, "gheavyAppList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 462
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v19

    if-eqz v19, :cond_98

    .line 464
    :try_start_30
    const-string v19, "SELECT * FROM t ;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 465
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_95

    .line 466
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_41} :catch_d8

    move-object v8, v7

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .local v8, "gheavyAppList":Ljava/lang/String;
    move-object v11, v10

    .line 467
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .local v11, "heavyAppList":Ljava/lang/String;
    :goto_43
    :try_start_43
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_90

    .line 468
    const-string v19, "category"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "category_":Ljava/lang/String;
    const-string v19, "package_list"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, "package_":Ljava/lang/String;
    const-string v19, "heavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7d

    .line 471
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_76} :catch_11d

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    move-object v7, v8

    .line 475
    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    :goto_77
    :try_start_77
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_7a} :catch_d8

    move-object v8, v7

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    move-object v11, v10

    .line 476
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    goto :goto_43

    .line 472
    :cond_7d
    :try_start_7d
    const-string v19, "gheavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_121

    .line 473
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto :goto_77

    .line 477
    .end local v3    # "category_":Ljava/lang/String;
    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .end local v16    # "package_":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    :cond_90
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_93} :catch_11d

    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .line 482
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    :cond_95
    :goto_95
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 485
    :cond_98
    if-eqz v10, :cond_dd

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_dd

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Hashtable;

    .line 487
    .local v12, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 488
    .local v18, "values":[Ljava/lang/String;
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v14, v2

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_ba
    if-ge v13, v14, :cond_dd

    aget-object v17, v2, v13

    .line 489
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_d5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_d5

    .line 490
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_d5
    add-int/lit8 v13, v13, 0x1

    goto :goto_ba

    .line 479
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v12    # "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :catch_d8
    move-exception v6

    .line 480
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :goto_d9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_95

    .line 495
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_dd
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Hashtable;

    .line 497
    .local v9, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 498
    .restart local v18    # "values":[Ljava/lang/String;
    move-object/from16 v2, v18

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v14, v2

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_ff
    if-ge v13, v14, :cond_d

    aget-object v17, v2, v13

    .line 499
    .restart local v17    # "value":Ljava/lang/String;
    if-eqz v17, :cond_11a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_11a

    .line 500
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_11a
    add-int/lit8 v13, v13, 0x1

    goto :goto_ff

    .line 479
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v9    # "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    :catch_11d
    move-exception v6

    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto :goto_d9

    .end local v7    # "gheavyAppList":Ljava/lang/String;
    .end local v10    # "heavyAppList":Ljava/lang/String;
    .restart local v3    # "category_":Ljava/lang/String;
    .restart local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v16    # "package_":Ljava/lang/String;
    :cond_121
    move-object v7, v8

    .end local v8    # "gheavyAppList":Ljava/lang/String;
    .restart local v7    # "gheavyAppList":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "heavyAppList":Ljava/lang/String;
    .restart local v10    # "heavyAppList":Ljava/lang/String;
    goto/16 :goto_77
.end method

.method registerPreloadPackages()V
    .registers 11

    .prologue
    .line 565
    iget-object v8, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Hashtable;

    .line 567
    .local v7, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 568
    .local v4, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v2, "launcherIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/16 v8, 0x20

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 573
    .local v3, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 574
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 577
    .local v5, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    :try_start_37
    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 579
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_25

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_25

    .line 580
    invoke-virtual {v7, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_46} :catch_47

    goto :goto_25

    .line 582
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_47
    move-exception v8

    goto :goto_25

    .line 585
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_49
    const-string v8, "com.sec.android.app.launcher"

    const-string v9, "com.sec.android.app.launcher"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v8, "com.sec.android.app.knoxlauncher"

    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 307
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 446
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2710

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2710

    invoke-virtual/range {v25 .. v26}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 314
    const/16 v18, 0x0

    .line 315
    .local v18, "mIsHeavyPackage":Z
    const/16 v19, 0x0

    .line 316
    .local v19, "mIsHeavyPackage2":Z
    const/16 v17, 0x0

    .line 319
    .local v17, "mIsGHeavyPackage":Z
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 321
    .local v21, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x40

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 322
    .local v20, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->hashCode()I

    move-result v12

    .line 323
    .local v12, "hash":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_4a} :catch_d0

    move-result v22

    .line 324
    .local v22, "result":I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_5b

    const/16 v25, 0x3

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_5d

    .line 325
    :cond_5b
    const/16 v19, 0x1

    .line 331
    .end local v12    # "hash":I
    .end local v20    # "pi":Landroid/content/pm/PackageInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "result":I
    :cond_5d
    :goto_5d
    const-wide/16 v23, 0x0

    .local v23, "startTime":J
    const-wide/16 v7, 0x0

    .line 333
    .local v7, "endTime":J
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "apkPath = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", packageName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 336
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/android/server/ssrm/Unzipper;->unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 337
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 338
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Elapsed time to unzip DEX = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sub-long v27, v7, v23

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez v3, :cond_ef

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_4

    .line 327
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "endTime":J
    .end local v23    # "startTime":J
    :catch_d0
    move-exception v6

    .line 328
    .local v6, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 345
    .end local v6    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "endTime":J
    .restart local v23    # "startTime":J
    :cond_ef
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 346
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/SortingMachine;->parseDex(Ljava/io/ByteArrayOutputStream;)Lcom/android/server/ssrm/Dex;

    move-result-object v4

    .line 347
    .local v4, "dex":Lcom/android/server/ssrm/Dex;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 348
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Elapsed time to optimize DEX = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sub-long v27, v7, v23

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-nez v4, :cond_12d

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_4

    .line 355
    :cond_12d
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v9, v0, [[Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "474c425f56455253494f4e"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "676c62656e63686d61726b"

    aput-object v28, v26, v27

    aput-object v26, v9, v25

    .line 362
    .local v9, "favoriteGHeavyWords":[[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_14c
    :try_start_14c
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_187

    .line 363
    const/4 v14, 0x0

    .line 364
    .local v14, "hitCount":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_156
    aget-object v25, v9, v15

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_17a

    .line 365
    iget-object v0, v4, Lcom/android/server/ssrm/Dex;->sStringTable:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    aget-object v26, v9, v15

    aget-object v26, v26, v16

    invoke-static/range {v26 .. v26}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_177

    .line 366
    add-int/lit8 v14, v14, 0x1

    .line 364
    :cond_177
    add-int/lit8 v16, v16, 0x1

    goto :goto_156

    .line 369
    :cond_17a
    aget-object v25, v9, v15

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_181} :catch_292

    move/from16 v0, v25

    if-ne v14, v0, :cond_28e

    .line 370
    const/16 v17, 0x1

    .line 378
    .end local v14    # "hitCount":I
    .end local v16    # "j":I
    :cond_187
    :goto_187
    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v10, v0, [[Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "616e747574752e6462"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "42656e63684d61726b"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "6162656e63686d61726b"

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const-string v28, "72616e6b696e67"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x1

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "42656e63686d61726b52756e6e61626c65"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "726c62656e63686d61726b"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "616e64726f6964407265646c6963656e73652e636f6d"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x2

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "536d61727462656e6368"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "726573756c74735f61707073"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "636f6d2e736d61727462656e63682e646f6e617465"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x3

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "6765656b62656e63682d6a6e69"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "737973696e666f5f6974656d"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "42656e63686d61726b41637469766974792e6a617661"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x4

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "62656e63686d61726b"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "64617669642e67696c62657274406f626a6563742d726566696e6572792e636f6d"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x5

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "434642656e6368"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "726573756c745f707265666572656e6365"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "6d61726b65743a2f2f7365617263683f713d7075623a436861696e66697265"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    const/16 v25, 0x6

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "6c696e7061636b"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "7777772e677265656e65636f6d707574696e672e636f6d2f676574746f7031302e706870"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "42656e63686d61726b2e6a617661"

    aput-object v28, v26, v27

    aput-object v26, v10, v25

    .line 411
    .local v10, "favoriteHeavyWords":[[Ljava/lang/String;
    const/4 v15, 0x0

    :goto_260
    :try_start_260
    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_2be

    .line 412
    const/4 v14, 0x0

    .line 413
    .restart local v14    # "hitCount":I
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_26a
    aget-object v25, v10, v15

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_2b1

    .line 414
    iget-object v0, v4, Lcom/android/server/ssrm/Dex;->sStringTable:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    aget-object v26, v10, v15

    aget-object v26, v26, v16

    invoke-static/range {v26 .. v26}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_286} :catch_2fb

    move-result v25

    if-eqz v25, :cond_28b

    .line 415
    add-int/lit8 v14, v14, 0x1

    .line 413
    :cond_28b
    add-int/lit8 v16, v16, 0x1

    goto :goto_26a

    .line 362
    .end local v10    # "favoriteHeavyWords":[[Ljava/lang/String;
    :cond_28e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14c

    .line 374
    .end local v14    # "hitCount":I
    .end local v16    # "j":I
    :catch_292
    move-exception v5

    .line 375
    .local v5, "e":Ljava/lang/Exception;
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_187

    .line 418
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "favoriteHeavyWords":[[Ljava/lang/String;
    .restart local v14    # "hitCount":I
    .restart local v16    # "j":I
    :cond_2b1
    :try_start_2b1
    aget-object v25, v10, v15

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2b8} :catch_2fb

    move/from16 v0, v25

    if-ne v14, v0, :cond_2f7

    .line 419
    const/16 v18, 0x1

    .line 427
    .end local v14    # "hitCount":I
    .end local v16    # "j":I
    :cond_2be
    :goto_2be
    if-eqz v17, :cond_319

    .line 428
    const-string v25, "SSRMv2:SortingMachine"

    const-string v26, "@ptimization is done."

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Hashtable;

    .line 430
    .local v11, "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    .line 441
    .end local v11    # "gheavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2df
    const/4 v4, 0x0

    .line 442
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_4

    .line 411
    .restart local v14    # "hitCount":I
    .restart local v16    # "j":I
    :cond_2f7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_260

    .line 423
    .end local v14    # "hitCount":I
    .end local v16    # "j":I
    :catch_2fb
    move-exception v5

    .line 424
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v25, "SSRMv2:SortingMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "e = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2be

    .line 432
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_319
    if-nez v18, :cond_31d

    if-eqz v19, :cond_33d

    .line 433
    :cond_31d
    const-string v25, "SSRMv2:SortingMachine"

    const-string v26, "@ptimization is done."

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Hashtable;

    .line 435
    .local v13, "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    goto :goto_2df

    .line 438
    .end local v13    # "heavyTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33d
    const-string v25, "SSRMv2:SortingMachine"

    const-string v26, "Optimization is done."

    invoke-static/range {v25 .. v26}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2df
.end method

.method writeAppListToDb()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 507
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "heavyAppList":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "gheavyAppList":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/system/ssrm_org.db"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 513
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 517
    :cond_1b
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmDatabaseHelper;

    move-result-object v1

    .line 518
    .local v1, "dbHelper":Lcom/android/server/ssrm/SsrmDatabaseHelper;
    invoke-virtual {v1}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 519
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 520
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v6, "insertValues":Landroid/content/ContentValues;
    const-string v9, "category"

    const-string v10, "heavy_app"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v9, "package_list"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 525
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v7, "insertValues2":Landroid/content/ContentValues;
    const-string v9, "category"

    const-string v10, "gheavy_app"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v9, "package_list"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 530
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 532
    .end local v6    # "insertValues":Landroid/content/ContentValues;
    .end local v7    # "insertValues2":Landroid/content/ContentValues;
    :cond_5e
    invoke-virtual {v1}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->close()V

    .line 536
    :try_start_61
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v8

    .line 538
    .local v8, "secureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->generateSecureDB(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_76

    .line 544
    .end local v8    # "secureDbHelper":Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    :goto_6c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_75

    .line 545
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 547
    :cond_75
    return-void

    .line 539
    :catch_76
    move-exception v2

    .line 540
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c
.end method
