.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$1;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    .line 381
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    .line 379
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    invoke-direct {v1, p0, v5}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    .line 382
    const-string v1, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating settings for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_46
    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4f} :catch_8d

    .line 390
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 391
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 393
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 394
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "usb_device_manager.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 398
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_75
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 400
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->upgradeSingleUserLocked()V

    .line 402
    :cond_80
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->readSettingsLocked()V

    .line 403
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_96

    .line 405
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 406
    return-void

    .line 386
    :catch_8d
    move-exception v0

    .line 387
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_96
    move-exception v1

    :try_start_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbSettingsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 785
    .local v2, "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 786
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const/4 v0, 0x1

    goto :goto_b

    .line 790
    .end local v2    # "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_24
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 774
    .local v2, "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 775
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const/4 v0, 0x1

    goto :goto_b

    .line 779
    .end local v2    # "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_24
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "cleared":Z
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1059
    :try_start_4
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1061
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1062
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_31

    .line 1063
    aget-object v2, v3, v1

    .line 1064
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1065
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const/4 v0, 0x1

    .line 1062
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1070
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_31
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1072
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1073
    .restart local v3    # "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_44
    array-length v4, v3

    if-ge v1, v4, :cond_5e

    .line 1074
    aget-object v2, v3, v1

    .line 1075
    .restart local v2    # "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1076
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const/4 v0, 0x1

    .line 1073
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1081
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_5e
    monitor-exit v5

    return v0

    .line 1082
    :catchall_60
    move-exception v4

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v4
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 596
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 597
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 598
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 599
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 600
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 603
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 581
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 582
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 583
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 584
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 585
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 588
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1032
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 1033
    .local v0, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_15

    .line 1034
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1035
    .restart local v0    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_15
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1038
    return-void
.end method

.method private grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 1016
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 1018
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_19

    .line 1019
    new-instance v1, Landroid/util/SparseBooleanArray;

    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-direct {v1, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1020
    .restart local v1    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_19
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1023
    return-void
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 832
    const/4 v1, 0x0

    .line 835
    .local v1, "changed":Z
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d

    move-result-object v4

    .line 842
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_c
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 843
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_30

    monitor-exit v6

    .line 860
    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 837
    :catch_12
    move-exception v2

    .line 838
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    monitor-exit v6

    goto :goto_11

    .line 859
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2d
    move-exception v5

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v5

    .line 844
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_30
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    :try_start_31
    array-length v5, v0

    if-ge v3, v5, :cond_4d

    .line 846
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 848
    const/4 v1, 0x1

    .line 850
    :cond_3f
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 852
    const/4 v1, 0x1

    .line 844
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 856
    :cond_4d
    if-eqz v1, :cond_52

    .line 857
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 859
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_2d

    goto :goto_11
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 799
    .local v0, "changed":Z
    :try_start_2
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_37
    .catchall {:try_start_2 .. :try_end_7} :catchall_70

    move-result-object v3

    .line 800
    if-nez v3, :cond_11

    const/4 v5, 0x0

    .line 822
    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 824
    :cond_10
    :goto_10
    return v5

    .line 802
    :cond_11
    :try_start_11
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 803
    :goto_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_77

    .line 804
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 806
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 807
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 808
    const/4 v0, 0x1

    .line 817
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_33
    :goto_33
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_37
    .catchall {:try_start_11 .. :try_end_36} :catchall_70

    goto :goto_14

    .line 819
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_37
    move-exception v1

    .line 820
    .local v1, "e":Ljava/lang/Exception;
    :try_start_38
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_70

    .line 822
    if-eqz v3, :cond_59

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_56
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_59
    move v5, v0

    .line 824
    goto :goto_10

    .line 811
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5b
    :try_start_5b
    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 812
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 813
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6b} :catch_37
    .catchall {:try_start_5b .. :try_end_6b} :catchall_70

    move-result v5

    if-eqz v5, :cond_33

    .line 814
    const/4 v0, 0x1

    goto :goto_33

    .line 822
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .end local v4    # "tagName":Ljava/lang/String;
    :catchall_70
    move-exception v5

    if-eqz v3, :cond_76

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_76
    throw v5

    :cond_77
    if-eqz v3, :cond_59

    goto :goto_56
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 14
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .param p3, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 542
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 544
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 546
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 547
    if-nez v3, :cond_2b

    .line 548
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_74
    .catchall {:try_start_5 .. :try_end_25} :catchall_94

    .line 572
    if-eqz v3, :cond_2a

    :goto_27
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 574
    :cond_2a
    :goto_2a
    return v5

    .line 552
    :cond_2b
    :try_start_2b
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 553
    :goto_2e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v6, :cond_9b

    .line 554
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_54

    const-string/jumbo v7, "usb-device"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 556
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 557
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4a} :catch_74
    .catchall {:try_start_2b .. :try_end_4a} :catchall_94

    move-result v7

    if-eqz v7, :cond_70

    .line 572
    if-eqz v3, :cond_52

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_52
    move v5, v6

    .line 558
    goto :goto_2a

    .line 561
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_54
    if-eqz p4, :cond_70

    :try_start_56
    const-string/jumbo v7, "usb-accessory"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 562
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 563
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_66} :catch_74
    .catchall {:try_start_56 .. :try_end_66} :catchall_94

    move-result v7

    if-eqz v7, :cond_70

    .line 572
    if-eqz v3, :cond_6e

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6e
    move v5, v6

    .line 564
    goto :goto_2a

    .line 567
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_70
    :try_start_70
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74
    .catchall {:try_start_70 .. :try_end_73} :catchall_94

    goto :goto_2e

    .line 569
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_74
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/Exception;
    :try_start_75
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_94

    .line 572
    if-eqz v3, :cond_2a

    goto :goto_27

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_94
    move-exception v5

    if-eqz v3, :cond_9a

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9a
    throw v5

    :cond_9b
    if-eqz v3, :cond_2a

    goto :goto_27
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 412
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_18

    .line 413
    const-string v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 414
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 418
    :cond_18
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 419
    const-string/jumbo v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 420
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v1

    .line 421
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_31
    :goto_31
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 427
    return-void

    .line 412
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 422
    :cond_38
    const-string/jumbo v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 423
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v1

    .line 424
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method

.method private readSettingsLocked()V
    .registers 7

    .prologue
    .line 469
    const-string v4, "UsbSettingsManager"

    const-string v5, "readSettingsLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 472
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 474
    const/4 v2, 0x0

    .line 476
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 477
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 478
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 480
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 481
    :goto_23
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    .line 482
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "preference"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 484
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_39} :catch_4a
    .catchall {:try_start_12 .. :try_end_39} :catchall_58

    goto :goto_23

    .line 489
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagName":Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3b
    const-string v4, "UsbSettingsManager"

    const-string v5, "settings file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_58

    .line 495
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_42
    :goto_42
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 497
    return-void

    .line 486
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_46
    :try_start_46
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_49} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_58

    goto :goto_23

    .line 491
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagName":Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "UsbSettingsManager"

    const-string v5, "error reading settings file, deleting to start fresh"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_58

    goto :goto_42

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 909
    .local v4, "uid":I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 910
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_52

    .line 911
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_32

    .line 914
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_32
    move-exception v1

    .line 915
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 918
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 919
    .local v2, "identity":J
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const/high16 v5, 0x10000000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 922
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 923
    const-string v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    :try_start_71
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_78
    .catch Landroid/content/ActivityNotFoundException; {:try_start_71 .. :try_end_78} :catch_7c
    .catchall {:try_start_71 .. :try_end_78} :catchall_86

    .line 930
    :goto_78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    return-void

    .line 927
    :catch_7c
    move-exception v1

    .line 928
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_7d
    const-string v5, "UsbSettingsManager"

    const-string/jumbo v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_86

    goto :goto_78

    .line 930
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_86
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "defaultPackage"    # Ljava/lang/String;
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p5, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 667
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 669
    .local v1, "count":I
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveActivity : matches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", defaultPackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-nez v1, :cond_66

    .line 674
    if-eqz p5, :cond_5b

    .line 675
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 676
    .local v8, "uri":Ljava/lang/String;
    if-eqz v8, :cond_5b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5b

    .line 679
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v3, "dialogIntent":Landroid/content/Intent;
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v9, "uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    :try_start_54
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_54 .. :try_end_5b} :catch_5c

    .line 769
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-void

    .line 687
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v8    # "uri":Ljava/lang/String;
    :catch_5c
    move-exception v4

    .line 688
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "unable to start UsbAccessoryUriActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 697
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_66
    const/4 v2, 0x0

    .line 698
    .local v2, "defaultRI":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_88

    if-nez p3, :cond_88

    .line 701
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 702
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_88

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_88

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_88

    .line 705
    move-object v2, v6

    .line 709
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_88
    if-nez v2, :cond_a4

    if-eqz p3, :cond_a4

    .line 711
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8d
    if-ge v5, v1, :cond_a4

    .line 712
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 713
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_f3

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 715
    move-object v2, v6

    .line 721
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_a4
    if-eqz v2, :cond_104

    .line 722
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveActivity : defaultRI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-eqz p4, :cond_f6

    .line 725
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V

    .line 732
    :cond_cf
    :goto_cf
    :try_start_cf
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 735
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cf .. :try_end_e6} :catch_e8

    goto/16 :goto_5b

    .line 736
    :catch_e8
    move-exception v4

    .line 737
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "startActivity failed"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 711
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v5    # "i":I
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_f3
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 726
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_f6
    if-eqz p5, :cond_cf

    .line 727
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_cf

    .line 740
    :cond_104
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v7, "resolverIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 743
    const/4 v9, 0x1

    if-ne v1, v9, :cond_161

    .line 745
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v10, "rinfo"

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 749
    if-eqz p4, :cond_159

    .line 750
    const-string v9, "device"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    :goto_12d
    const-string v9, "UsbSettingsManager"

    const-string v10, "resolveActivity : UsbConfirmActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_134
    :try_start_134
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_13b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_134 .. :try_end_13b} :catch_13d

    goto/16 :goto_5b

    .line 765
    :catch_13d
    move-exception v4

    .line 766
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 752
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_159
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_12d

    .line 757
    :cond_161
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v9, "rlist"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 760
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 761
    const-string v9, "UsbSettingsManager"

    const-string v10, "resolveActivity : UsbResolverActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134
.end method

.method private upgradeSingleUserLocked()V
    .registers 8

    .prologue
    .line 434
    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 435
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 436
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_6c
    .catchall {:try_start_13 .. :try_end_1a} :catchall_5f

    .line 441
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 442
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 444
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 445
    :goto_25
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    .line 446
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 448
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_3b} :catch_55
    .catchall {:try_start_1a .. :try_end_3b} :catchall_69

    goto :goto_25

    .line 453
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_3c
    move-exception v0

    move-object v1, v2

    .line 454
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_3e
    :try_start_3e
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_5f

    .line 458
    .end local v0    # "e":Ljava/io/IOException;
    :goto_45
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 461
    :goto_48
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 464
    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 466
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_50
    return-void

    .line 450
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_51
    :try_start_51
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_69

    goto :goto_25

    .line 455
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_55
    move-exception v0

    move-object v1, v2

    .line 456
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_57
    :try_start_57
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_45

    .line 458
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_5f
    move-exception v5

    :goto_60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_64
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 459
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_48

    .line 458
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_69
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_60

    .line 455
    :catch_6c
    move-exception v0

    goto :goto_57

    .line 453
    :catch_6e
    move-exception v0

    goto :goto_3e
.end method

.method private writeSettingsLocked()V
    .registers 9

    .prologue
    .line 500
    const-string v5, "UsbSettingsManager"

    const-string/jumbo v6, "writeSettingsLocked()"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 506
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 507
    .local v4, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 508
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 509
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 510
    const/4 v5, 0x0

    const-string v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 513
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 516
    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_62} :catch_63

    goto :goto_39

    .line 530
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :catch_63
    move-exception v0

    .line 531
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to write settings"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    if-eqz v2, :cond_72

    .line 533
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 536
    .end local v0    # "e":Ljava/io/IOException;
    :cond_72
    :goto_72
    return-void

    .line 519
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :cond_73
    :try_start_73
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 520
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 523
    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7d

    .line 526
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_a7
    const/4 v5, 0x0

    const-string v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 529
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_b5} :catch_63

    goto :goto_72
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 639
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 641
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 646
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 649
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 650
    .local v3, "defaultPackage":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 651
    monitor-exit v6

    .line 653
    return-void

    .line 651
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_2d
    move-exception v0

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 663
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 900
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1f
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 894
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_1f
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1051
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 1053
    :cond_c
    monitor-exit v1

    .line 1054
    return-void

    .line 1053
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "device"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 615
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 621
    .local v3, "defaultPackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 622
    const-string v0, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usbDeviceAdded, sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 625
    monitor-exit v6

    .line 626
    return-void

    .line 625
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_4b
    move-exception v0

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_14 .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 634
    const-string v1, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceRemoved, sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 636
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1086
    iget-object v8, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1087
    :try_start_3
    const-string v7, "  Device permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    .local v2, "deviceName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1091
    .local v6, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1092
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-ge v4, v1, :cond_6a

    .line 1093
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1095
    :cond_6a
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1115
    .end local v1    # "count":I
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_70
    move-exception v7

    monitor-exit v8
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v7

    .line 1097
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_73
    :try_start_73
    const-string v7, "  Accessory permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 1099
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1101
    .restart local v6    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1102
    .restart local v1    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_b7
    if-ge v4, v1, :cond_da

    .line 1103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1105
    :cond_da
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    .line 1107
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v6    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_e0
    const-string v7, "  Device preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 1109
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    .line 1111
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_124
    const-string v7, "  Accessory preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_133
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 1113
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_133

    .line 1115
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_168
    monitor-exit v8
    :try_end_169
    .catchall {:try_start_73 .. :try_end_169} :catchall_70

    .line 1116
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1027
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V

    .line 1028
    monitor-exit v1

    .line 1029
    return-void

    .line 1028
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V

    .line 1012
    monitor-exit v1

    .line 1013
    return-void

    .line 1012
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1041
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1042
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit v1

    .line 1044
    :goto_11
    return v0

    .line 1043
    :cond_12
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    monitor-exit v1

    goto :goto_11

    .line 1045
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0

    .line 1044
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    goto :goto_11
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 878
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 879
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 880
    .local v0, "uid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_e

    .line 881
    const/4 v2, 0x1

    monitor-exit v3

    .line 888
    :goto_d
    return v2

    .line 883
    :cond_e
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 884
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const-string v2, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    if-nez v1, :cond_40

    .line 886
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_d

    .line 889
    .end local v0    # "uid":I
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v2

    .line 888
    .restart local v0    # "uid":I
    .restart local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_40
    :try_start_40
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3d

    goto :goto_d
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 863
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 864
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 865
    .local v0, "uid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_e

    .line 866
    const/4 v2, 0x1

    monitor-exit v3

    .line 873
    :goto_d
    return v2

    .line 868
    :cond_e
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 869
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const-string v2, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-nez v1, :cond_44

    .line 871
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_d

    .line 874
    .end local v0    # "uid":I
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v2

    .line 873
    .restart local v0    # "uid":I
    .restart local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_44
    :try_start_44
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    goto :goto_d
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 955
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 958
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 959
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 960
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 962
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 971
    :goto_1c
    return-void

    .line 963
    :catch_1d
    move-exception v0

    .line 964
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 969
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_26
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 970
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 935
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 938
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 939
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 940
    const-string v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 952
    :goto_1c
    return-void

    .line 943
    :catch_1d
    move-exception v0

    .line 944
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbSettingsManager"

    const-string v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 950
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_26
    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 992
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 993
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    .line 994
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 995
    if-nez p2, :cond_1f

    .line 996
    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    .line 1003
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 1004
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 1006
    :cond_1b
    monitor-exit v4

    .line 1007
    return-void

    :cond_1d
    move v0, v3

    .line 996
    goto :goto_16

    .line 998
    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    .line 999
    :goto_2c
    if-eqz v0, :cond_16

    .line 1000
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1006
    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    .line 998
    goto :goto_2c
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 974
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 975
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    .line 976
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 977
    if-nez p2, :cond_1f

    .line 978
    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    .line 985
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 986
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 988
    :cond_1b
    monitor-exit v4

    .line 989
    return-void

    :cond_1d
    move v0, v3

    .line 978
    goto :goto_16

    .line 980
    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    .line 981
    :goto_2c
    if-eqz v0, :cond_16

    .line 982
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 988
    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    .line 980
    goto :goto_2c
.end method
