.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"

.field private static kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# instance fields
.field private final CDFS_FUNCTION:Ljava/lang/String;

.field private final CDFS_INSERT_PATH:Ljava/lang/String;

.field private final CDFS_PATH:Ljava/lang/String;

.field private final SUAVERSION_INSERT_PATH:Ljava/lang/String;

.field private cdfsEjectTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private cscTimer:Ljava/util/Timer;

.field private isAdbOnByToolLauncher:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_INSERT_PATH:Ljava/lang/String;

    .line 39
    const-string v0, "/system/etc/autorun.iso"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_PATH:Ljava/lang/String;

    .line 40
    const-string v0, "mass_storage,acm,mtp"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_FUNCTION:Ljava/lang/String;

    .line 41
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->SUAVERSION_INSERT_PATH:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbOnByToolLauncher:Z

    .line 54
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 55
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 60
    const-string v0, "KiesUsbManager"

    const-string v1, "KiesUsbManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 68
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCSCtimer()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveVersionFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private isAdbEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "enabled":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    if-ne v0, v1, :cond_12

    .line 80
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private saveISOToFile(Z)Z
    .registers 9
    .param p1, "bInsert"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "fout":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_32

    .line 139
    const-string v5, "KiesUsbManager"

    const-string v6, "saveISOToFile ISO setCDFSInsert"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_23
    .catchall {:try_start_c .. :try_end_13} :catchall_2b

    .line 142
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_13
    const-string v5, "/system/etc/autorun.iso"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_86
    .catchall {:try_start_13 .. :try_end_1c} :catchall_83

    .line 148
    if-eqz v2, :cond_21

    .line 149
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_69

    :cond_21
    :goto_21
    move-object v1, v2

    .line 173
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :goto_22
    return v3

    .line 143
    :catch_23
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :goto_24
    if-eqz v1, :cond_29

    .line 149
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_5f

    :cond_29
    :goto_29
    move v3, v4

    .line 144
    goto :goto_22

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2b
    move-exception v3

    .line 148
    :goto_2c
    if-eqz v1, :cond_31

    .line 149
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_64

    .line 147
    :cond_31
    :goto_31
    throw v3

    .line 158
    :cond_32
    const-string v5, "KiesUsbManager"

    const-string v6, "saveISOToFile ISO setCDFSEject"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_39
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_50
    .catchall {:try_start_39 .. :try_end_40} :catchall_58

    .line 161
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :try_start_40
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_80
    .catchall {:try_start_40 .. :try_end_49} :catchall_7d

    .line 167
    if-eqz v2, :cond_4e

    .line 168
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_78

    :cond_4e
    :goto_4e
    move-object v1, v2

    .line 173
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_22

    .line 162
    :catch_50
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_51
    if-eqz v1, :cond_56

    .line 168
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_6e

    :cond_56
    :goto_56
    move v3, v4

    .line 163
    goto :goto_22

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_58
    move-exception v3

    .line 167
    :goto_59
    if-eqz v1, :cond_5e

    .line 168
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_73

    .line 166
    :cond_5e
    :goto_5e
    throw v3

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catch_64
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_69
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 169
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_6e
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :catch_73
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_78
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7d
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_59

    .line 162
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_80
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_51

    .line 147
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_83
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2c

    .line 143
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_86
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_24
.end method

.method private saveVersionFile()Z
    .registers 11

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCSCtimer()V

    .line 90
    const-string v3, ""

    .line 91
    .local v3, "Versionresult":Ljava/lang/String;
    const-string v7, "ro.build.PDA"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "PDAvalue":Ljava/lang/String;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_27

    .line 93
    :cond_15
    const-string v7, "ril.approved_codever"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_27

    .line 95
    :cond_25
    const-string v1, "Unknown"

    .line 99
    :cond_27
    const-string v7, "ril.sw_ver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "PHONEvalue":Ljava/lang/String;
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_42

    .line 101
    :cond_37
    move-object v2, v1

    .line 102
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_42

    .line 103
    :cond_40
    const-string v2, "Unknown"

    .line 107
    :cond_42
    const-string v7, "ril.official_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "CSCvalue":Ljava/lang/String;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_64

    .line 109
    :cond_52
    const-string v7, "ril.approved_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_64

    .line 111
    :cond_62
    const-string v0, "Unknown"

    .line 115
    :cond_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v7, "KiesUsbManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save Versionresult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v5, 0x0

    .line 120
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_a8
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_be
    .catchall {:try_start_a8 .. :try_end_af} :catchall_cb

    .line 121
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_af
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b6} :catch_df
    .catchall {:try_start_af .. :try_end_b6} :catchall_dc

    .line 126
    if-eqz v6, :cond_bb

    .line 127
    :try_start_b8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_d7

    .line 132
    :cond_bb
    :goto_bb
    const/4 v7, 0x1

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_bd
    :goto_bd
    return v7

    .line 122
    :catch_be
    move-exception v4

    .line 123
    .local v4, "e":Ljava/io/IOException;
    :goto_bf
    const/4 v7, 0x0

    .line 126
    if-eqz v5, :cond_bd

    .line 127
    :try_start_c2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_bd

    .line 128
    :catch_c6
    move-exception v4

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bd

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v7

    .line 126
    :goto_cc
    if-eqz v5, :cond_d1

    .line 127
    :try_start_ce
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    .line 125
    :cond_d1
    :goto_d1
    throw v7

    .line 128
    :catch_d2
    move-exception v4

    .line 129
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v4

    .line 129
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bb

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_dc
    move-exception v7

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_cc

    .line 122
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_df
    move-exception v4

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_bf
.end method

.method private setCDFSEject()V
    .registers 3

    .prologue
    .line 201
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 203
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_15
    return-void
.end method

.method private setCDFSInsert()V
    .registers 3

    .prologue
    .line 194
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 196
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_15
    return-void
.end method

.method private setUsbCurrentSettingMode()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 180
    const-string/jumbo v1, "sys.usb.config"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "config":Ljava/lang/String;
    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "mass_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "mass_storage,acm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "mass_storage,acm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 183
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_58

    .line 184
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp,adb"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 189
    :goto_3b
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbCurrentSettingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sput-boolean v4, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 192
    :cond_57
    return-void

    .line 187
    :cond_58
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_3b
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized setCSCtimer()V
    .registers 5

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 216
    .local v0, "myTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    if-nez v1, :cond_20

    .line 217
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    .line 218
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 219
    const-string v1, "KiesUsbManager"

    const-string/jumbo v2, "startCDFSEjectTimer -> 30 seconds start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 221
    :cond_20
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startCDFSEjectTimer()V
    .registers 5

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 240
    .local v0, "myTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-nez v1, :cond_20

    .line 241
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 242
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 243
    const-string v1, "KiesUsbManager"

    const-string/jumbo v2, "startCDFSEjectTimer -> 30 seconds start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 245
    :cond_20
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopCDFSEjectTimer()V
    .registers 3

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    .line 249
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 251
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stopCDFSEjectTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 253
    :cond_15
    monitor-exit p0

    return-void

    .line 248
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCSCtimer()V
    .registers 3

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    .line 224
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    .line 226
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stop cscTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 228
    :cond_15
    monitor-exit p0

    return-void

    .line 223
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
