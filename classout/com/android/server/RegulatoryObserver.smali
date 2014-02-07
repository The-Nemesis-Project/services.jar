.class Lcom/android/server/RegulatoryObserver;
.super Landroid/os/UEventObserver;
.source "RegulatoryObserver.java"


# static fields
.field private static final MSG_COUNTRY_CODE:I = 0x0

.field private static final REGULATORY_UEVENT_MATCH:Ljava/lang/String; = "MODALIAS=platform:regulatory"

.field private static final TAG:Ljava/lang/String;

.field private static final UEVENT_FILE:Ljava/lang/String; = "/sys/devices/platform/regulatory.0/uevent"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryKeyword:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/android/server/RegulatoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 51
    const-string v0, "COUNTRY="

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryKeyword:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/server/RegulatoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/RegulatoryObserver$1;-><init>(Lcom/android/server/RegulatoryObserver;)V

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->init()V

    .line 60
    const-string v0, "MODALIAS=platform:regulatory"

    invoke-virtual {p0, v0}, Lcom/android/server/RegulatoryObserver;->startObserving(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/RegulatoryObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RegulatoryObserver;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/RegulatoryObserver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/RegulatoryObserver;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final init()V
    .registers 9

    .prologue
    .line 79
    :try_start_0
    sget-object v6, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v7, "RegulatoryObserver init."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/platform/regulatory.0/uevent"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v4, "uevent_buf":Ljava/io/BufferedReader;
    :cond_13
    :goto_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_41

    .line 86
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "event_string":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v2, v1, v6

    .line 88
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v5, v1, v6

    .line 89
    .local v5, "value":Ljava/lang/String;
    const-string v6, "COUNTRY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 93
    iput-object v5, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_13

    .line 97
    .end local v1    # "event_string":[Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "uevent_buf":Ljava/io/BufferedReader;
    .end local v5    # "value":Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v7, "This kernel may not have CRDA support."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_41
    return-void
.end method

.method private final run_crda()V
    .registers 5

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 106
    const-string v1, "wlan.crda.country"

    iget-object v2, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "ctl.start"

    const-string v2, "wifi-crda"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start wifi-crda service to run crda."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country Code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 112
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Send broadcast country code message."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 119
    :cond_4e
    :goto_4e
    return-void

    .line 116
    :catch_4f
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start wifi-crda service to run crda."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 65
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uevent:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-enter p0

    .line 68
    :try_start_1d
    const-string v1, "COUNTRY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regulatory Country Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_42} :catch_44
    .catchall {:try_start_1d .. :try_end_42} :catchall_5e

    .line 74
    :goto_42
    :try_start_42
    monitor-exit p0

    .line 75
    return-void

    .line 71
    :catch_44
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse country code from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 74
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_5e
    move-exception v1

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_5e

    throw v1
.end method
