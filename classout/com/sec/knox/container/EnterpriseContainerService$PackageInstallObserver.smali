.class Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# static fields
.field public static final MAX_RETRY:I = 0x3


# instance fields
.field containerId:I

.field finished:Z

.field private numRetry:I

.field pkgName:Ljava/lang/String;

.field result:I

.field retry:Z

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .registers 5
    .param p2, "cid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2569
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 2570
    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    .line 2571
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    .line 2572
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    .line 2573
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 2575
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    .line 2576
    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    .line 2577
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2580
    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    .line 2581
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    .line 2582
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 2584
    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    .line 2585
    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2589
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    monitor-enter p0

    .line 2591
    const/4 v3, 0x1

    :try_start_24
    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    .line 2592
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 2593
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2594
    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_6e

    const/16 v3, -0x6e

    if-ne p2, v3, :cond_6e

    .line 2595
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    .line 2596
    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    .line 2597
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package installation failed due to internal error. Retry true. num retry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :goto_56
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_5f
    .catchall {:try_start_24 .. :try_end_5f} :catchall_8f

    move-result-object v2

    .line 2608
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_61
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2609
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_69} :catch_92
    .catchall {:try_start_61 .. :try_end_69} :catchall_8f

    .line 2613
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_69
    :try_start_69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2614
    monitor-exit p0

    .line 2615
    return-void

    .line 2601
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_6e
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting retry flag to false either success or numRetry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    .line 2604
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    goto :goto_56

    .line 2614
    :catchall_8f
    move-exception v3

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_8f

    throw v3

    .line 2610
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_92
    move-exception v0

    .line 2611
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    :try_start_94
    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_8f

    goto :goto_69
.end method
