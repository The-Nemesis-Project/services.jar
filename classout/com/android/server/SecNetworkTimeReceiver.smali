.class public Lcom/android/server/SecNetworkTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecNetworkTimeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecNetworkTimeReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecNetworkTimeReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private SecUpdateNetworkTime()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/SecNetworkTimeReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/SecNetworkTimeReceiver$1;-><init>(Lcom/android/server/SecNetworkTimeReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/android/server/SecNetworkTimeReceiver;->sec_update_networktime(J)V

    return-void
.end method

.method private static native sec_update_networktime(J)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/SecNetworkTimeReceiver;->mContext:Landroid/content/Context;

    .line 24
    const-string v2, "SecNetworkTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#$%Intent is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz p2, :cond_50

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 32
    const-string v2, "SecNetworkTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v2, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 36
    const-string v2, "SecNetworkTimeReceiver"

    const-string v3, "Update network time by Nitz."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/android/server/SecNetworkTimeReceiver;->SecUpdateNetworkTime()V

    .line 58
    .end local v0    # "action":Ljava/lang/String;
    :cond_50
    :goto_50
    return-void

    .line 39
    .restart local v0    # "action":Ljava/lang/String;
    :cond_51
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 41
    iget-object v2, p0, Lcom/android/server/SecNetworkTimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "autoEnable":I
    if-eqz v1, :cond_50

    .line 46
    const-string v2, "SecNetworkTimeReceiver"

    const-string v3, "Update network time by network."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/android/server/SecNetworkTimeReceiver;->SecUpdateNetworkTime()V

    goto :goto_50

    .line 50
    .end local v1    # "autoEnable":I
    :cond_73
    const-string v2, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 52
    const-string v2, "SecNetworkTimeReceiver"

    const-string v3, "Update network time by Nitz."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/server/SecNetworkTimeReceiver;->SecUpdateNetworkTime()V

    goto :goto_50
.end method
