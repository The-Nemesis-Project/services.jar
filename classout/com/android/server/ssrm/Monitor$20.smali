.class Lcom/android/server/ssrm/Monitor$20;
.super Landroid/app/IProcessObserver$Stub;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
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
    .line 989
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPID(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .prologue
    .line 991
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 992
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_c

    .line 993
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 996
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_1e
    return-object v2

    :cond_1f
    const-string v2, ""

    goto :goto_1e
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3b

    .line 1004
    if-eqz p3, :cond_2a

    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor$20;->getPackageNameFromPID(I)Ljava/lang/String;

    move-result-object v1

    .line 1021
    :goto_a
    if-eqz v1, :cond_29

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_29

    .line 1022
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1023
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x9

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1024
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1025
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1026
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    .end local v0    # "msg":Landroid/os/Message;
    :cond_29
    :goto_29
    return-void

    .line 1007
    :cond_2a
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1008
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1009
    monitor-exit v4

    goto :goto_29

    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw v3

    .line 1013
    :cond_3b
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$20;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1014
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 1015
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public onImportanceChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 1032
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1036
    return-void
.end method
