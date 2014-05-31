.class Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyOneHandDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 4028
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 4028
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 4032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_38

    .line 4033
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    if-eqz v0, :cond_33

    .line 4034
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    invoke-interface {v0}, Landroid/sec/easyonehand/IEasyOneHandWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4035
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    .line 4037
    const-string v0, "WindowManager"

    const-string v2, "EasyOneHand has died unexpectedly"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_35

    .line 4041
    :try_start_23
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->changeDisplayScale(IFFF)V

    .line 4042
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_3a
    .catchall {:try_start_23 .. :try_end_33} :catchall_35

    .line 4047
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v1

    .line 4052
    :goto_34
    return-void

    .line 4047
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_38} :catch_38

    .line 4048
    :catch_38
    move-exception v0

    goto :goto_34

    .line 4043
    :catch_3a
    move-exception v0

    goto :goto_33
.end method
