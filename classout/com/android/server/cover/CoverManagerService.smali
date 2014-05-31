.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field private static final DEBUG:Z = true

.field private static final MSG_DISABLE_PARTIAL_DISP:I = 0x7

.field private static final MSG_ENABLE_PARTIAL_DISP:I = 0x6

.field private static final MSG_HIDE_SVIEW_COVER:I = 0x1

.field private static final MSG_SEND_COVER_STATE:I = 0x0

.field private static final MSG_SHOW_SVIEW_COVER:I = 0x2

.field private static final MSG_START_FREEZE_SCREEN:I = 0x4

.field private static final MSG_STOP_FREEZE_SCREEN:I = 0x5

.field private static final MSG_UPDATE_SVIEW_COVER_STATE:I = 0x3

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PATH_FILE_COVER_HEIGHT:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_height"

.field private static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field private static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field private static final PATH_FILE_COVER_WIDTH:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_width"

.field private static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsDeviceSupportVerityCoverQueried:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSViewCoverTestMode:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultCoverColor:I

.field private mDefaultCoverHeight:I

.field private mDefaultCoverType:I

.field private mDefaultCoverWidth:I

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsCoverVerified:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResources:Landroid/content/res/Resources;

.field private mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

.field private mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

.field private mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_a

    move v0, v1

    :cond_a
    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    .line 104
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 105
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 107
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 108
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 109
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 110
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 629
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 630
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 631
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    .line 97
    iput v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 98
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    .line 99
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverWidth:I

    .line 100
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverHeight:I

    .line 102
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 117
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 119
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 124
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateSystemFeature(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "show sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 137
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "hide sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 140
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "update sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mResources:Landroid/content/res/Resources;

    .line 146
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_bd

    .line 147
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mResources:Landroid/content/res/Resources;

    const v1, 0x105010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverWidth:I

    .line 149
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mResources:Landroid/content/res/Resources;

    const v1, 0x105010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverHeight:I

    .line 152
    :cond_bd
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->getDefaultTypeOfCover()I

    move-result v0

    iput v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 153
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverWidth:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/cover/CoverState;-><init>(III)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 154
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v0, :cond_dd

    .line 155
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .line 157
    :cond_dd
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getDefaultTypeOfCover()I
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 334
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 335
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 350
    :cond_f
    :goto_f
    return v1

    :cond_10
    move v1, v2

    .line 335
    goto :goto_f

    .line 337
    :cond_12
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_29

    const-string/jumbo v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 339
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_33

    move v1, v3

    .line 340
    goto :goto_f

    .line 343
    :cond_29
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v4, :cond_f

    .line 345
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_33

    move v1, v3

    .line 346
    goto :goto_f

    :cond_33
    move v1, v2

    .line 350
    goto :goto_f
.end method

.method private getValueFromSysFS(Ljava/lang/String;I)I
    .registers 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 578
    move v5, p2

    .line 579
    .local v5, "value":I
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 580
    const/4 v3, 0x0

    .line 582
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_8
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_29
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_33
    .catchall {:try_start_8 .. :try_end_d} :catchall_3b

    .line 583
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_f
    new-array v0, v6, [C

    .line 584
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    move-result v2

    .line 585
    .local v2, "n":I
    if-lez v2, :cond_23

    .line 586
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_22} :catch_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_22} :catch_47
    .catchall {:try_start_f .. :try_end_22} :catchall_44

    move-result v5

    .line 593
    :cond_23
    if-eqz v4, :cond_28

    .line 595
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 601
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_28
    :goto_28
    return v5

    .line 588
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_29
    move-exception v1

    .line 589
    .local v1, "ex":Ljava/io/IOException;
    :goto_2a
    move v5, p2

    .line 593
    if-eqz v3, :cond_28

    .line 595
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_28

    .line 596
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/FileReader;
    :catch_31
    move-exception v6

    goto :goto_28

    .line 590
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_33
    move-exception v1

    .line 591
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_34
    move v5, p2

    .line 593
    if-eqz v3, :cond_28

    .line 595
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3a} :catch_31

    goto :goto_28

    .line 593
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_3b
    move-exception v6

    :goto_3c
    if-eqz v3, :cond_41

    .line 595
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 593
    :cond_41
    :goto_41
    throw v6

    .line 596
    :catch_42
    move-exception v7

    goto :goto_41

    .line 593
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_44
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3c

    .line 590
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_47
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_34

    .line 588
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_4a
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2a
.end method

.method private handleHideSViewCover()V
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverHide()V

    .line 473
    :cond_9
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 474
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 476
    :cond_16
    return-void
.end method

.method private handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 439
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 440
    :try_start_3
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 441
    .local v1, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->callback(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_9

    .line 443
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 444
    return-void
.end method

.method private declared-synchronized handleSetPartialScreen(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    const-string v2, "0 0"

    .line 613
    .local v2, "parameters":Ljava/lang/String;
    if-eqz p1, :cond_22

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    :cond_22
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_57

    .line 620
    :try_start_3a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 621
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_4e
    .catchall {:try_start_3a .. :try_end_4c} :catchall_57

    .line 626
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :goto_4c
    monitor-exit p0

    return-void

    .line 623
    :catch_4e
    move-exception v0

    .line 624
    .local v0, "e":Ljava/io/IOException;
    :try_start_4f
    const-string v3, "CoverManager"

    const-string v4, "Failed to write partial_disp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_57

    goto :goto_4c

    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parameters":Ljava/lang/String;
    :catchall_57
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleShowSViewCover()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverShow()V

    .line 496
    :cond_9
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 497
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 499
    :cond_16
    return-void
.end method

.method private handleStartFreezeScreen()V
    .registers 5

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->startFreezingScreen(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 539
    :goto_a
    return-void

    .line 535
    :catch_b
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method private handleStopFreezeScreen()V
    .registers 3

    .prologue
    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->stopFreezingScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 548
    :goto_5
    return-void

    .line 544
    :catch_6
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method private handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_9

    .line 514
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 518
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 521
    :cond_17
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 528
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    return-void
.end method

.method private hideSViewCoverLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 460
    const-string v1, "CoverManager"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_15

    .line 462
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 464
    :cond_15
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeMessages(I)V

    .line 465
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 466
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    return-void
.end method

.method private isCoverVerfied()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    return v0
.end method

.method private isDeviceSupportCoverVerify()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 358
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    if-nez v0, :cond_19

    .line 359
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 360
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 364
    :goto_17
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 366
    :cond_19
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    return v0

    .line 362
    :cond_1c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    goto :goto_17
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 605
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 606
    const/4 v0, 0x1

    .line 608
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isSViewCoverTestMode()Z
    .registers 2

    .prologue
    .line 354
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private performCPUBoostCover()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 634
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2a

    .line 635
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 636
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2a

    .line 637
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 638
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_2a

    .line 639
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 642
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_2a
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_35

    .line 644
    :try_start_2e
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_76

    .line 651
    :cond_35
    :goto_35
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_63

    .line 652
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 654
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_63

    .line 655
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 656
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_63

    array-length v0, v6

    if-lez v0, :cond_63

    .line 657
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    .line 658
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 662
    .end local v6    # "coreNumTable":[I
    :cond_63
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_75

    .line 664
    :try_start_67
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_75} :catch_82

    .line 671
    :cond_75
    :goto_75
    return-void

    .line 645
    :catch_76
    move-exception v7

    .line 646
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 666
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v7

    .line 667
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method private sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 431
    const-string v1, "CoverManager"

    const-string v2, "sendCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method

.method private showSViewCoverLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 483
    const-string v1, "CoverManager"

    const-string/jumbo v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_16

    .line 485
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 487
    :cond_16
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->removeMessages(I)V

    .line 488
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    return-void
.end method

.method private updateCoverPropertiesLocked(Z)V
    .registers 8
    .param p1, "switchState"    # Z

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 375
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 387
    :goto_f
    return-void

    .line 378
    :cond_10
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 379
    .local v2, "type":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v3

    .line 380
    .local v3, "color":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_width"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v4

    .line 381
    .local v4, "widthPixel":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_height"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v5

    .local v5, "heightPixel":I
    move-object v0, p0

    move v1, p1

    .line 382
    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    goto :goto_f

    .line 385
    .end local v2    # "type":I
    .end local v3    # "color":I
    .end local v4    # "widthPixel":I
    .end local v5    # "heightPixel":I
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    goto :goto_f
.end method

.method private updateCoverStateLocked(ZIIII)V
    .registers 12
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cover/CoverState;->updateCoverState(ZIIII)V

    .line 425
    return-void
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .registers 3
    .param p1, "switchState"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 371
    return-void
.end method

.method private updateCoverVerificationLocked(Z)V
    .registers 9
    .param p1, "isBoot"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 394
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 395
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 396
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 420
    :cond_10
    :goto_10
    return-void

    .line 399
    :cond_11
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_46

    move v6, v1

    .line 400
    .local v6, "verified":Z
    :goto_1b
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-eq v0, v6, :cond_10

    .line 401
    iput-boolean v6, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 402
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-nez v0, :cond_10

    .line 404
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Fail cover verification!! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    .line 408
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 409
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_10

    .end local v6    # "verified":Z
    :cond_46
    move v6, v4

    .line 399
    goto :goto_1b

    .line 415
    :cond_48
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : This device is not support cover verification"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    goto :goto_10
.end method

.method private updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 9
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 551
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 552
    .local v0, "isOpen":Z
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    .line 553
    .local v1, "type":I
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_32

    move v2, v3

    :goto_f
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 554
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v2, :cond_46

    if-eq v1, v3, :cond_1e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x5

    if-ne v1, v2, :cond_46

    .line 558
    :cond_1e
    if-eqz v0, :cond_34

    .line 559
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 560
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 575
    :cond_31
    :goto_31
    return-void

    :cond_32
    move v2, v4

    .line 553
    goto :goto_f

    .line 563
    :cond_34
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 564
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_31

    .line 567
    :cond_46
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v2, :cond_31

    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_31

    .line 569
    if-eqz v0, :cond_6c

    .line 570
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_31

    .line 572
    :cond_6c
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_31
.end method

.method private updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "isBoot"    # Z

    .prologue
    .line 447
    const-string v0, "CoverManager"

    const-string/jumbo v1, "updateSViewCoverLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v0, :cond_14

    .line 449
    const-string v0, "CoverManager"

    const-string v1, "Not support S View cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_13
    return-void

    .line 452
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_13
.end method

.method private updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 502
    const-string v1, "CoverManager"

    const-string/jumbo v2, "updateSViewCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_15

    .line 504
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 506
    :cond_15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 508
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_23

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 326
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 327
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 328
    const-string v1, "com.sec.feature.cover.sview.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 329
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 331
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 675
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    :goto_32
    return-void

    .line 683
    :cond_33
    const-string v2, "Current Cover Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    const-string v2, " sIsSupportFlipCover="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 685
    const-string v2, " sIsSupportSViewCover="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 686
    const-string v2, " isSViewCoverTestMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 687
    const-string v2, " mIsCoverVerified="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 688
    const-string v2, " isDeviceSupportCoverVerify()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 689
    const-string v2, " mDefaultCoverType="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 690
    const-string v2, " mDefaultCoverColor="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 691
    const-string v2, " mDefaultCoverWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 692
    const-string v2, " mDefaultCoverHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 694
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 695
    :try_start_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live listeners ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c1
    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 697
    .local v1, "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v1, :cond_c1

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c1

    .line 703
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_106
    move-exception v2

    monitor-exit v3
    :try_end_108
    .catchall {:try_start_99 .. :try_end_108} :catchall_106

    throw v2

    .line 702
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_109
    :try_start_109
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    monitor-exit v3
    :try_end_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_106

    .line 705
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v3

    .line 706
    :try_start_112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    monitor-exit v3

    goto/16 :goto_32

    :catchall_131
    move-exception v2

    monitor-exit v3
    :try_end_133
    .catchall {:try_start_112 .. :try_end_133} :catchall_131

    throw v2
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 319
    :try_start_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    return-object v0

    .line 320
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_39

    .line 240
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_39
    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 245
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 246
    .local v0, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v0, :cond_42

    .line 247
    iget-object v1, v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 248
    const-string v1, "CoverManager"

    const-string v2, "registerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    monitor-exit v7

    .line 260
    :goto_60
    return-void

    .line 254
    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_61
    const/4 v0, 0x0

    .line 255
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 257
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 258
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v7

    goto :goto_60

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_7d
    move-exception v1

    monitor-exit v7
    :try_end_7f
    .catchall {:try_start_3c .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 264
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3a

    .line 265
    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback : binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3a
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :try_start_3e
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 272
    .local v1, "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v1, :cond_44

    .line 273
    iget-object v5, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 274
    move-object v2, v1

    .line 280
    .end local v1    # "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_5b
    if-nez v2, :cond_67

    .line 281
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterCallback : matching listener is NOT EXIST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v4

    .line 292
    :goto_66
    return v3

    .line 285
    :cond_67
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_74

    .line 286
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    :cond_74
    if-eqz v2, :cond_7a

    .line 289
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 291
    :cond_7a
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 292
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_66

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_82
    move-exception v3

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_3e .. :try_end_84} :catchall_82

    throw v3
.end method

.method public updateCoverSwitchState(ZZ)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 299
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    .line 300
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerificationLocked(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isCoverVerfied()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eq p1, v0, :cond_86

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverPropertiesLocked(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 305
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 306
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_86

    .line 307
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widthPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", heightPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_86
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_88
    move-exception v0

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v0
.end method
