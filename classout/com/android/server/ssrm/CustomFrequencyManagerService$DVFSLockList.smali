.class Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .param p2, "x1"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    .prologue
    .line 1615
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V
    .registers 5
    .param p1, "wl"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .prologue
    .line 1619
    iget-object v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    .line 1620
    .local v0, "index":I
    if-gez v0, :cond_d

    .line 1621
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_d
    return-void
.end method

.method dumpDVFSLockList()V
    .registers 11

    .prologue
    .line 1743
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    move-result-object v3

    monitor-enter v3

    .line 1744
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    .line 1745
    .local v0, "N":I
    if-nez v0, :cond_f

    .line 1746
    monitor-exit v3

    .line 1786
    :goto_e
    return-void

    .line 1748
    :cond_f
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "############################ Start : CPU BOOST ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_153

    .line 1751
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_b4

    .line 1752
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MAX_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_b4
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14f

    .line 1761
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MIN_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_14f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 1770
    :cond_153
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "############################ END : CPU BOOST ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_18e

    .line 1774
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMaxLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_18e
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_1c2

    .line 1780
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMinLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    invoke-static {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_1c2
    monitor-exit v3

    goto/16 :goto_e

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1c5
    move-exception v2

    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_7 .. :try_end_1c7} :catchall_1c5

    throw v2
.end method

.method getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    .line 1646
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_22

    .line 1648
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1649
    .local v3, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v3, :cond_1f

    .line 1650
    iget-object v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1651
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1655
    .end local v3    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_22
    return-object v2
.end method

.method getIndex(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    .line 1636
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 1637
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_20

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1641
    .end local v1    # "i":I
    :goto_1f
    return v1

    .line 1636
    .restart local v1    # "i":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1641
    :cond_23
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 9

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    .line 1660
    .local v0, "N":I
    const/4 v3, -0x1

    .line 1661
    .local v3, "indexMaxFrequency":I
    const/4 v4, -0x1

    .line 1665
    .local v4, "maxFrequency":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 1666
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_21

    .line 1667
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1672
    .local v1, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 1673
    move v4, v1

    .line 1674
    move v3, v2

    .line 1665
    .end local v1    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1676
    .restart local v1    # "frequency":I
    :cond_24
    if-le v1, v4, :cond_21

    .line 1677
    move v4, v1

    .line 1678
    move v3, v2

    goto :goto_21

    .line 1684
    .end local v1    # "frequency":I
    :cond_29
    if-ltz v3, :cond_32

    .line 1685
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1697
    .local v5, "maxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :goto_31
    return-object v5

    .line 1691
    .end local v5    # "maxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_32
    const/4 v5, 0x0

    .restart local v5    # "maxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    goto :goto_31
.end method

.method getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 9

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->size()I

    move-result v0

    .line 1702
    .local v0, "N":I
    const/4 v3, -0x1

    .line 1703
    .local v3, "indexMinFrequency":I
    const/4 v4, -0x1

    .line 1707
    .local v4, "minFrequency":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 1708
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_21

    .line 1709
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1714
    .local v1, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 1715
    move v4, v1

    .line 1716
    move v3, v2

    .line 1707
    .end local v1    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1718
    .restart local v1    # "frequency":I
    :cond_24
    if-ge v1, v4, :cond_21

    .line 1719
    move v4, v1

    .line 1720
    move v3, v2

    goto :goto_21

    .line 1726
    .end local v1    # "frequency":I
    :cond_29
    if-ltz v3, :cond_32

    .line 1727
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1739
    .local v5, "minOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :goto_31
    return-object v5

    .line 1733
    .end local v5    # "minOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_32
    const/4 v5, 0x0

    .restart local v5    # "minOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    goto :goto_31
.end method

.method removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1626
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    .line 1627
    .local v0, "index":I
    if-ltz v0, :cond_d

    .line 1628
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1630
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
