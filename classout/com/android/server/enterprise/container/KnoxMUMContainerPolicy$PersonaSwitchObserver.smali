.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaSwitchObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field private mInitialize:Z

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .registers 4
    .param p2, "userId"    # I

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 1336
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 1339
    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    .line 1340
    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1357
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitchComplete: userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    if-ne v1, p1, :cond_43

    .line 1359
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1360
    iget-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    if-eqz v1, :cond_3c

    .line 1361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 1362
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 1363
    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)V

    .line 1366
    .end local v0    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_3c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1368
    :cond_43
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1344
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mContainerId:I

    if-ne v1, p1, :cond_1f

    .line 1345
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1346
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v0

    .line 1347
    .local v0, "state":I
    if-ne v0, v2, :cond_1f

    .line 1348
    iput-boolean v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;->mInitialize:Z

    .line 1352
    .end local v0    # "state":I
    :cond_1f
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1353
    return-void
.end method
