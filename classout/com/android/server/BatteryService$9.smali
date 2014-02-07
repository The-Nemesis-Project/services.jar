.class Lcom/android/server/BatteryService$9;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1005
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)V

    .line 1006
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
