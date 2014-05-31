.class Lcom/android/server/ssrm/Monitor$23;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1679
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1682
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendCommandToSSRM:: create thread"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    :goto_d
    const-wide/32 v0, 0x927c0

    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_55

    .line 1688
    :goto_13
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v0, v0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    if-le v0, v5, :cond_42

    .line 1689
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    .line 1690
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCommandToSSRM:: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v3, v3, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1693
    :cond_42
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v0, v0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    if-ne v0, v5, :cond_54

    .line 1694
    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    .line 1695
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v4}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1698
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$23;->this$0:Lcom/android/server/ssrm/Monitor;

    iput v4, v0, Lcom/android/server/ssrm/Monitor;->mBrowserDashCount:I

    .line 1704
    :cond_54
    return-void

    .line 1686
    :catch_55
    move-exception v0

    goto :goto_13
.end method
