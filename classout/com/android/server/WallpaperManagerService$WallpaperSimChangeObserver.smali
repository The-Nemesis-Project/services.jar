.class Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperSimChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v7, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1800
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1836
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 1842
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_27

    iget-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_40

    .line 1843
    :cond_27
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I
    invoke-static {v1}, Lcom/android/server/WallpaperManagerService;->access$700(Lcom/android/server/WallpaperManagerService;)I

    move-result v1

    iput v1, v0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 1844
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1846
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v4}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 1849
    :cond_40
    monitor-exit v7

    .line 1850
    return-void

    .line 1849
    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    .end local v6    # "action":Ljava/lang/String;
    :catchall_42
    move-exception v0

    monitor-exit v7
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_42

    throw v0
.end method
