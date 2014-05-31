.class public final Lcom/android/server/PermissionDialogResult$Result;
.super Ljava/lang/Object;
.source "PermissionDialogResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialogResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PermissionDialogResult$Result;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/PermissionDialogResult$Result;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_b

    .line 40
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    goto :goto_1

    .line 41
    :catch_9
    move-exception v0

    goto :goto_1

    .line 44
    :cond_b
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_f

    .line 45
    iget v0, p0, Lcom/android/server/PermissionDialogResult$Result;->mResult:I

    return v0

    .line 44
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public set(I)V
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/PermissionDialogResult$Result;->mHasResult:Z

    .line 31
    iput p1, p0, Lcom/android/server/PermissionDialogResult$Result;->mResult:I

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
