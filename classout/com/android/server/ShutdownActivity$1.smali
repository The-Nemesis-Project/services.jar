.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;

.field final synthetic val$rebootReason:Ljava/lang/String;

.field final synthetic val$systemRequest:Z


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    iput-object p3, p0, Lcom/android/server/ShutdownActivity$1;->val$rebootReason:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 73
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 76
    .local v0, "pm":Landroid/os/IPowerManager;
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 77
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/ShutdownActivity$1;->val$rebootReason:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 89
    :goto_1e
    return-void

    .line 80
    :cond_1f
    iget-boolean v1, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    if-eqz v1, :cond_29

    .line 81
    invoke-interface {v0}, Landroid/os/IPowerManager;->systemShutdown()V

    goto :goto_1e

    .line 87
    :catch_27
    move-exception v1

    goto :goto_1e

    .line 84
    :cond_29
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_33} :catch_27

    goto :goto_1e
.end method
