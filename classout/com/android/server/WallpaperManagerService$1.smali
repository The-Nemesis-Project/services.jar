.class Lcom/android/server/WallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x2710

    .line 579
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 581
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/WallpaperManagerService;->onRemoveUser(I)V

    .line 604
    :cond_1a
    :goto_1a
    return-void

    .line 584
    :cond_1b
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 585
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 586
    .local v1, "newUserId":I
    const/16 v5, 0x64

    if-lt v1, v5, :cond_1a

    .line 587
    const-string v5, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding persona observer for user-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v2, Lcom/android/server/WallpaperManagerService$PersonaObserver;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {v2, v5, v1}, Lcom/android/server/WallpaperManagerService$PersonaObserver;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 589
    .local v2, "observer":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # getter for: Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 590
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->getContainerList()Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->access$500(Lcom/android/server/WallpaperManagerService;)Ljava/util/List;

    move-result-object v4

    .line 591
    .local v4, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_1a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 592
    new-instance v3, Lcom/android/server/WallpaperManagerService$PersonaObserver;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {v3, v5, v8}, Lcom/android/server/WallpaperManagerService$PersonaObserver;-><init>(Lcom/android/server/WallpaperManagerService;I)V

    .line 593
    .local v3, "ownerObserver":Lcom/android/server/WallpaperManagerService$PersonaObserver;
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    # getter for: Lcom/android/server/WallpaperManagerService;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    goto :goto_1a
.end method
