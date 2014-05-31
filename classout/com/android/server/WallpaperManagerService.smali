.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$PersonaObserver;,
        Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;,
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final MultiSIMProfile:Z = false

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SWITCH_PERSONA:I = 0x3e9

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_2:Ljava/lang/String; = "wallpaper2"

.field static final WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

.field static final multiSIM_duos:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field whichSimSetWallpaper:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "wallpaper_info_profile_01.xml"

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper_info_profile_02.xml"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wallpaper_info_profile_03.xml"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wallpaper_info_profile_04.xml"

    aput-object v1, v0, v5

    const-string/jumbo v1, "wallpaper_info_profile_05.xml"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "wallpaper_profile_01"

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper_profile_02"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wallpaper_profile_03"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wallpaper_profile_04"

    aput-object v1, v0, v5

    const-string/jumbo v1, "wallpaper_profile_05"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 533
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 129
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 149
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 156
    iput-object v4, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 160
    iput-object v4, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2238
    new-instance v0, Lcom/android/server/WallpaperManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$3;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 535
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 536
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 538
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 540
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 542
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 543
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 544
    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 545
    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 546
    return-void
.end method

.method private SimStatusVerify()I
    .registers 6

    .prologue
    .line 1766
    const/4 v0, 0x0

    .line 1767
    .local v0, "currSimId":I
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStatusVerify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, "simSlot":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1771
    const/4 v0, 0x1

    .line 1776
    :goto_2e
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperManagerService->SimStatusVerify slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return v0

    .line 1773
    :cond_51
    const-string v2, "persist.radio.calldefault.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2e
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p2, "x2"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WallpaperManagerService;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WallpaperManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getContainerList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1339
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_2f
    return-void
.end method

.method private deleteMultiSIMProfileJournaledFile(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    .line 1922
    const/4 v0, 0x0

    .line 1923
    .local v0, "JournaledFile":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1924
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1940
    :cond_b
    :goto_b
    return-void

    .line 1929
    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    .line 1934
    new-instance v0, Ljava/io/File;

    .end local v0    # "JournaledFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1936
    .restart local v0    # "JournaledFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1937
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method private deleteMultiSIMProfileWallpaper(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    .line 1944
    const/4 v1, 0x0

    .line 1945
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1946
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1961
    :cond_b
    :goto_b
    return-void

    .line 1951
    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    .line 1956
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1957
    .restart local v1    # "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1958
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method private deleteWallpaperFile(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "simSlot"    # I

    .prologue
    .line 1872
    const/4 v1, 0x0

    .line 1873
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1874
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1889
    :cond_b
    :goto_b
    return-void

    .line 1879
    :cond_c
    if-nez p2, :cond_20

    .line 1880
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperFile":Ljava/io/File;
    const-string/jumbo v2, "wallpaper"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1885
    .restart local v1    # "wallpaperFile":Ljava/io/File;
    :cond_16
    :goto_16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1886
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 1881
    :cond_20
    const/4 v2, 0x1

    if-ne p2, v2, :cond_16

    .line 1882
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperFile":Ljava/io/File;
    const-string/jumbo v2, "wallpaper2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "wallpaperFile":Ljava/io/File;
    goto :goto_16
.end method

.method private getContainerList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_10

    .line 2229
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 2231
    :cond_10
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1c

    .line 2232
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 2234
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 789
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 790
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 791
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 792
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 793
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 1581
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1582
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1583
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 2216
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2218
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_11

    .line 2219
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 2221
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1757
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1759
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1760
    const-string v1, "WallpaperService"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_13
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 549
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .registers 18
    .param p1, "userId"    # I

    .prologue
    .line 1494
    invoke-static/range {p1 .. p1}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1495
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 1496
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 1497
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->migrateFromOld()V

    .line 1501
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1502
    .local v12, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v12, :cond_30

    .line 1503
    new-instance v12, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v12    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1504
    .restart local v12    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1506
    :cond_30
    const/4 v9, 0x0

    .line 1508
    .local v9, "success":Z
    :try_start_31
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_c4
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_36} :catch_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_36} :catch_f1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_36} :catch_115
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_13a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_36} :catch_15f

    .line 1509
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1510
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v6, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1514
    :cond_3e
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 1515
    .local v11, "type":I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_9b

    .line 1516
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1517
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v13, "wp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    .line 1518
    const/4 v13, 0x0

    const-string/jumbo v14, "width"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1519
    const/4 v13, 0x0

    const-string v14, "height"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1521
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1522
    const/4 v13, 0x0

    const-string v14, "component"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, "comp":Ljava/lang/String;
    if-eqz v2, :cond_c2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    :goto_83
    iput-object v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1526
    iget-object v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_97

    const-string v13, "android"

    iget-object v14, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    .line 1529
    :cond_97
    sget-object v13, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iput-object v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_9b} :catch_198
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_9b} :catch_194
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_9b} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_9b} :catch_18d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_9b} :catch_18a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_9b} :catch_187

    .line 1541
    .end local v2    # "comp":Ljava/lang/String;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_9b
    const/4 v13, 0x1

    if-ne v11, v13, :cond_3e

    .line 1542
    const/4 v9, 0x1

    move-object v7, v8

    .line 1557
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_a0
    if-eqz v7, :cond_a5

    .line 1558
    :try_start_a2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_184

    .line 1564
    :cond_a5
    :goto_a5
    if-nez v9, :cond_b1

    .line 1565
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1566
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1567
    const-string v13, ""

    iput-object v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1571
    :cond_b1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v1

    .line 1572
    .local v1, "baseSize":I
    iget v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ge v13, v1, :cond_bb

    .line 1573
    iput v1, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 1575
    :cond_bb
    iget v13, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-ge v13, v1, :cond_c1

    .line 1576
    iput v1, v12, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 1578
    :cond_c1
    return-void

    .line 1523
    .end local v1    # "baseSize":I
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "comp":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_c2
    const/4 v13, 0x0

    goto :goto_83

    .line 1543
    .end local v2    # "comp":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_c4
    move-exception v3

    .line 1544
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_c5
    const-string v13, "WallpaperService"

    const-string v14, "no current wallpaper -- first boot?"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1545
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_cd
    move-exception v3

    .line 1546
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_ce
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1547
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_f1
    move-exception v3

    .line 1548
    .local v3, "e":Ljava/lang/NumberFormatException;
    :goto_f2
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1549
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_115
    move-exception v3

    .line 1550
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_116
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 1551
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_13a
    move-exception v3

    .line 1552
    .local v3, "e":Ljava/io/IOException;
    :goto_13b
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 1553
    .end local v3    # "e":Ljava/io/IOException;
    :catch_15f
    move-exception v3

    .line 1554
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_160
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 1560
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_184
    move-exception v13

    goto/16 :goto_a5

    .line 1553
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_187
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_160

    .line 1551
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_18a
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_13b

    .line 1549
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_18d
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_116

    .line 1547
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_190
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_f2

    .line 1545
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_194
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_ce

    .line 1543
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_198
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_c5
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .prologue
    .line 1345
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1479
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1482
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1483
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1485
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1486
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1487
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1489
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_39
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1322
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1323
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 1325
    :try_start_b
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_36

    .line 1323
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1332
    :cond_1b
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1333
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1335
    return-void

    .line 1326
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v3

    goto :goto_18
.end method

.method private registerSimChangedReceiver()V
    .registers 4

    .prologue
    .line 1855
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1856
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1865
    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    .line 1866
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1867
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V

    .line 1351
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V
    .registers 19
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p2, "checkWallpaper"    # Z

    .prologue
    .line 1355
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v13}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 1356
    .local v6, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 1358
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_124

    .line 1359
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v11, "stream":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1360
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v13, "utf-8"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1361
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1363
    const/4 v13, 0x0

    const-string/jumbo v14, "wp"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1364
    const/4 v13, 0x0

    const-string/jumbo v14, "width"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    const/4 v13, 0x0

    const-string v14, "height"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1366
    const/4 v13, 0x0

    const-string v14, "name"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_75

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v14, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_75

    .line 1369
    const/4 v13, 0x0

    const-string v14, "component"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1372
    :cond_75
    const/4 v13, 0x0

    const-string/jumbo v14, "wp"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1374
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1375
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1376
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_85} :catch_1e3

    move-object v10, v11

    .line 1389
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :goto_86
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v1

    .line 1391
    .local v1, "SimStatusFlag":I
    if-eqz p2, :cond_123

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    if-ne v13, v1, :cond_123

    .line 1400
    const/4 v9, 0x0

    .line 1401
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_ad

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v14, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ad

    .line 1403
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1406
    :cond_ad
    const/4 v3, -0x1

    .line 1407
    .local v3, "defaultWallpaper":I
    const/4 v12, 0x0

    .line 1409
    .local v12, "wallpaper_image":Ljava/io/File;
    const-string v5, ""

    .line 1410
    .local v5, "fileName":Ljava/lang/String;
    const-string v7, ""

    .line 1411
    .local v7, "nFile":Ljava/lang/String;
    if-eqz v1, :cond_bb

    .line 1412
    add-int/lit8 v13, v1, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1414
    :cond_bb
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wallpaper"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1416
    new-instance v12, Ljava/io/File;

    .end local v12    # "wallpaper_image":Ljava/io/File;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v13}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1419
    .restart local v12    # "wallpaper_image":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 1420
    if-eqz v9, :cond_141

    .line 1421
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - liveWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1424
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x81

    if-nez v13, :cond_12f

    .line 1425
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other liveWallpapers - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fc .. :try_end_116} :catch_138

    .line 1426
    const/4 v3, 0x0

    .line 1473
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_117
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked-setSettingsSystemUiTransparency"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V

    .line 1476
    .end local v3    # "defaultWallpaper":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "nFile":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "wallpaper_image":Ljava/io/File;
    :cond_123
    return-void

    .line 1377
    .end local v1    # "SimStatusFlag":I
    :catch_124
    move-exception v4

    .line 1379
    .local v4, "e":Ljava/io/IOException;
    :goto_125
    if-eqz v10, :cond_12a

    .line 1380
    :try_start_127
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_1e0

    .line 1385
    :cond_12a
    :goto_12a
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto/16 :goto_86

    .line 1428
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "SimStatusFlag":I
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "defaultWallpaper":I
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "nFile":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v12    # "wallpaper_image":Ljava/io/File;
    :cond_12f
    :try_start_12f
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - liveWallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12f .. :try_end_136} :catch_138

    .line 1429
    const/4 v3, 0x1

    goto :goto_117

    .line 1431
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_138
    move-exception v4

    .line 1432
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 1435
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_141
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    if-eqz v13, :cond_181

    .line 1436
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - imageWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v14, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_178

    .line 1438
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - wallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v3, 0x1

    goto :goto_117

    .line 1442
    :cond_178
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other images - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v3, 0x0

    goto :goto_117

    .line 1447
    :cond_181
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - abnormal case - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v3, 0x0

    goto :goto_117

    .line 1452
    :cond_18a
    if-eqz v9, :cond_1d6

    .line 1453
    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - liveWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1456
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x81

    if-nez v13, :cond_1c1

    .line 1457
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other liveWallpapers - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v3, 0x0

    goto/16 :goto_117

    .line 1460
    :cond_1c1
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - liveWallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a4 .. :try_end_1c8} :catch_1cb

    .line 1461
    const/4 v3, 0x1

    goto/16 :goto_117

    .line 1463
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1cb
    move-exception v4

    .line 1464
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v3, 0x1

    .line 1466
    goto/16 :goto_117

    .line 1469
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d6
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - defaultWallpaper - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v3, 0x1

    goto/16 :goto_117

    .line 1382
    .end local v1    # "SimStatusFlag":I
    .end local v3    # "defaultWallpaper":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "nFile":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "wallpaper_image":Ljava/io/File;
    .local v4, "e":Ljava/io/IOException;
    :catch_1e0
    move-exception v13

    goto/16 :goto_12a

    .line 1377
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v11    # "stream":Ljava/io/FileOutputStream;
    :catch_1e3
    move-exception v4

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_125
.end method

.method private simInserted(I)Z
    .registers 5
    .param p1, "simSlot"    # I

    .prologue
    .line 1782
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, "iccType":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1788
    const/4 v1, 0x1

    .line 1790
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 13
    .param p1, "conn"    # Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1310
    :try_start_2
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 1319
    :cond_11
    :goto_11
    return-void

    .line 1313
    :catch_12
    move-exception v7

    .line 1314
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    iget-boolean v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_11

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v8

    move-object v4, p2

    move-object v5, v9

    .line 1316
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_11
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 27
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1130
    if-nez p2, :cond_2c

    .line 1131
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2c

    .line 1132
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_12

    .line 1133
    if-nez p1, :cond_2c

    .line 1136
    const/4 v3, 0x1

    .line 1272
    :goto_11
    return v3

    .line 1138
    :cond_12
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1142
    const/4 v3, 0x1

    goto :goto_11

    .line 1148
    :cond_2c
    if-nez p1, :cond_43

    .line 1149
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104003e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1151
    .local v9, "defaultComponent":Ljava/lang/String;
    if-eqz v9, :cond_3f

    .line 1153
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1156
    :cond_3f
    if-nez p1, :cond_43

    .line 1158
    sget-object p1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    .line 1164
    .end local v9    # "defaultComponent":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v17, v0

    .line 1165
    .local v17, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 1167
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    if-nez v18, :cond_7b

    .line 1169
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v3, 0x0

    goto :goto_11

    .line 1172
    :cond_7b
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1176
    .local v13, "msg":Ljava/lang/String;
    if-eqz p3, :cond_cc

    .line 1177
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_a4} :catch_a4

    .line 1264
    .end local v13    # "msg":Ljava/lang/String;
    .end local v17    # "serviceUserId":I
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :catch_a4
    move-exception v10

    .line 1265
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1266
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_258

    .line 1267
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1179
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v17    # "serviceUserId":I
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_cc
    :try_start_cc
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1183
    .end local v13    # "msg":Ljava/lang/String;
    :cond_d4
    const/16 v19, 0x0

    .line 1185
    .local v19, "wi":Landroid/app/WallpaperInfo;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v12, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_18b

    sget-object v3, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18b

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v17

    invoke-interface {v3, v12, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v15

    .line 1192
    .local v15, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_102
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_13f

    .line 1193
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 1194
    .local v16, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_12b} :catch_a4

    move-result v3

    if-eqz v3, :cond_180

    .line 1197
    :try_start_12e
    new-instance v19, Landroid/app/WallpaperInfo;

    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12e .. :try_end_13f} :catch_15e
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13f} :catch_16f
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_13f} :catch_a4

    .line 1214
    .end local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :cond_13f
    if-nez v19, :cond_18b

    .line 1215
    :try_start_141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1217
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_183

    .line 1218
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1198
    .end local v13    # "msg":Ljava/lang/String;
    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    .restart local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_15e
    move-exception v10

    .line 1199
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_167

    .line 1200
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1202
    :cond_167
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1204
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_16f
    move-exception v10

    .line 1205
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_178

    .line 1206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1208
    :cond_178
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1192
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :cond_180
    add-int/lit8 v11, v11, 0x1

    goto :goto_102

    .line 1220
    .end local v16    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_183
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1227
    .end local v11    # "i":I
    .end local v13    # "msg":Ljava/lang/String;
    .end local v15    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_18b
    new-instance v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1228
    .local v14, "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1229
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x104078e

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1231
    const-string v20, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104078f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x20000001

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v12, v14, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1241
    .restart local v13    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_203

    .line 1242
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1244
    :cond_203
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1247
    .end local v13    # "msg":Ljava/lang/String;
    :cond_20b
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_224

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_224

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1250
    :cond_224
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1251
    move-object/from16 v0, p4

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p4

    iput-wide v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 1253
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_23a
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_23a} :catch_a4

    .line 1255
    :try_start_23a
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_255

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1260
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_255
    .catch Landroid/os/RemoteException; {:try_start_23a .. :try_end_255} :catch_260

    .line 1272
    :cond_255
    :goto_255
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 1269
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v17    # "serviceUserId":I
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    .end local v19    # "wi":Landroid/app/WallpaperInfo;
    .local v10, "e":Landroid/os/RemoteException;
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_258
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1262
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v13    # "msg":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "newConn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v17    # "serviceUserId":I
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v19    # "wi":Landroid/app/WallpaperInfo;
    :catch_260
    move-exception v3

    goto :goto_255
.end method

.method public clearWallpaper()V
    .registers 5

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 727
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1304
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1305
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1306
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .registers 14
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 731
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 732
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/WallpaperManagerService;->deleteWallpaperFile(II)V

    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 735
    .local v8, "ident":J
    const/4 v6, 0x0

    .line 737
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 738
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_44
    .catchall {:try_start_16 .. :try_end_1a} :catchall_47

    if-eq p2, v0, :cond_20

    .line 747
    :cond_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    :cond_1f
    :goto_1f
    return-void

    .line 739
    :cond_20
    if-eqz p1, :cond_24

    :try_start_22
    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    :cond_24
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2b} :catch_44
    .catchall {:try_start_22 .. :try_end_2b} :catchall_47

    move-result v0

    if-nez v0, :cond_1c

    .line 747
    :goto_2e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    const-string v0, "WallpaperService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 756
    if-eqz p3, :cond_1f

    .line 758
    const/4 v0, 0x0

    :try_start_3e
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_1f

    .line 759
    :catch_42
    move-exception v0

    goto :goto_1f

    .line 744
    :catch_44
    move-exception v7

    .line 745
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    goto :goto_2e

    .line 747
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :catchall_47
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "dstFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1965
    const/4 v4, 0x0

    .line 1967
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1998
    :cond_5
    :goto_5
    return-void

    .line 1972
    :cond_6
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "stream":Ljava/io/InputStream;
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1974
    .restart local v4    # "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_5

    .line 1979
    if-eqz p2, :cond_5

    .line 1983
    const/4 v2, 0x0

    .line 1985
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_3e
    .catchall {:try_start_10 .. :try_end_15} :catchall_34

    .line 1986
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const v5, 0x8000

    :try_start_18
    new-array v1, v5, [B

    .line 1988
    .local v1, "buffer":[B
    :goto_1a
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_2d

    .line 1989
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_25
    .catchall {:try_start_18 .. :try_end_24} :catchall_3b

    goto :goto_1a

    .line 1991
    .end local v0    # "amt":I
    .end local v1    # "buffer":[B
    :catch_25
    move-exception v5

    move-object v2, v3

    .line 1994
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_27
    if-eqz v2, :cond_5

    .line 1995
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 1994
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "amt":I
    .restart local v1    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2d
    if-eqz v3, :cond_32

    .line 1995
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_32
    move-object v2, v3

    .line 1997
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1994
    .end local v0    # "amt":I
    .end local v1    # "buffer":[B
    :catchall_34
    move-exception v5

    :goto_35
    if-eqz v2, :cond_3a

    .line 1995
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1994
    :cond_3a
    throw v5

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_3b
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_35

    .line 1991
    :catch_3e
    move-exception v5

    goto :goto_27
.end method

.method detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v2, 0x0

    .line 1276
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3e

    .line 1277
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 1279
    :try_start_b
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_43

    .line 1282
    :goto_13
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1284
    :cond_17
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_24

    .line 1286
    :try_start_1d
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_41

    .line 1290
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1294
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3f

    .line 1297
    :goto_34
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1298
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1299
    iput-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1301
    :cond_3e
    return-void

    .line 1295
    :catch_3f
    move-exception v0

    goto :goto_34

    .line 1287
    :catch_41
    move-exception v0

    goto :goto_24

    .line 1280
    :catch_43
    move-exception v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1711
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 1714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    :goto_32
    return-void

    .line 1720
    :cond_33
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1721
    :try_start_36
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_e8

    .line 1723
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1724
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1727
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1729
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1733
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_e4

    .line 1734
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 1735
    .local v0, "conn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1737
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_b7

    .line 1739
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1742
    :cond_b7
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1743
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1744
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1745
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1746
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1747
    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1748
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1749
    iget-wide v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 1722
    .end local v0    # "conn":Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_e4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 1752
    .end local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_e8
    monitor-exit v4

    goto/16 :goto_32

    .end local v1    # "i":I
    :catchall_eb
    move-exception v3

    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_36 .. :try_end_ed} :catchall_eb

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 556
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 557
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 559
    .end local v1    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1c
    return-void
.end method

.method public getHeightHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 846
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    .line 847
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getMultiSIMProfileWallpaper(II)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2081
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2082
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2099
    :cond_b
    :goto_b
    return-object v1

    .line 2087
    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    .line 2093
    :try_start_f
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v3, 0x38000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 2095
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_b

    .line 2096
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1f
    move-exception v2

    goto :goto_b
.end method

.method getMultiSIMProfileWallpaperInfo(II)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2189
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2190
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2209
    :cond_b
    :goto_b
    return-object v1

    .line 2195
    :cond_c
    const/4 v3, -0x1

    if-eq p2, v3, :cond_b

    .line 2201
    :try_start_f
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2202
    .local v2, "wallpaperInfo":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2203
    :cond_21
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v4, 0x38000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2f} :catch_31

    move-result-object v1

    .line 2205
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_b

    .line 2206
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "wallpaperInfo":Ljava/io/File;
    :catch_31
    move-exception v3

    goto :goto_b
.end method

.method getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_3
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 658
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 852
    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 853
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    .line 856
    .local v0, "SimStatusFlag":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 857
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 858
    .local v7, "wallpaperUserId":I
    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_a4

    .line 859
    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 863
    :goto_13
    iget-object v10, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_b2

    .line 865
    .local v6, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_2c

    .line 866
    :try_start_1d
    const-string/jumbo v10, "width"

    iget v11, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    const-string v10, "height"

    iget v11, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    :cond_2c
    const-string v4, ""

    .line 872
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, ""

    .line 873
    .local v5, "nFile":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 874
    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 876
    :cond_38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 879
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callback register : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 881
    new-instance v3, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 882
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_aa

    .line 883
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WallpaperManagerService  SimStatusFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WALLPAPER_FILE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not existed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_a2} :catch_b5
    .catchall {:try_start_1d .. :try_end_a2} :catchall_b2

    .line 884
    :try_start_a2
    monitor-exit v9

    .line 891
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_a3
    return-object v8

    .line 861
    .end local v6    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_a4
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_b2

    move-result v7

    goto/16 :goto_13

    .line 886
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    .restart local v6    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_aa
    const/high16 v10, 0x10000000

    :try_start_ac
    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_af
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_af} :catch_b5
    .catchall {:try_start_ac .. :try_end_af} :catchall_b2

    move-result-object v8

    :try_start_b0
    monitor-exit v9

    goto :goto_a3

    .line 892
    .end local v0    # "SimStatusFlag":I
    .end local v1    # "callingUid":I
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    .end local v6    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v7    # "wallpaperUserId":I
    :catchall_b2
    move-exception v8

    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_b2

    throw v8

    .line 887
    .restart local v0    # "SimStatusFlag":I
    .restart local v1    # "callingUid":I
    .restart local v6    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v7    # "wallpaperUserId":I
    :catch_b5
    move-exception v2

    .line 889
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_b6
    const-string v10, "WallpaperService"

    const-string v11, "Error getting wallpaper"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    monitor-exit v9
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_b2

    goto :goto_a3
.end method

.method public getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v7, 0x0

    .line 897
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 900
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 901
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 902
    .local v6, "wallpaperUserId":I
    const/16 v9, 0x3e8

    if-ne v0, v9, :cond_97

    .line 903
    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 907
    :goto_f
    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_a5

    .line 909
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_28

    .line 910
    :try_start_19
    const-string/jumbo v9, "width"

    iget v10, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v9, "height"

    iget v10, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    :cond_28
    const-string v3, ""

    .line 915
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 916
    .local v4, "nFile":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_35

    .line 917
    add-int/lit8 v9, p3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 919
    :cond_35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaper"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    const-string v9, "WallpaperService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback register : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    # getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 923
    new-instance v2, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 924
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9d

    .line 925
    const-string v9, "WallpaperService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WallpaperManagerService WALLPAPER_FILE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_95} :catch_a8
    .catchall {:try_start_19 .. :try_end_95} :catchall_a5

    .line 926
    :try_start_95
    monitor-exit v8

    .line 933
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :goto_96
    return-object v7

    .line 905
    .end local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_97
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a5

    move-result v6

    goto/16 :goto_f

    .line 928
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "nFile":Ljava/lang/String;
    .restart local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_9d
    const/high16 v9, 0x10000000

    :try_start_9f
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a2} :catch_a8
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a5

    move-result-object v7

    :try_start_a3
    monitor-exit v8

    goto :goto_96

    .line 934
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    .end local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v6    # "wallpaperUserId":I
    :catchall_a5
    move-exception v7

    monitor-exit v8
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a5

    throw v7

    .line 929
    .restart local v0    # "callingUid":I
    .restart local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v6    # "wallpaperUserId":I
    :catch_a8
    move-exception v1

    .line 931
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_a9
    const-string v9, "WallpaperService"

    const-string v10, "Error getting wallpaper"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_a5

    goto :goto_96
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    .prologue
    .line 939
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 940
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 941
    :try_start_7
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 942
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_19

    .line 943
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 945
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_18

    .line 946
    .end local v1    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public getWidthHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 838
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 839
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    .line 840
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 765
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 767
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_56

    move-result-wide v1

    .line 769
    .local v1, "ident":J
    :try_start_7
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_51

    move-result-object v4

    .line 771
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 774
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 775
    .local v5, "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_44

    .line 777
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 778
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 780
    .restart local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_44
    if-eqz v5, :cond_1d

    iget-object v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 781
    const/4 v6, 0x1

    monitor-exit v7

    .line 785
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :goto_50
    return v6

    .line 771
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_51
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 784
    .end local v1    # "ident":J
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_56

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_59
    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    .line 785
    const/4 v6, 0x0

    goto :goto_50
.end method

.method multiSIMProfileWallpaperRestored(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1894
    const/4 v5, 0x0

    .line 1895
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1896
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1897
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1898
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1899
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3d

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1901
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1906
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1912
    :cond_34
    :goto_34
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_47

    .line 1914
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1915
    :try_start_38
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1916
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4a

    .line 1917
    return-void

    .line 1909
    :cond_3d
    :try_start_3d
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_34

    .line 1912
    :catchall_47
    move-exception v1

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v1

    .line 1916
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method onRemoveUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 676
    const/4 v3, 0x1

    if-ge p1, v3, :cond_4

    .line 686
    :goto_3
    return-void

    .line 677
    :cond_4
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 678
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->onStoppingUser(I)V

    .line 679
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 680
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 681
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "wallpaper2"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 682
    .local v1, "wallpaperFile2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 683
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    .local v2, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 685
    monitor-exit v4

    goto :goto_3

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperFile2":Ljava/io/File;
    .end local v2    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method onStoppingUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 662
    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    .line 673
    :goto_3
    return-void

    .line 663
    :cond_4
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 664
    :try_start_7
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 665
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    .line 666
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1d

    .line 667
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 668
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 670
    :cond_1d
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 672
    :cond_22
    monitor-exit v2

    goto :goto_3

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public restoreMultiSIMProfileWallpaper(III)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "simSlot"    # I
    .param p3, "profileId"    # I

    .prologue
    .line 2002
    const/4 v2, 0x0

    .line 2003
    .local v2, "file":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2004
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2034
    :cond_b
    :goto_b
    return-void

    .line 2009
    :cond_c
    const/4 v4, -0x1

    if-eq p3, v4, :cond_b

    .line 2014
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2015
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_33

    .line 2017
    invoke-direct {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->deleteWallpaperFile(II)V

    .line 2018
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "wallpaper_info.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2019
    .local v3, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 2023
    .end local v3    # "wallpaperInfoFile":Ljava/io/File;
    :cond_33
    const/4 v1, 0x0

    .line 2024
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p2}, Lcom/android/server/WallpaperManagerService;->setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2026
    if-eqz v1, :cond_b

    .line 2030
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_b

    .line 2031
    :catch_43
    move-exception v4

    goto :goto_b
.end method

.method public restoreMultiSIMProfileWallpaperInfo(II)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    .line 2104
    const/4 v2, 0x0

    .line 2105
    .local v2, "file":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2106
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2145
    :cond_b
    :goto_b
    return-void

    .line 2111
    :cond_c
    const/4 v5, -0x1

    if-eq p2, v5, :cond_b

    .line 2116
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2118
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_30

    .line 2120
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2121
    .local v4, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 2125
    .end local v4    # "wallpaperInfoFile":Ljava/io/File;
    :cond_30
    const/4 v1, 0x0

    .line 2127
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_31
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2128
    .local v3, "wallpaperInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2129
    :cond_42
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x38000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_4f} :catch_5c

    move-result-object v1

    .line 2135
    .end local v3    # "wallpaperInfo":Ljava/io/File;
    :goto_50
    if-eqz v1, :cond_b

    .line 2140
    :try_start_52
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_b

    .line 2141
    :catch_5a
    move-exception v5

    goto :goto_b

    .line 2131
    :catch_5c
    move-exception v5

    goto :goto_50
.end method

.method restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .registers 23
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1636
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14b

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14b

    .line 1637
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1639
    .local v14, "resName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1640
    .local v10, "pkg":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1641
    .local v5, "colon":I
    if-lez v5, :cond_47

    .line 1642
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1645
    :cond_47
    const/4 v9, 0x0

    .line 1646
    .local v9, "ident":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1647
    .local v15, "slash":I
    if-lez v15, :cond_5a

    .line 1648
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1651
    :cond_5a
    const/16 v16, 0x0

    .line 1652
    .local v16, "type":Ljava/lang/String;
    if-lez v5, :cond_72

    if-lez v15, :cond_72

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_72

    .line 1653
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1656
    :cond_72
    if-eqz v10, :cond_14b

    if-eqz v9, :cond_14b

    if-eqz v16, :cond_14b

    .line 1657
    const/4 v13, -0x1

    .line 1658
    .local v13, "resId":I
    const/4 v12, 0x0

    .line 1659
    .local v12, "res":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1661
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1662
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1663
    .local v11, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1664
    if-nez v13, :cond_e1

    .line 1665
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_d1} :catch_1e9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_d1} :catch_17c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_d1} :catch_1a7
    .catchall {:try_start_7b .. :try_end_d1} :catchall_1c1

    .line 1667
    const/16 v17, 0x0

    .line 1692
    if-eqz v12, :cond_d8

    .line 1694
    :try_start_d5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_1db

    .line 1697
    :cond_d8
    :goto_d8
    if-eqz v7, :cond_e0

    .line 1698
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_dd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_179

    .line 1706
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_e0
    :goto_e0
    return v17

    .line 1670
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_e1
    :try_start_e1
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1671
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_fa

    .line 1672
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1674
    :cond_fa
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_107
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e1 .. :try_end_107} :catch_1e9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e1 .. :try_end_107} :catch_17c
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_107} :catch_1a7
    .catchall {:try_start_e1 .. :try_end_107} :catchall_1c1

    .line 1676
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_10a
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1678
    .local v3, "buffer":[B
    :goto_10e
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "amt":I
    if-lez v2, :cond_14e

    .line 1679
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10a .. :try_end_11b} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10a .. :try_end_11b} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_11b} :catch_1e3
    .catchall {:try_start_10a .. :try_end_11b} :catchall_1e0

    goto :goto_10e

    .line 1685
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catch_11c
    move-exception v6

    move-object v7, v8

    .line 1686
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_11e
    :try_start_11e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_11e .. :try_end_13e} :catchall_1c1

    .line 1692
    if-eqz v12, :cond_143

    .line 1694
    :try_start_140
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_1d4

    .line 1697
    :cond_143
    :goto_143
    if-eqz v7, :cond_14b

    .line 1698
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_148
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_1a5

    .line 1706
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_14b
    :goto_14b
    const/16 v17, 0x0

    goto :goto_e0

    .line 1683
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_14e
    :try_start_14e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14e .. :try_end_168} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14e .. :try_end_168} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_168} :catch_1e3
    .catchall {:try_start_14e .. :try_end_168} :catchall_1e0

    .line 1684
    const/16 v17, 0x1

    .line 1692
    if-eqz v12, :cond_16f

    .line 1694
    :try_start_16c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_1de

    .line 1697
    :cond_16f
    :goto_16f
    if-eqz v8, :cond_e0

    .line 1698
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_174
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_179

    goto/16 :goto_e0

    .line 1701
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_179
    move-exception v18

    goto/16 :goto_e0

    .line 1687
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_17c
    move-exception v6

    .line 1688
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_17d
    :try_start_17d
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_17d .. :try_end_197} :catchall_1c1

    .line 1692
    if-eqz v12, :cond_19c

    .line 1694
    :try_start_199
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_1d7

    .line 1697
    :cond_19c
    :goto_19c
    if-eqz v7, :cond_14b

    .line 1698
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_1a1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    goto :goto_14b

    .line 1701
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1a5
    move-exception v17

    goto :goto_14b

    .line 1689
    :catch_1a7
    move-exception v6

    .line 1690
    .local v6, "e":Ljava/io/IOException;
    :goto_1a8
    :try_start_1a8
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_1c1

    .line 1692
    if-eqz v12, :cond_1b8

    .line 1694
    :try_start_1b5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1d9

    .line 1697
    :cond_1b8
    :goto_1b8
    if-eqz v7, :cond_14b

    .line 1698
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_1bd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1a5

    goto :goto_14b

    .line 1692
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1c1
    move-exception v17

    :goto_1c2
    if-eqz v12, :cond_1c7

    .line 1694
    :try_start_1c4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1d0

    .line 1697
    :cond_1c7
    :goto_1c7
    if-eqz v7, :cond_1cf

    .line 1698
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1700
    :try_start_1cc
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_1d2

    .line 1692
    :cond_1cf
    :goto_1cf
    throw v17

    .line 1695
    :catch_1d0
    move-exception v18

    goto :goto_1c7

    .line 1701
    :catch_1d2
    move-exception v18

    goto :goto_1cf

    .line 1695
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1d4
    move-exception v17

    goto/16 :goto_143

    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1d7
    move-exception v17

    goto :goto_19c

    .local v6, "e":Ljava/io/IOException;
    :catch_1d9
    move-exception v17

    goto :goto_1b8

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catch_1db
    move-exception v18

    goto/16 :goto_d8

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1de
    move-exception v18

    goto :goto_16f

    .line 1692
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catchall_1e0
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1c2

    .line 1689
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1e3
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1a8

    .line 1687
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1e6
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17d

    .line 1685
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    :catch_1e9
    move-exception v6

    goto/16 :goto_11e
.end method

.method public setDimensionHints(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 798
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 799
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 800
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 801
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_32

    .line 802
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 833
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v3

    .line 804
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_32
    if-lez p1, :cond_36

    if-gtz p2, :cond_3f

    .line 805
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 808
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 809
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 810
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 812
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_57

    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_78

    .line 813
    :cond_57
    iput p1, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    .line 814
    iput p2, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    .line 815
    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 816
    iget v3, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_64

    monitor-exit v4

    .line 834
    :goto_63
    return-void

    .line 817
    :cond_64
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_78

    .line 818
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6c
    .catchall {:try_start_36 .. :try_end_6c} :catchall_2f

    if-eqz v3, :cond_7a

    .line 820
    :try_start_6e
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_86
    .catchall {:try_start_6e .. :try_end_75} :catchall_2f

    .line 824
    :goto_75
    :try_start_75
    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 833
    :cond_78
    :goto_78
    monitor-exit v4

    goto :goto_63

    .line 825
    :cond_7a
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_78

    .line 829
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_2f

    goto :goto_78

    .line 822
    :catch_86
    move-exception v3

    goto :goto_75
.end method

.method public setSettingsSystemUiTransparency(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 175
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 950
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 951
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 953
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 954
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 956
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 957
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_24

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_24

    .line 960
    const/4 v2, 0x0

    monitor-exit v7

    .line 976
    :goto_23
    return-object v2

    .line 963
    :cond_24
    if-nez v5, :cond_42

    .line 964
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wallpaper not yet initialized for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 980
    .end local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v4    # "userId":I
    .end local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_3f
    move-exception v6

    monitor-exit v7
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v6

    .line 966
    .restart local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v4    # "userId":I
    .restart local v5    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_42
    :try_start_42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    move-result-wide v0

    .line 968
    .local v0, "ident":J
    :try_start_46
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 969
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_4f

    .line 970
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 974
    :cond_4f
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_58

    .line 978
    :try_start_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    monitor-exit v7

    goto :goto_23

    .line 978
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_3f
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1097
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1098
    iget-object v10, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1100
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1102
    .local v9, "userId":I
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1103
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1106
    monitor-exit v10

    .line 1124
    :goto_1a
    return-void

    .line 1109
    :cond_1b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1110
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_41

    .line 1111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v9    # "userId":I
    :catchall_3e
    move-exception v0

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v0

    .line 1113
    .restart local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v9    # "userId":I
    :cond_41
    :try_start_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result-wide v6

    .line 1115
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_46
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1116
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_59

    .line 1121
    :try_start_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1123
    monitor-exit v10

    goto :goto_1a

    .line 1121
    :catchall_59
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_3e
.end method

.method public setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 1022
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 1024
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 986
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 987
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 990
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 991
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1b

    invoke-virtual {v3, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 994
    const/4 v2, 0x0

    .line 1013
    :goto_1a
    return-object v2

    .line 998
    :cond_1b
    if-nez v5, :cond_36

    .line 999
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1001
    :cond_36
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1002
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1003
    :try_start_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_54

    move-result-wide v0

    .line 1005
    .local v0, "ident":J
    :try_start_42
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1006
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_4b

    .line 1007
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1011
    :cond_4b
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_57

    .line 1015
    :try_start_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1013
    monitor-exit v7

    goto :goto_1a

    .line 1017
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_54
    move-exception v6

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_54

    throw v6

    .line 1015
    .restart local v0    # "ident":J
    :catchall_57
    move-exception v6

    :try_start_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_54
.end method

.method settingsRestored()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1591
    const/4 v5, 0x0

    .line 1592
    .local v5, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1593
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1594
    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1596
    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_6e

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 1598
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1603
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1605
    :cond_37
    const/4 v7, 0x1

    .line 1622
    :cond_38
    :goto_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_85

    .line 1624
    if-nez v7, :cond_66

    .line 1625
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1627
    invoke-static {v9}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1630
    :cond_66
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1631
    :try_start_69
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1632
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_8d

    .line 1633
    return-void

    .line 1609
    :cond_6e
    :try_start_6e
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1611
    const/4 v7, 0x1

    .line 1617
    :goto_79
    if-eqz v7, :cond_38

    .line 1618
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_38

    .line 1622
    :catchall_85
    move-exception v1

    monitor-exit v8
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_85

    throw v1

    .line 1614
    :cond_88
    :try_start_88
    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_85

    move-result v7

    goto :goto_79

    .line 1632
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public storeMultiSIMProfileWallpaper(III)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "simSlot"    # I
    .param p3, "profileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2038
    const/4 v3, 0x0

    .line 2039
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 2040
    .local v2, "file":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2041
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2077
    :cond_c
    :goto_c
    return-void

    .line 2046
    :cond_d
    const/4 v6, -0x1

    if-eq p3, v6, :cond_c

    .line 2051
    if-nez p2, :cond_45

    .line 2052
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string/jumbo v6, "wallpaper"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2057
    .restart local v2    # "file":Ljava/io/File;
    :cond_1a
    :goto_1a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_51

    .line 2059
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2060
    .local v4, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2061
    :cond_32
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2062
    .local v5, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_c

    .line 2053
    .end local v4    # "wallpaperFile":Ljava/io/File;
    .end local v5    # "wallpaperInfoFile":Ljava/io/File;
    :cond_45
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1a

    .line 2054
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string/jumbo v6, "wallpaper2"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1a

    .line 2066
    :cond_51
    const/4 v1, 0x0

    .line 2067
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WallpaperManagerService;->getMultiSIMProfileWallpaper(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2068
    if-eqz v1, :cond_c

    .line 2073
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_c

    .line 2074
    :catch_60
    move-exception v6

    goto :goto_c
.end method

.method public storeMultiSIMProfileWallpaperInfo(II)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "profileId"    # I

    .prologue
    .line 2149
    const/4 v3, 0x0

    .line 2150
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 2151
    .local v2, "file":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2152
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2185
    :cond_c
    :goto_c
    return-void

    .line 2157
    :cond_d
    const/4 v6, -0x1

    if-eq p2, v6, :cond_c

    .line 2162
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2164
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_45

    .line 2166
    :cond_20
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2167
    .local v4, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2168
    :cond_32
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2169
    .local v5, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_c

    .line 2173
    .end local v4    # "wallpaperFile":Ljava/io/File;
    .end local v5    # "wallpaperInfoFile":Ljava/io/File;
    :cond_45
    const/4 v1, 0x0

    .line 2174
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->getMultiSIMProfileWallpaperInfo(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2175
    if-eqz v1, :cond_c

    .line 2180
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_c

    .line 2181
    :catch_54
    move-exception v6

    goto :goto_c
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 690
    :try_start_3
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    .line 691
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 692
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_1c

    .line 693
    new-instance v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 694
    .restart local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 698
    :cond_1c
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2c

    .line 699
    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 700
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 702
    :cond_2c
    invoke-virtual {p0, v0, p2}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 703
    monitor-exit v2

    .line 704
    return-void

    .line 703
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 707
    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 708
    const/4 v6, 0x0

    .line 710
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 712
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_1a
    .catchall {:try_start_4 .. :try_end_12} :catchall_2b

    move-result v0

    if-eqz v0, :cond_1c

    .line 713
    :try_start_15
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    .line 721
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_16
    return-void

    .line 710
    :cond_17
    :try_start_17
    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_19} :catch_1a
    .catchall {:try_start_17 .. :try_end_19} :catchall_2b

    goto :goto_a

    .line 715
    :catch_1a
    move-exception v7

    .line 716
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 718
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1c
    :try_start_1c
    const-string v0, "WallpaperService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 720
    monitor-exit v8

    goto :goto_16

    :catchall_2b
    move-exception v0

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemRunning()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 564
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 565
    .local v6, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 566
    new-instance v7, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v7, p0, v6}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v7, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    .line 567
    iget-object v7, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v7}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 568
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->registerSimChangedReceiver()V

    .line 570
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v7, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/WallpaperManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    :try_start_3a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/WallpaperManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/WallpaperManagerService$2;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_46} :catch_71

    .line 638
    :goto_46
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v7, :cond_86

    .line 639
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v7, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 640
    .local v4, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_86

    .line 641
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 642
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    new-instance v3, Lcom/android/server/WallpaperManagerService$PersonaObserver;

    iget v7, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v3, p0, v7}, Lcom/android/server/WallpaperManagerService$PersonaObserver;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 643
    .local v3, "observer":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v8, v3}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    goto :goto_56

    .line 632
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "observer":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    .end local v4    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_71
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_46

    .line 646
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_76
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_86

    .line 647
    new-instance v3, Lcom/android/server/WallpaperManagerService$PersonaObserver;

    invoke-direct {v3, p0, v9}, Lcom/android/server/WallpaperManagerService$PersonaObserver;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 648
    .restart local v3    # "observer":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v7, v9, v3}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 653
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "observer":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    .end local v4    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_86
    return-void
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v7, 0x0

    .line 1029
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    .line 1030
    .local v0, "SimStatusFlag":I
    if-nez p1, :cond_9

    const-string p1, ""

    .line 1032
    :cond_9
    :try_start_9
    iget v8, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v8}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1033
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_23

    .line 1034
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1035
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1042
    :cond_23
    const/4 v4, 0x0

    .line 1043
    .local v4, "file":Ljava/io/File;
    const-string v6, ""

    .line 1044
    .local v6, "nFile":Ljava/lang/String;
    const-string v5, ""

    .line 1046
    .local v5, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 1047
    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1048
    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1049
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1052
    .restart local v4    # "file":Ljava/io/File;
    const/high16 v8, 0x38000000

    invoke-static {v4, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1054
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_57

    move-object v3, v7

    .line 1062
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :goto_56
    return-object v3

    .line 1057
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "nFile":Ljava/lang/String;
    :cond_57
    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_59} :catch_5a

    goto :goto_56

    .line 1059
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :catch_5a
    move-exception v2

    .line 1060
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "WallpaperService"

    const-string v9, "Error setting wallpaper"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 1062
    goto :goto_56
.end method

.method updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1067
    if-nez p1, :cond_4

    const-string p1, ""

    .line 1069
    :cond_4
    :try_start_4
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1070
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1071
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1072
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1078
    :cond_1e
    const-string v4, ""

    .line 1079
    .local v4, "nFile":Ljava/lang/String;
    const-string v3, ""

    .line 1080
    .local v3, "fileName":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    if-eqz v5, :cond_2e

    .line 1081
    iget v5, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1082
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1084
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x38000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1086
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4f} :catch_50

    .line 1092
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :goto_4f
    return-object v2

    .line 1089
    :catch_50
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    const/4 v2, 0x0

    goto :goto_4f
.end method
