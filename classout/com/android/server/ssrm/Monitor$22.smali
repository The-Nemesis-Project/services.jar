.class Lcom/android/server/ssrm/Monitor$22;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->onBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$22;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1543
    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$22;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1545
    :try_start_5
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$22;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1546
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1547
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$22;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_20
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1d

    .line 1550
    :goto_1b
    :try_start_1b
    monitor-exit v1

    goto :goto_0

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 1548
    :catch_20
    move-exception v0

    goto :goto_1b
.end method
