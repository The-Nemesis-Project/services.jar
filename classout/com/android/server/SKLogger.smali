.class public Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SKLogger$1;,
        Lcom/android/server/SKLogger$SKHandler;,
        Lcom/android/server/SKLogger$SKFormatter;
    }
.end annotation


# static fields
.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static SK_VERBOSE_DEFAULT:I

.field private static SK_VERBOSE_PROP:Ljava/lang/String;

.field private static mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

.field private static mLogger:Ljava/util/logging/Logger;

.field private static final mSKLogger:Lcom/android/server/SKLogger;

.field private static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    .line 33
    const-string v0, "SKLogger"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_TAG:Ljava/lang/String;

    .line 35
    const-string v0, "persist.security.ams.verbose"

    sput-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    .line 36
    sget v0, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    .line 39
    const-string v0, "/data/misc/audit/sk.log"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    .line 40
    const-string v0, "/data/misc/audit/sk.old"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    .line 41
    const v0, 0x19000

    sput v0, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Lcom/android/server/SKLogger;

    invoke-direct {v0}, Lcom/android/server/SKLogger;-><init>()V

    sput-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static getCurrentLogLevel()I
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 58
    const-class v8, Lcom/android/server/SKLogger;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 60
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_57

    if-nez v0, :cond_4d

    .line 62
    :try_start_b
    const-string v0, "SKLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_54
    .catchall {:try_start_b .. :try_end_13} :catchall_57

    .line 64
    :try_start_13
    new-instance v0, Lcom/android/server/SKLogger$SKHandler;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SKLogger$SKHandler;-><init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_29} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_29} :catch_54
    .catchall {:try_start_13 .. :try_end_29} :catchall_57

    .line 68
    :try_start_29
    new-instance v0, Lcom/android/server/SKLogger$SKFormatter;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$1;)V

    sput-object v0, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    .line 69
    sget-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    sget-object v1, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    invoke-virtual {v0, v1}, Lcom/android/server/SKLogger$SKHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 70
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 71
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_4d} :catch_54
    .catchall {:try_start_29 .. :try_end_4d} :catchall_57

    .line 77
    :cond_4d
    :try_start_4d
    sget-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_57

    :goto_4f
    monitor-exit v8

    return-object v0

    .line 65
    :catch_51
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v7

    .line 66
    goto :goto_4f

    .line 72
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_54
    move-exception v6

    .local v6, "e":Ljava/lang/SecurityException;
    move-object v0, v7

    .line 73
    goto :goto_4f

    .line 58
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catchall_57
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "isAllowed"    # I
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "agentType"    # I
    .param p5, "uid"    # I
    .param p6, "isSrcTrusted"    # Z
    .param p7, "isNoAudit"    # Z
    .param p8, "pid"    # I
    .param p9, "Service"    # Ljava/lang/String;
    .param p10, "method"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {}, Lcom/android/server/SKLogger;->getCurrentLogLevel()I

    move-result v0

    .line 113
    .local v0, "currentLogLevel":I
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    if-ne v0, v3, :cond_9

    .line 142
    :cond_8
    :goto_8
    return-void

    .line 118
    :cond_9
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    if-ne v0, v3, :cond_f

    if-gez p1, :cond_8

    .line 121
    :cond_f
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    if-eq v0, v3, :cond_16

    const/4 v3, 0x1

    if-eq p7, v3, :cond_8

    .line 125
    :cond_16
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 126
    .local v2, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 127
    const-string v3, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    if-ltz p1, :cond_108

    const-string v1, "SK-Allowed <"

    .line 130
    .local v1, "logText":Ljava/lang/String;
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "srcInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "containerAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DestInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dest_service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest_method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    sget-object v3, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 129
    .end local v1    # "logText":Ljava/lang/String;
    :cond_108
    const-string v1, "SK-Denied <"

    goto/16 :goto_2b
.end method
