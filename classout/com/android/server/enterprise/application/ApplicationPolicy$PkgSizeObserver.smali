.class Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field finished:Z

.field mPkgStats:Landroid/content/pm/PackageStats;

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3328
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 3329
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 3331
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 4
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 3334
    monitor-enter p0

    .line 3335
    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 3336
    iput-boolean p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    .line 3337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 3338
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3339
    monitor-exit p0

    .line 3340
    return-void

    .line 3339
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
