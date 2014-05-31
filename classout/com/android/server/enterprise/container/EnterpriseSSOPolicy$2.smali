.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 198
    .local v5, "result":I
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 200
    :cond_15
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 201
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "package:"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "pkg":Ljava/lang/String;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 203
    const-string v7, "com.centrify.sso.samsung"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_44

    const-string v7, "com.sec.android.service.singlesignon"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 204
    :cond_44
    const-string v7, "android.intent.extra.user_handle"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 205
    .local v6, "userHandle":I
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 206
    .local v3, "ownerUid":I
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I
    invoke-static {v7, v3, v6, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I

    move-result v5

    .line 207
    const-string v7, "EnterpriseSSOPolicyService"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserHandle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / UID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindSSOInterfaces result  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v7, 0x1

    if-eq v7, v5, :cond_a0

    const/4 v7, 0x2

    if-ne v7, v5, :cond_f8

    .line 211
    :cond_a0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "clientHandle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f9

    .line 213
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " setupSSO: adding cilentHandle :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V
    invoke-static {v7, v6}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$500(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)V

    .line 215
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    invoke-static {v7}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    .line 224
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v3    # "ownerUid":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "userHandle":I
    :cond_f8
    :goto_f8
    return-void

    .line 218
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "clientHandle":Ljava/lang/String;
    .restart local v3    # "ownerUid":I
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v6    # "userHandle":I
    :cond_f9
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " setupSSO: already present cilentHandle :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8
.end method
