.class Lcom/android/server/enterprise/device/DeviceInfo$6;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1450
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p2}, Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    move-result-object v1

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1602(Lcom/android/server/enterprise/device/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    .line 1451
    const-string v0, "DeviceInfo"

    const-string v1, "SysScope Service connected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1452
    monitor-exit p0

    return-void

    .line 1450
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1455
    monitor-enter p0

    :try_start_1
    const-string v0, "DeviceInfo"

    const-string v1, "SysScope Service has unexpectedly disconnected!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1602(Lcom/android/server/enterprise/device/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    .line 1457
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$100(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1458
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$100(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1459
    monitor-exit p0

    return-void

    .line 1455
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
