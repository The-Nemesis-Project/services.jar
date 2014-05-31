.class Lcom/android/server/ssrm/Monitor$19;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$19;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$19;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1b

    .line 967
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$19;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 968
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 969
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$19;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 972
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1b
    return-void
.end method
