.class Lcom/android/server/ssrm/PreMonitor$1;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->run()V
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
    .line 83
    iput-object p1, p0, Lcom/android/server/ssrm/PreMonitor$1;->this$0:Lcom/android/server/ssrm/PreMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 87
    const-wide/16 v0, 0x7d0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 89
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 90
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v6

    .line 92
    .local v6, "batteryTemp":I
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->triggerTemperature:I

    if-le v6, v0, :cond_2e

    .line 93
    const-string v0, "SSRMv2:PreMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run:: The PreSIOP is not activated. bat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v6    # "batteryTemp":I
    :cond_2d
    :goto_2d
    return-void

    .line 97
    .restart local v6    # "batteryTemp":I
    :cond_2e
    const/4 v0, 0x1

    # setter for: Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    .line 98
    const-string v0, "SSRMv2:PreMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run:: The PreSIOP is activated. bat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    if-eq v0, v8, :cond_7b

    .line 103
    new-instance v0, Landroid/os/DVFSHelper;

    # getter for: Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PRESIOP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    # setter for: Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 105
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 106
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 109
    :cond_7b
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v0, v8, :cond_ac

    .line 110
    new-instance v0, Landroid/os/DVFSHelper;

    # getter for: Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PRESIOP_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    # setter for: Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$402(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 112
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "GPU"

    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 113
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 116
    :cond_ac
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    if-eq v0, v8, :cond_bd

    .line 117
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 120
    :cond_bd
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v0, :cond_2d

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c9} :catch_cb

    goto/16 :goto_2d

    .line 123
    .end local v6    # "batteryTemp":I
    :catch_cb
    move-exception v7

    .line 124
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2d
.end method
