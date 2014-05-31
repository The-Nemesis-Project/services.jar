.class Lcom/android/server/pm/PersonaManagerService$4$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$4;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$4;)V
    .registers 2

    .prologue
    .line 3571
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget v1, v1, Lcom/android/server/pm/PersonaManagerService$4;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3574
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3575
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_35

    .line 3576
    :try_start_1d
    const-string v0, "PersonaManagerService"

    const-string v3, "removeUserStateLocked is called..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget v3, v3, Lcom/android/server/pm/PersonaManagerService$4;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3578
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_32

    .line 3579
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_35

    .line 3580
    return-void

    .line 3578
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v0

    .line 3579
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v0
.end method
