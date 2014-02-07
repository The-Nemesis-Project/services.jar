.class public Lcom/android/server/SecSCTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSCTimeReceiver.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/data/.drm/.sec_sctime/sec_sctime_beforeTime.ini"

.field private static final LIMIT_TIME:I = 0x7d0

.field private static final NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final TAG:Ljava/lang/String; = "SecSCTimeReceiver"

.field private static beforeBeforeTime:J

.field private static timeFormat:Ljava/lang/String;


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 57
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SecSCTimeReceiver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecSCTimeReceiver;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SecSCTimeReceiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SecSCTimeReceiver;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V

    return-void
.end method

.method static synthetic access$200(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_nitzReceived(J)V

    return-void
.end method

.method static synthetic access$300()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method private getBeforeTime()J
    .registers 13

    .prologue
    const-wide/16 v7, -0x1

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "beforeTime":J
    const/4 v2, 0x0

    .line 160
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/data/.drm/.sec_sctime/sec_sctime_beforeTime.ini"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_11} :catch_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_9d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_b4
    .catchall {:try_start_5 .. :try_end_11} :catchall_c2

    .line 161
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_11
    const-string v5, ""

    .line 162
    .local v5, "nextLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 164
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_21} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_21} :catch_dd
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_da
    .catchall {:try_start_11 .. :try_end_21} :catchall_d7

    goto :goto_18

    .line 177
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_22
    move-exception v4

    move-object v2, v3

    .line 178
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_24
    :try_start_24
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_c2

    .line 186
    if-eqz v2, :cond_2c

    .line 188
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_ce

    .line 191
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    :goto_2f
    move-wide v7, v0

    .line 194
    :goto_30
    return-wide v7

    .line 166
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_31
    :try_start_31
    const-string v9, "SecSCTimeReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 168
    sget-wide v9, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_72

    sget-wide v9, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    cmp-long v9, v9, v0

    if-nez v9, :cond_72

    .line 169
    const-string v9, "SecSCTimeReceiver"

    const-string v10, "returning because of double intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_68} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_68} :catch_dd
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_68} :catch_da
    .catchall {:try_start_31 .. :try_end_68} :catchall_d7

    .line 186
    if-eqz v3, :cond_6d

    .line 188
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_d3

    .line 191
    :cond_6d
    :goto_6d
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    move-object v2, v3

    .line 170
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_30

    .line 173
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_72
    :try_start_72
    const-string v7, "SecSCTimeReceiver"

    const-string v8, "proper beforetime so proceed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sput-wide v0, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    .line 176
    const-string v7, "SecSCTimeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_93} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_93} :catch_dd
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_93} :catch_da
    .catchall {:try_start_72 .. :try_end_93} :catchall_d7

    .line 186
    if-eqz v3, :cond_98

    .line 188
    :try_start_95
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_d5

    .line 191
    :cond_98
    :goto_98
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    move-object v2, v3

    .line 192
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2f

    .line 179
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_9d
    move-exception v4

    .line 180
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_9e
    :try_start_9e
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 181
    const-string v7, "SecSCTimeReceiver"

    const-string v8, "Before time does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_c2

    .line 182
    const-wide/16 v7, -0x2

    .line 186
    if-eqz v2, :cond_af

    .line 188
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_d1

    .line 191
    :cond_af
    :goto_af
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    goto/16 :goto_30

    .line 183
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_b4
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    :goto_b5
    :try_start_b5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_c2

    .line 186
    if-eqz v2, :cond_2c

    .line 188
    :try_start_ba
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_2c

    .line 189
    :catch_bf
    move-exception v7

    goto/16 :goto_2c

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_c2
    move-exception v7

    :goto_c3
    if-eqz v2, :cond_c8

    .line 188
    :try_start_c5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_cc

    .line 191
    :cond_c8
    :goto_c8
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    .line 186
    throw v7

    .line 189
    :catch_cc
    move-exception v8

    goto :goto_c8

    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_ce
    move-exception v7

    goto/16 :goto_2c

    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_d1
    move-exception v9

    goto :goto_af

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_d3
    move-exception v9

    goto :goto_6d

    :catch_d5
    move-exception v7

    goto :goto_98

    .line 186
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catchall_d7
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_c3

    .line 183
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_da
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_b5

    .line 179
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_dd
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_9e

    .line 177
    :catch_e0
    move-exception v4

    goto/16 :goto_24
.end method

.method private static native sec_sctime_autoUpdate()V
.end method

.method private static native sec_sctime_bootComplete()V
.end method

.method private sec_sctime_handleAutoTimeUpdation()V
    .registers 4

    .prologue
    .line 241
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 242
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 245
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCTimeReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCTimeReceiver$2;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private sec_sctime_handleConnectivityStateChanged()V
    .registers 4

    .prologue
    .line 286
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 287
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 290
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCTimeReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCTimeReceiver$3;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method private static native sec_sctime_nitzReceived(J)V
.end method

.method private static native sec_sctime_ntpReceived(JJ)V
.end method

.method private static native sec_sctime_removebeforefile()V
.end method

.method private static native sec_sctime_removedifffile()V
.end method

.method private static native sec_sctime_testMethod()V
.end method

.method private static native sec_sctime_unlock()V
.end method

.method private static native sec_sctime_updateTime(JJ)V
.end method

.method private sec_sctime_userUpdateHandler()V
    .registers 8

    .prologue
    .line 113
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "start sec_sctime_userUpdateHandler()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v4, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "nowTimeFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "autoEnable":I
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 123
    .local v1, "now":Ljava/util/Date;
    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_7a

    .line 125
    const-string v4, "24"

    sput-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 128
    :cond_7a
    if-nez v2, :cond_7e

    .line 130
    const-string v2, "24"

    .line 133
    :cond_7e
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 137
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Time was changed. time format is not changed check if it is auto update by Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v0, :cond_cc

    .line 141
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "This is a not Auto update. Time format is also not changed. Update Time Diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->handleUserUpdatedTimeUpdation()V

    .line 154
    :goto_cb
    return-void

    .line 145
    :cond_cc
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 146
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Auto time update is on. check network time again to pdate time diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V

    goto :goto_cb

    .line 151
    .end local v3    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :cond_db
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Just time format was changed. no need to udpate Time Diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sput-object v2, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    goto :goto_cb
.end method


# virtual methods
.method public SCTimeOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    .line 76
    sget-object v1, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 78
    iget-object v1, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 79
    const-string v1, "SecSCTimeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Format is: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2e
    if-eqz p2, :cond_5a

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 87
    const-string v1, "SecSCTimeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    :cond_5a
    :goto_5a
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_unlock()V

    .line 109
    return-void

    .line 92
    .restart local v0    # "action":Ljava/lang/String;
    :cond_5e
    const-string v1, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 93
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleNitztimeUpdation()V

    goto :goto_5a

    .line 95
    :cond_6a
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 96
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_userUpdateHandler()V

    goto :goto_5a

    .line 98
    :cond_76
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 101
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_5a
.end method

.method public handleUserUpdatedTimeUpdation()V
    .registers 10

    .prologue
    .line 222
    const-wide/16 v2, 0x0

    .line 223
    .local v2, "beforeTime":J
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "afterTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 225
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    .line 226
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->getBeforeTime()J

    move-result-wide v2

    .line 227
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_26

    .line 228
    const-string v5, "SecSCTimeReceiver"

    const-string v6, "BeforeBefore is same Before time. duplicate intent. do nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_25
    return-void

    .line 230
    :cond_26
    const-wide/16 v5, -0x2

    cmp-long v5, v2, v5

    if-nez v5, :cond_37

    .line 231
    const-string v5, "SecSCTimeReceiver"

    const-string v6, "Before time does not exist. remove diff file."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removedifffile()V

    goto :goto_25

    .line 235
    :cond_37
    const-string v5, "SecSCTimeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and afterTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_updateTime(JJ)V

    goto :goto_25
.end method

.method public onNetworkStateChanged(JJ)V
    .registers 9
    .param p1, "networktime"    # J
    .param p3, "systemtime"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 312
    cmp-long v0, p1, v1

    if-lez v0, :cond_73

    cmp-long v0, p3, v1

    if-lez v0, :cond_73

    .line 314
    const-string v0, "SecSCTimeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "SecSCTimeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_ntpReceived(JJ)V

    .line 318
    :cond_73
    return-void
.end method

.method public onNetworkTimeReceived(JJ)V
    .registers 11
    .param p1, "networktime"    # J
    .param p3, "systemtime"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 271
    cmp-long v2, p1, v3

    if-lez v2, :cond_74

    cmp-long v2, p3, v3

    if-lez v2, :cond_74

    .line 273
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. network time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] system time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. network time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] system time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_ntpReceived(JJ)V

    .line 283
    :goto_73
    return-void

    .line 278
    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 279
    .local v0, "systime":J
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. NTP could not checked. update diff file. system time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. NTP could not checked. update diff file. system time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->handleUserUpdatedTimeUpdation()V

    goto :goto_73
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "SecSCTimeReceiver"

    const-string v1, "onReceive : SecureClock Deactivate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public sec_sctime_handleNitztimeUpdation()V
    .registers 7

    .prologue
    .line 198
    const-string v3, "SecSCTimeReceiver"

    const-string v4, "sec_sctime_handleNitztimeUpdation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-wide/16 v1, 0x0

    .line 200
    .local v1, "nitzTime":J
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 202
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/server/SecSCTimeReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/server/SecSCTimeReceiver$1;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method
