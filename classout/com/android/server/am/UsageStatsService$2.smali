.class Lcom/android/server/am/UsageStatsService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UsageStatsService;->monitorPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    # getter for: Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->access$400(Lcom/android/server/am/UsageStatsService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method
