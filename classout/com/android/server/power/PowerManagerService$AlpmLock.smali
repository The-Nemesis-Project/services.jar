.class Lcom/android/server/power/PowerManagerService$AlpmLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlpmLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4298
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4300
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    .line 4303
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 4307
    :goto_b
    return-void

    .line 4304
    :catch_c
    move-exception v0

    .line 4305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$AlpmLock;->binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4309
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/power/PowerManagerService;->setAlpmModeLocked(ZIILandroid/os/IBinder;)V

    .line 4310
    return-void
.end method
