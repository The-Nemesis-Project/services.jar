.class Lcom/android/server/ssrm/PreMonitor$2;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PreMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PreMonitor;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/ssrm/PreMonitor$2;->this$0:Lcom/android/server/ssrm/PreMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 160
    :try_start_2
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 162
    const-string v2, "SSRMv2:PreMonitor"

    const-string v3, "run:: The PreSIOP is deactivating now."

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    if-eq v2, v4, :cond_20

    .line 165
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 168
    :cond_20
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v2, v4, :cond_2f

    .line 169
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 172
    :cond_2f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    .line 173
    .local v1, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget v2, v2, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    if-eq v2, v4, :cond_43

    .line 174
    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget v2, v2, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    invoke-static {v2}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 176
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 179
    :cond_43
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v2, :cond_50

    .line 180
    const/16 v2, 0xff

    invoke-static {v2}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_54
    .catchall {:try_start_2 .. :try_end_50} :catchall_72

    .line 185
    .end local v1    # "monitor":Lcom/android/server/ssrm/Monitor;
    :cond_50
    :goto_50
    # setter for: Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z
    invoke-static {v5}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    .line 187
    return-void

    .line 182
    :catch_54
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_55
    const-string v2, "SSRMv2:PreMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_72

    goto :goto_50

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_72
    move-exception v2

    # setter for: Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z
    invoke-static {v5}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    throw v2
.end method
