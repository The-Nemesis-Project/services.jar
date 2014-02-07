.class final Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HostAppDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 2

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ToolkitManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ToolkitManagerService$1;

    .prologue
    .line 1453
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;-><init>(Lcom/android/server/am/ToolkitManagerService;)V

    return-void
.end method


# virtual methods
.method public HostAppDeathRecipient()V
    .registers 1

    .prologue
    .line 1455
    return-void
.end method

.method public binderDied()V
    .registers 7

    .prologue
    .line 1457
    const-string v1, "ToolkitManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v3}, Lcom/android/server/am/ToolkitManagerService;->access$1800(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;->this$0:Lcom/android/server/am/ToolkitManagerService;

    monitor-enter v2

    .line 1460
    :try_start_21
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/ToolkitManagerService;->setHostPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_2b
    .catchall {:try_start_21 .. :try_end_29} :catchall_30

    .line 1464
    :goto_29
    :try_start_29
    monitor-exit v2

    .line 1465
    return-void

    .line 1461
    :catch_2b
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 1464
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v1
.end method
