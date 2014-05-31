.class Lcom/android/server/connectivity/Vpn$1;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 183
    const-string v0, "Vpn"

    const-string v1, "onServiceConnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p2}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/service/ISecurityManager;

    move-result-object v0

    # setter for: Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$002(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 185
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 188
    const-string v0, "Vpn"

    const-string v1, "onServiceDisconnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$002(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 190
    return-void
.end method
