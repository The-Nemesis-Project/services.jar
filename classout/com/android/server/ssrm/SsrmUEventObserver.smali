.class public Lcom/android/server/ssrm/SsrmUEventObserver;
.super Landroid/os/UEventObserver;
.source "SsrmUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/SsrmUEventObserver$TmuState;
    }
.end annotation


# static fields
.field private static final SWITCH_NAME_MATCH:Ljava/lang/String; = "SWITCH_NAME"

.field private static final TAG:Ljava/lang/String; = "SSRMv2:SsrmUEventObserver"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "TMUSTATE"

.field private static mContext:Landroid/content/Context;

.field private static mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mUserBinary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    .line 38
    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 130
    return-void
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v4, "SSRMv2:SsrmUEventObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeCommand:: cmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 121
    .local v3, "runtime":Ljava/lang/Runtime;
    :try_start_1c
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 122
    .local v2, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_35

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_2e

    .line 128
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    :goto_34
    return-void

    .line 126
    :catch_35
    move-exception v4

    goto :goto_34
.end method

.method public static systemReady(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "Startng SsrmUEventObserver"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-object p0, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/ssrm/SsrmUEventObserver;

    invoke-direct {v0}, Lcom/android/server/ssrm/SsrmUEventObserver;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    .line 49
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0, v0}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 52
    sput-boolean v2, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    .line 53
    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "This is factory binary!"

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_2d
    sget-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    if-nez v0, :cond_4f

    move v0, v1

    :goto_32
    invoke-static {v0}, Lcom/android/server/ssrm/SSRMUtil;->setFactoryMode(Z)V

    .line 61
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v0, :cond_3d

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v0, :cond_51

    .line 62
    :cond_3d
    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    const-string v1, "TMUSTATE"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SsrmUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 66
    :cond_44
    :goto_44
    return-void

    .line 55
    :cond_45
    sput-boolean v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    .line 56
    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "This is user binary!"

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_4f
    move v0, v2

    .line 59
    goto :goto_32

    .line 63
    :cond_51
    sget-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    if-eqz v0, :cond_44

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-nez v0, :cond_5d

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_44

    .line 64
    :cond_5d
    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SsrmUEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_44
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v8, -0x1

    .line 81
    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UEvent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TMUSTATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_64

    move-result v5

    if-eq v5, v8, :cond_67

    .line 85
    :try_start_2a
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "TMU_UEVENT_MATCH matched"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v5, "TMUSTATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "TMU_STATE":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_48

    .line 88
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "Tmu state Tripping"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/server/ssrm/SsrmUEventObserver;->systemShutdown()V
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_48} :catch_4a
    .catchall {:try_start_2a .. :try_end_48} :catchall_64

    .line 112
    .end local v0    # "TMU_STATE":I
    :cond_48
    :goto_48
    :try_start_48
    monitor-exit p0

    .line 113
    return-void

    .line 91
    :catch_4a
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse TMUSTATE from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 112
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catchall_64
    move-exception v5

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_64

    throw v5

    .line 94
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SWITCH_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_64

    move-result v5

    if-eq v5, v8, :cond_48

    .line 96
    :try_start_73
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "SWITCH_NAME_MATCH matched"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "switchName":Ljava/lang/String;
    const-string/jumbo v5, "uart3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 100
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "switchState":Ljava/lang/String;
    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "state":I
    if-nez v2, :cond_b7

    .line 104
    const-string/jumbo v5, "stop at_distributor"

    invoke-static {v5}, Lcom/android/server/ssrm/SsrmUEventObserver;->executeCommand(Ljava/lang/String;)V

    goto :goto_48

    .line 109
    .end local v2    # "state":I
    .end local v3    # "switchName":Ljava/lang/String;
    .end local v4    # "switchState":Ljava/lang/String;
    :catch_b5
    move-exception v5

    goto :goto_48

    .line 105
    .restart local v2    # "state":I
    .restart local v3    # "switchName":Ljava/lang/String;
    .restart local v4    # "switchState":Ljava/lang/String;
    :cond_b7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_48

    .line 106
    const-string/jumbo v5, "start at_distributor"

    invoke-static {v5}, Lcom/android/server/ssrm/SsrmUEventObserver;->executeCommand(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_c0} :catch_b5
    .catchall {:try_start_73 .. :try_end_c0} :catchall_64

    goto :goto_48
.end method

.method public final systemShutdown()V
    .registers 4

    .prologue
    .line 69
    const-string v1, "SSRMv2:SsrmUEventObserver"

    const-string/jumbo v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_29

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "android.intent.extra.SYSTEM_REQUEST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_29
    return-void
.end method
