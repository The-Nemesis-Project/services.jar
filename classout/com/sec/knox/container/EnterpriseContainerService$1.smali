.class Lcom/sec/knox/container/EnterpriseContainerService$1;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 2

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$1;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 579
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$1;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-static {p2}, Lcom/samsung/redexmobile/IReDexService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/redexmobile/IReDexService;

    move-result-object v1

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;
    invoke-static {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/samsung/redexmobile/IReDexService;)Lcom/samsung/redexmobile/IReDexService;

    .line 580
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redex Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$1;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/samsung/redexmobile/IReDexService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 581
    monitor-exit p0

    return-void

    .line 579
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 584
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Redex Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$1;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;
    invoke-static {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/samsung/redexmobile/IReDexService;)Lcom/samsung/redexmobile/IReDexService;

    .line 586
    return-void
.end method
