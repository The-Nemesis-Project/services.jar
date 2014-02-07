.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2116
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2a

    .line 2141
    :goto_7
    return-void

    .line 2124
    :sswitch_8
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2128
    :cond_e
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1c

    :goto_18
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_7

    :cond_1c
    move v1, v2

    goto :goto_18

    .line 2132
    :sswitch_1e
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2135
    :cond_24
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iput-boolean v2, v0, Lcom/android/server/LocationManagerService;->mSendLocationBroadcast:Z

    goto :goto_7

    .line 2121
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_1e
    .end sparse-switch
.end method
