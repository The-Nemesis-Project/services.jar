.class Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;
.super Landroid/os/HandlerThread;
.source "MarvellFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSLockIntentSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/MarvellFALImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/MarvellFALImpl;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    .line 172
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 173
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    new-instance v1, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;-><init>(Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;)V

    iput-object v1, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    .line 273
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    iget-object v1, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z

    .line 275
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method
