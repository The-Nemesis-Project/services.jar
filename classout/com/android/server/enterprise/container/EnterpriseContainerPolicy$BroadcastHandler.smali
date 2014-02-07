.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHandler"
.end annotation


# static fields
.field private static final EXTRA_INTENT:Ljava/lang/String; = "handler_intent"

.field private static final EXTRA_PERMISSION:Ljava/lang/String; = "handler_permission"

.field private static final MSG_INTENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_4e

    .line 175
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not handled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_40
    .catchall {:try_start_1 .. :try_end_22} :catchall_4b

    .line 182
    :goto_22
    monitor-exit p0

    return-void

    .line 166
    :pswitch_24
    :try_start_24
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "handler_intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 168
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "handler_permission"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40
    .catchall {:try_start_24 .. :try_end_3f} :catchall_4b

    goto :goto_22

    .line 179
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "permission":Ljava/lang/String;
    :catch_40
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Handled exception in BroadcastHandler.handleMessage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4b

    goto :goto_22

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4b
    move-exception v4

    monitor-exit p0

    throw v4

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public declared-synchronized send(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 186
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "handler_intent"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    const-string v2, "handler_permission"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 190
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 191
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 193
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method
