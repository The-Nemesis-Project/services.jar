.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 266
    :cond_14
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 267
    .local v2, "userId":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1f

    .line 280
    .end local v2    # "userId":I
    :cond_1e
    :goto_1e
    return-void

    .line 269
    .restart local v2    # "userId":I
    :cond_1f
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 271
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z
    invoke-static {v3, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_3e
    .catchall {:try_start_2d .. :try_end_32} :catchall_4b

    .line 276
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3a
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 273
    :catch_3e
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    .line 276
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3a

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_4b
    move-exception v3

    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
.end method
