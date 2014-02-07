.class public Lcom/android/server/am/AMSLogger;
.super Ljava/lang/Object;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AMSLogger$1;,
        Lcom/android/server/am/AMSLogger$AMSHandler;,
        Lcom/android/server/am/AMSLogger$AMSFormatter;
    }
.end annotation


# static fields
.field private static AMS_VERBOSE_DEFAULT:I

.field private static AMS_VERBOSE_PROP:Ljava/lang/String;

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static final mAMSLogger:Lcom/android/server/am/AMSLogger;

.field private static mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

.field private static mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

.field private static mLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_OFF:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_ALL:I

    .line 28
    const-string v0, "AMSLogger"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    .line 32
    const-string v0, "persist.security.ams.verbose"

    sput-object v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    .line 33
    sget v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    .line 36
    const-string v0, "/data/misc/audit/ams.log"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_NEW:Ljava/lang/String;

    .line 37
    const-string v0, "/data/misc/audit/ams.old"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_OLD:Ljava/lang/String;

    .line 38
    const/16 v0, 0x5000

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_MAX_SIZE:I

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    .line 44
    new-instance v0, Lcom/android/server/am/AMSLogger;

    invoke-direct {v0}, Lcom/android/server/am/AMSLogger;-><init>()V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static getCurrentLogLevel()I
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/am/AMSLogger;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 55
    const-class v8, Lcom/android/server/am/AMSLogger;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    .line 57
    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_57

    if-nez v0, :cond_4d

    .line 59
    :try_start_b
    const-string v0, "AMSLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_54
    .catchall {:try_start_b .. :try_end_13} :catchall_57

    .line 61
    :try_start_13
    new-instance v0, Lcom/android/server/am/AMSLogger$AMSHandler;

    new-instance v1, Lcom/android/server/am/AMSLogger;

    invoke-direct {v1}, Lcom/android/server/am/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/AMSLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Lcom/android/server/am/AMSLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AMSLogger$AMSHandler;-><init>(Lcom/android/server/am/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_29} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_29} :catch_54
    .catchall {:try_start_13 .. :try_end_29} :catchall_57

    .line 65
    :try_start_29
    new-instance v0, Lcom/android/server/am/AMSLogger$AMSFormatter;

    new-instance v1, Lcom/android/server/am/AMSLogger;

    invoke-direct {v1}, Lcom/android/server/am/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/AMSLogger$AMSFormatter;-><init>(Lcom/android/server/am/AMSLogger;Lcom/android/server/am/AMSLogger$1;)V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

    .line 66
    sget-object v0, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

    sget-object v1, Lcom/android/server/am/AMSLogger;->mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AMSLogger$AMSHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 67
    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 68
    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_4d} :catch_54
    .catchall {:try_start_29 .. :try_end_4d} :catchall_57

    .line 75
    :cond_4d
    :try_start_4d
    sget-object v0, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_57

    :goto_4f
    monitor-exit v8

    return-object v0

    .line 62
    :catch_51
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v7

    .line 63
    goto :goto_4f

    .line 69
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_54
    move-exception v6

    .local v6, "e":Ljava/lang/SecurityException;
    move-object v0, v7

    .line 70
    goto :goto_4f

    .line 55
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catchall_57
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method public log(ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/pm/ApplicationInfo;ZZ)V
    .registers 12
    .param p1, "isAllowed"    # Z
    .param p2, "srcAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "isSrcTrusted"    # Z
    .param p4, "destAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isDestTrusted"    # Z
    .param p6, "isNoAudit"    # Z

    .prologue
    const/4 v4, 0x1

    .line 112
    invoke-static {}, Lcom/android/server/am/AMSLogger;->getCurrentLogLevel()I

    move-result v0

    .line 115
    .local v0, "currentLogLevel":I
    sget v2, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_OFF:I

    if-ne v0, v2, :cond_a

    .line 141
    :cond_9
    :goto_9
    return-void

    .line 119
    :cond_a
    sget v2, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    if-ne v0, v2, :cond_10

    if-eq p1, v4, :cond_9

    .line 123
    :cond_10
    sget v2, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_ALL:I

    if-eq v0, v2, :cond_16

    if-eq p6, v4, :cond_9

    .line 128
    :cond_16
    if-ne p1, v4, :cond_af

    const-string v1, "Allowed <"

    .line 131
    .local v1, "logText":Ljava/lang/String;
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p3, v4, :cond_b3

    const-string v2, "t:"

    :goto_27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p5, v4, :cond_b7

    const-string v2, "t:"

    :goto_6d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 128
    .end local v1    # "logText":Ljava/lang/String;
    :cond_af
    const-string v1, "Denied <"

    goto/16 :goto_1a

    .line 131
    .restart local v1    # "logText":Ljava/lang/String;
    :cond_b3
    const-string v2, "u:"

    goto/16 :goto_27

    .line 136
    :cond_b7
    const-string v2, "u:"

    goto :goto_6d
.end method
