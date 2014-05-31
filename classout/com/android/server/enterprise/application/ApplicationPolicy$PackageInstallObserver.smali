.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 1814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1818
    monitor-enter p0

    .line 1819
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z

    .line 1820
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    .line 1821
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    .line 1822
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1823
    monitor-exit p0

    .line 1824
    return-void

    .line 1823
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method
