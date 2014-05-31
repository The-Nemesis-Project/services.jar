.class Lcom/android/server/ssrm/CustomFrequencyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 2181
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 2182
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PreMonitor;->bootComplete()V

    .line 2183
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v3, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance(Landroid/content/Context;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 2184
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor;->initHandlerThread()V

    .line 2185
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2187
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-boolean v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    if-eqz v1, :cond_7d

    .line 2188
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2190
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-boolean v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    if-eqz v1, :cond_7c

    .line 2191
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2206
    :cond_7c
    :goto_7c
    return-void

    .line 2195
    :cond_7d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_7c

    .line 2198
    :cond_94
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 2199
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    goto :goto_7c

    .line 2200
    :cond_a1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 2201
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 2202
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_7c

    .line 2203
    :cond_b2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2204
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_7c
.end method
