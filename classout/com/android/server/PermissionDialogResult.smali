.class Lcom/android/server/PermissionDialogResult;
.super Ljava/lang/Object;
.source "PermissionDialogResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogResult$Result;
    }
.end annotation


# instance fields
.field public mDialog:Lcom/android/server/PermissionDialog;

.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PermissionDialogResult$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogResult;->mDialog:Lcom/android/server/PermissionDialog;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogResult;->resultList:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public notifyAll(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PermissionDialogResult;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 69
    iget-object v1, p0, Lcom/android/server/PermissionDialogResult;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogResult$Result;

    .line 70
    .local v0, "res":Lcom/android/server/PermissionDialogResult$Result;
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogResult$Result;->set(I)V

    .line 71
    iget-object v1, p0, Lcom/android/server/PermissionDialogResult;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 73
    .end local v0    # "res":Lcom/android/server/PermissionDialogResult$Result;
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v1

    :cond_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 74
    return-void
.end method

.method public register(Lcom/android/server/PermissionDialogResult$Result;)V
    .registers 3
    .param p1, "res"    # Lcom/android/server/PermissionDialogResult$Result;

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PermissionDialogResult;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
