.class public Lcom/android/server/ssrm/DevSysProperty;
.super Ljava/lang/Object;
.source "DevSysProperty.java"


# static fields
.field static final DEBUG:Z

.field static final SYS_PROPERTY_AP_TEMP:Ljava/lang/String; = "dev.ssrm.ap_temp"

.field static final SYS_PROPERTY_AP_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_BAT_TEMP:Ljava/lang/String; = "dev.ssrm.bat_temp"

.field static final SYS_PROPERTY_BAT_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_SSRM_FGAPP:Ljava/lang/String; = "dev.ssrm.fgapp"

.field static final SYS_PROPERTY_SSRM_INIT_FAILURE:Ljava/lang/String; = "0"

.field static final SYS_PROPERTY_SSRM_INIT_RESULT:Ljava/lang/String; = "dev.ssrm.init"

.field static final SYS_PROPERTY_SSRM_INIT_SUCCESS:Ljava/lang/String; = "1"

.field static final SYS_PROPERTY_SSRM_MODE:Ljava/lang/String; = "dev.ssrm.mode"

.field static final TAG:Ljava/lang/String; = "SSRMv2:DevSysProperty"

.field static sSsrmFgAppListeners:Ljava/lang/String;

.field static sSsrmModeList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFgAppListeners(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static addMode(Ljava/lang/String;)V
    .registers 3
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method getApTemperature()I
    .registers 4

    .prologue
    .line 53
    const-string v1, "dev.ssrm.ap_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    .line 55
    :cond_13
    const/16 v1, -0x3e7

    .line 57
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method getBatteryTemperature()I
    .registers 4

    .prologue
    .line 62
    const-string v1, "dev.ssrm.bat_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    .line 64
    :cond_13
    const/16 v1, -0x3e7

    .line 66
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method setSsrmInitResult(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 71
    const-string v1, "dev.ssrm.init"

    if-eqz p1, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 71
    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method

.method writeFgAppListenersToSystemProperty()V
    .registers 6

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ssrm_fgapps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    :cond_10
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 94
    const-string v2, "SSRMv2:DevSysProperty"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 98
    .end local v1    # "f":Ljava/io/File;
    :goto_1e
    return-void

    .line 95
    :catch_1f
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method

.method writeModeToSystemProperty()V
    .registers 3

    .prologue
    .line 80
    const-string v0, "dev.ssrm.mode"

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
