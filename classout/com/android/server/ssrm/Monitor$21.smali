.class Lcom/android/server/ssrm/Monitor$21;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V
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
    .line 1075
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1078
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v1

    .line 1079
    .local v1, "sipStatusInfo":Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v1, :cond_7

    .line 1101
    :goto_6
    return-void

    .line 1084
    :cond_7
    const-wide/16 v2, 0x64

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_26

    .line 1092
    :goto_c
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    if-eq v2, v3, :cond_48

    .line 1093
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    .line 1094
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onSIPVisibilityChangedForAll(Z)V

    .line 1095
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/Monitor;->updateFallbackTime(Z)V

    .line 1100
    :goto_22
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    goto :goto_6

    .line 1085
    :catch_26
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSIPIntentReceived:: InterruptedException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1097
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_48
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSIPIntentReceived:: Redundant SIP visibility update will be ignored."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
