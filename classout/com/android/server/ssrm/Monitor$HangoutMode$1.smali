.class Lcom/android/server/ssrm/Monitor$HangoutMode$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor$HangoutMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor$HangoutMode;)V
    .registers 2

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1591
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mIsHangoutForeground:Z

    if-eqz v0, :cond_24

    .line 1592
    const-string v0, "1"

    const-string v1, "service.camera.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1593
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor$HangoutMode;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1598
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1599
    return-void

    .line 1595
    :cond_2e
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;->this$1:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor$HangoutMode;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_24
.end method
