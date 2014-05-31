.class Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/IntentSender;)V
    .registers 5

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/PackageManagerService$3;->val$freeStorageSize:J

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$3;->val$pi:Landroid/content/IntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3087
    const-string v0, "PackageManager"

    const-string v1, "MSG"

    const-string v3, "FREE_STORAGE"

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    const/4 v7, -0x1

    .line 3089
    .local v7, "retCode":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3090
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$3;->val$freeStorageSize:J

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v7

    .line 3091
    if-gez v7, :cond_2d

    .line 3092
    const-string v0, "PackageManager"

    const-string v3, "Couldn\'t clear application caches"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_3f

    .line 3095
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_3e

    .line 3098
    if-ltz v7, :cond_42

    const/4 v2, 0x1

    .line 3099
    .local v2, "code":I
    :goto_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_3e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_35 .. :try_end_3e} :catch_44

    .line 3105
    .end local v2    # "code":I
    :cond_3e
    :goto_3e
    return-void

    .line 3094
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 3098
    :cond_42
    const/4 v2, 0x0

    goto :goto_35

    .line 3101
    .restart local v2    # "code":I
    :catch_44
    move-exception v6

    .line 3102
    .local v6, "e1":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "PackageManager"

    const-string v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method
