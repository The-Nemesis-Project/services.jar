.class public Lcom/android/server/enterprise/auditlog/InformFailure;
.super Ljava/lang/Object;
.source "InformFailure.java"


# static fields
.field private static mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;
    .registers 2

    .prologue
    .line 49
    const-class v1, Lcom/android/server/enterprise/auditlog/InformFailure;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    if-nez v0, :cond_e

    .line 50
    new-instance v0, Lcom/android/server/enterprise/auditlog/InformFailure;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/InformFailure;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 52
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "pack"    # Ljava/lang/String;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.audit.log.exception"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    if-eqz p2, :cond_16

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_21

    .line 65
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 66
    :cond_21
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "pack"    # Ljava/lang/String;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.audit.log.exception"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    if-eqz p2, :cond_12

    .line 72
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1d

    .line 75
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 76
    :cond_1d
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
