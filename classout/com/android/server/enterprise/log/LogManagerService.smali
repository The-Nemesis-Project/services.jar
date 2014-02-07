.class public Lcom/android/server/enterprise/log/LogManagerService;
.super Landroid/app/enterprise/ILogManager$Stub;
.source "LogManagerService.java"


# static fields
.field private static final DISABLED:Ljava/lang/String; = "0"

.field private static final ENABLED:Ljava/lang/String; = "1"

.field private static final LOGGER_NAMES:[Ljava/lang/String;

.field private static final LOGGER_TYPES:[I

.field private static final LOG_CONFIG_FILE:Ljava/lang/String; = "/data/system/enterprise/log.cfg"

.field private static final TAG:Ljava/lang/String; = "LogManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private mLogReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ConsoleLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FileLogger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edms"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/enterprise/ILogManager$Stub;-><init>()V

    .line 132
    new-instance v1, Lcom/android/server/enterprise/log/LogManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/log/LogManagerService$1;-><init>(Lcom/android/server/enterprise/log/LogManagerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->initLog()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/log/LogManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method private checkCallingUidAccess()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 200
    .local v0, "uid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 205
    :cond_9
    :goto_9
    return v1

    .line 202
    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v2

    if-nez v2, :cond_9

    .line 203
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private static createLogger(I)Lcom/android/server/enterprise/log/Logger;
    .registers 5
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 116
    packed-switch p0, :pswitch_data_3c

    .line 122
    const-string v0, "LogManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Logger Type Returning Console Logger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    :goto_25
    return-object v0

    .line 118
    :pswitch_26
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 120
    :pswitch_30
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 116
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_30
    .end packed-switch
.end method

.method private getLogger(I)Lcom/android/server/enterprise/log/Logger;
    .registers 4
    .param p1, "logType"    # I

    .prologue
    .line 191
    if-eqz p1, :cond_d

    .line 192
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 194
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private initLog()V
    .registers 6

    .prologue
    .line 94
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/enterprise/log.cfg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "logCfg":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 97
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 100
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3c

    .line 101
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "/data/system/enterprise/log.cfg"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_39

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 103
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 100
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 106
    .end local v2    # "value":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private isValidLogLevel(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_8

    .line 180
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 178
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 171
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isValidLogType(I)Z
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_f

    aget v3, v0, v1

    .line 157
    .local v3, "logType":I
    if-ne p1, v3, :cond_c

    .line 158
    const/4 v4, 0x1

    .line 160
    .end local v3    # "logType":I
    :goto_b
    return v4

    .line 156
    .restart local v3    # "logType":I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 160
    .end local v3    # "logType":I
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method


# virtual methods
.method public copyLogs(Landroid/os/ParcelFileDescriptor;)I
    .registers 8
    .param p1, "file"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v4

    if-nez v4, :cond_8

    .line 319
    const/4 v1, -0x2

    .line 379
    :goto_7
    return v1

    .line 321
    :cond_8
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v4

    if-nez v4, :cond_11

    .line 322
    const/4 v1, -0x5

    goto :goto_7

    .line 325
    :cond_11
    :try_start_11
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 326
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1d} :catch_2d

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "error":I
    :try_start_1e
    new-instance v4, Lcom/android/server/enterprise/log/LogManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;-><init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_7

    .line 374
    :catch_27
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/4 v1, -0x6

    goto :goto_7

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":I
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_2d
    move-exception v2

    .line 328
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "LogManagerService"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, -0x6

    goto :goto_7
.end method

.method public disableLogging(I)I
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 238
    const/4 v0, -0x2

    .line 247
    :goto_7
    return v0

    .line 240
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 241
    const/4 v0, -0x3

    goto :goto_7

    .line 243
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->removeLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 246
    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "0"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public enableLogging(I)I
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 217
    const/4 v0, -0x2

    .line 226
    :goto_7
    return v0

    .line 219
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 220
    const/4 v0, -0x3

    goto :goto_7

    .line 222
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 223
    invoke-static {p1}, Lcom/android/server/enterprise/log/LogManagerService;->createLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->addLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 225
    :cond_1d
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "1"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLogLevel(I)I
    .registers 4
    .param p1, "logType"    # I

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 299
    const/4 v1, -0x3

    .line 305
    :goto_7
    return v1

    .line 301
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 302
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_13

    .line 303
    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->getLogLevel()I

    move-result v1

    goto :goto_7

    .line 305
    :cond_13
    const/4 v1, -0x5

    goto :goto_7
.end method

.method public isLoggingEnabled(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setLogLevel(II)I
    .registers 5
    .param p1, "logType"    # I
    .param p2, "level"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v1

    if-nez v1, :cond_8

    .line 274
    const/4 v1, -0x2

    .line 287
    :goto_7
    return v1

    .line 276
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 277
    const/4 v1, -0x3

    goto :goto_7

    .line 279
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogLevel(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 280
    const/4 v1, -0x4

    goto :goto_7

    .line 282
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 283
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_23

    .line 284
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/log/Logger;->setLogLevel(I)V

    .line 285
    const/4 v1, 0x0

    goto :goto_7

    .line 287
    :cond_23
    const/4 v1, -0x5

    goto :goto_7
.end method