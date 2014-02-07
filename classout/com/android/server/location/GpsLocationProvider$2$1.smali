.class Lcom/android/server/location/GpsLocationProvider$2$1;
.super Landroid/database/ContentObserver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$2;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$2;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2$1;->this$1:Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$2$1;->this$1:Lcom/android/server/location/GpsLocationProvider$2;

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 524
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$2$1;->this$1:Lcom/android/server/location/GpsLocationProvider$2;

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$2$1;->this$1:Lcom/android/server/location/GpsLocationProvider$2;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$902(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn is changed by :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2$1;->this$1:Lcom/android/server/location/GpsLocationProvider$2;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3a

    throw v0
.end method
