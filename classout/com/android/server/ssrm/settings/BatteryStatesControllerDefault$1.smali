.class Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;
.super Landroid/os/Handler;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->createHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;->this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    if-eqz v1, :cond_5

    .line 190
    :goto_4
    return-void

    .line 185
    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 186
    .local v0, "newMsg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 187
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 188
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    new-instance v1, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;

    iget-object v2, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;->this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;

    invoke-direct {v1, v2, v0}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;-><init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->start()V

    goto :goto_4
.end method
