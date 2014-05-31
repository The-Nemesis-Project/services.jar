.class Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PersonaManagerService$1;

    .prologue
    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1476
    const-string v0, "packageInstalled"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 1478
    if-nez p1, :cond_9

    .line 1479
    const-string p1, ""

    .line 1481
    :cond_9
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Installed return code for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    move-result-object v1

    monitor-enter v1

    .line 1483
    :try_start_32
    const-string v0, "PersonaManagerService"

    const-string v2, "mPackageInstallObserver  notify "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->installResult:I
    invoke-static {v0, p2}, Lcom/android/server/pm/PersonaManagerService;->access$302(Lcom/android/server/pm/PersonaManagerService;I)I

    .line 1485
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1486
    monitor-exit v1

    .line 1487
    return-void

    .line 1486
    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_49

    throw v0
.end method
