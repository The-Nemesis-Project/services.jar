.class Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field private mAdminUid:I

.field private final mContainerId:I

.field private mProxySetting:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    .line 82
    iput p3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 105
    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-eq v3, v4, :cond_30

    .line 106
    iput v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v4, "mdm.intent.action.clear.http.proxy"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 112
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 114
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_30
    return-void
.end method

.method isAlreadySet()Z
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isOwner(I)Z
    .registers 3
    .param p1, "adminUid"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setProxy(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "proxySetting"    # Ljava/lang/String;
    .param p3, "broadcast"    # Z

    .prologue
    .line 88
    if-eqz p2, :cond_33

    .line 89
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 90
    iput-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 91
    if-eqz p3, :cond_33

    .line 92
    new-instance v0, Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v4, "mdm.intent.action.set.http.proxy"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mdm.intent.extra.http.proxy.server"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 97
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_33
    return-void
.end method
