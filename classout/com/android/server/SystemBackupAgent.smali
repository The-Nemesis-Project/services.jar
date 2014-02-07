.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 8
    .param p1, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 97
    return-void
.end method

.method public static readSalesCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    const-string v0, ""

    .line 175
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 178
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    .line 183
    :cond_14
    :goto_14
    return-object v0

    .line 180
    :catch_15
    move-exception v1

    goto :goto_14
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService;

    .line 69
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService;
    new-array v0, v6, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v3, v0, v4

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 70
    .local v0, "files":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    aput-object v3, v1, v4

    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v5

    .line 71
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    .end local v0    # "files":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 76
    .restart local v0    # "files":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    .end local v1    # "keys":[Ljava/lang/String;
    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v4

    .line 78
    .restart local v1    # "keys":[Ljava/lang/String;
    :cond_3d
    const-string v3, "wallpaper"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v4, p0, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 80
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 2
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 86
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v6, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v6, v5, v7

    const-string v6, "/data/system/wallpaper_info.xml"

    aput-object v6, v5, v8

    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 106
    const-string v2, "system_files"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v8, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 110
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/server/SystemBackupAgent;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 111
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 112
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    :goto_57
    return-void

    .line 115
    :cond_58
    :try_start_58
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 117
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 119
    .local v1, "wallpaper":Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_66} :catch_67

    goto :goto_57

    .line 120
    .end local v1    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_67
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "SystemBackupAgent"

    const-string v3, "restore failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 125
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_57
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 24
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v11, 0x0

    .line 139
    .local v11, "restoredWallpaper":Z
    const/4 v9, 0x0

    .line 141
    .local v9, "outFile":Ljava/io/File;
    const-string v1, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 142
    const-string v1, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 143
    new-instance v9, Ljava/io/File;

    .end local v9    # "outFile":Ljava/io/File;
    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v9    # "outFile":Ljava/io/File;
    const/4 v11, 0x1

    .line 152
    :cond_44
    :goto_44
    if-nez v9, :cond_72

    .line 153
    :try_start_46
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unrecognized system file: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    .line 155
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 157
    if-eqz v11, :cond_8a

    .line 158
    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    check-cast v12, Lcom/android/server/WallpaperManagerService;

    .line 161
    .local v12, "wallpaper":Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v12}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_8a} :catch_9e

    .line 170
    .end local v12    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_8a
    :goto_8a
    return-void

    .line 145
    :cond_8b
    const-string v1, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 146
    new-instance v9, Ljava/io/File;

    .end local v9    # "outFile":Ljava/io/File;
    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v9    # "outFile":Ljava/io/File;
    const/4 v11, 0x1

    goto :goto_44

    .line 163
    :catch_9e
    move-exception v10

    .line 164
    .local v10, "e":Ljava/io/IOException;
    if-eqz v11, :cond_8a

    .line 166
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_8a
.end method
