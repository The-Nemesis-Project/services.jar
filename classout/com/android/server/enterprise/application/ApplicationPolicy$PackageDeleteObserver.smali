.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .prologue
    .line 3519
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3525
    monitor-enter p0

    .line 3526
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->finished:Z

    .line 3527
    if-ne p2, v0, :cond_e

    :goto_7
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->result:Z

    .line 3528
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3529
    monitor-exit p0

    .line 3530
    return-void

    .line 3527
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 3529
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method