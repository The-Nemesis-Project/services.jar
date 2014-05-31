.class Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaId:I

.field final synthetic val$removePersona:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .registers 4

    .prologue
    .line 3502
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    iput-boolean p3, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 3515
    const-string/jumbo v0, "userStopAborted"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 3516
    return-void
.end method

.method public userStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3505
    const-string/jumbo v1, "userStopped"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 3506
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    invoke-static {v1}, Lcom/android/server/pm/HandlerCacheManager;->clearHandlersForPersona(I)V

    .line 3507
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3508
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3509
    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_1e
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3510
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3511
    return-void

    .line 3509
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e
.end method
