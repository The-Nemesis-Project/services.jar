.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeystoreReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 211
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeystoreReceiver onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 214
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 215
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeystoreReceiver ACTION_PACKAGE_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3f
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 219
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    :goto_52
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z
    invoke-static {v3, v1, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    .line 237
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5e
    return-void

    .line 219
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_5f
    const/4 v0, 0x0

    goto :goto_52
.end method
