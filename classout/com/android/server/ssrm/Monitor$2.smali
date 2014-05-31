.class Lcom/android/server/ssrm/Monitor$2;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 584
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v1, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_DELAY:I

    if-eqz v1, :cond_13

    .line 589
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v1, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_DELAY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 590
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_DELAY:I

    .line 592
    :cond_13
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 593
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreSIOP is working now."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_43

    .line 600
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v2, v2, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 601
    return-void

    .line 594
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    # invokes: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$100(Lcom/android/server/ssrm/Monitor;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 595
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v2, v2, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_24

    .line 597
    :catch_43
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThermistorObeserverTask:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
