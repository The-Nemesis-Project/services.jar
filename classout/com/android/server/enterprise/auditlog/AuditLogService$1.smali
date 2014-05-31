.class Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.REBOOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 113
    :cond_19
    const/4 v1, 0x0

    .line 114
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 115
    .local v2, "c":Ljava/util/Collection;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 117
    :try_start_2b
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    .local v3, "it":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 120
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    goto :goto_2f

    .line 122
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_41

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_44
    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 141
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "c":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_45
    :goto_45
    return-void

    .line 123
    :cond_46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 124
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # setter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z
    invoke-static {v4, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    .line 125
    const/4 v1, 0x0

    .line 126
    .restart local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 127
    .restart local v2    # "c":Ljava/util/Collection;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 129
    :try_start_69
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    .restart local v3    # "it":Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 132
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_6d

    .line 134
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_80
    move-exception v4

    monitor-exit v5
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_80

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_83
    :try_start_83
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_80

    .line 136
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 137
    invoke-static {v6}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    goto :goto_45
.end method
