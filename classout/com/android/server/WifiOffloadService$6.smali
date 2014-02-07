.class Lcom/android/server/WifiOffloadService$6;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$6;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$6;->val$processName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1021
    iget-object v4, p0, Lcom/android/server/WifiOffloadService$6;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1022
    .local v1, "manager":Landroid/app/ActivityManager;
    const/16 v4, 0x1f4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1023
    .local v3, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1024
    .local v2, "process":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_18

    .line 1025
    iget-object v4, p0, Lcom/android/server/WifiOffloadService$6;->val$processName:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1026
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 1027
    sget-object v5, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v5

    .line 1028
    :try_start_3a
    sget-object v4, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1029
    monitor-exit v5

    .line 1038
    .end local v2    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_40
    return-void

    .line 1029
    .restart local v2    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw v4

    .line 1034
    .end local v2    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_44
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 1035
    sget-object v5, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v5

    .line 1036
    :try_start_4a
    sget-object v4, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1037
    monitor-exit v5

    goto :goto_40

    :catchall_51
    move-exception v4

    monitor-exit v5
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_51

    throw v4
.end method
