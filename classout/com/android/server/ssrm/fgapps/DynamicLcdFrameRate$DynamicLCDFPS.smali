.class public abstract Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
.super Ljava/lang/Object;
.source "DynamicLcdFrameRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DynamicLCDFPS"
.end annotation


# instance fields
.field protected currentFPS:I

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;


# direct methods
.method protected constructor <init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    .line 77
    return-void
.end method


# virtual methods
.method protected calculateCurrentFPS()I
    .registers 3

    .prologue
    .line 122
    const/4 v0, 0x3

    .line 123
    .local v0, "fps":I
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    if-eqz v1, :cond_7

    .line 124
    const/4 v0, 0x0

    .line 136
    :goto_6
    return v0

    .line 126
    :cond_7
    sget v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    if-lez v1, :cond_d

    .line 127
    const/4 v0, 0x1

    goto :goto_6

    .line 128
    :cond_d
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    if-eqz v1, :cond_1b

    .line 129
    const/4 v0, 0x1

    goto :goto_6

    .line 130
    :cond_1b
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    if-eqz v1, :cond_29

    .line 131
    const/4 v0, 0x1

    goto :goto_6

    .line 133
    :cond_29
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract getSysfsPath()Ljava/lang/String;
.end method

.method public handleMonitorStateChanged()V
    .registers 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateFPS()V

    .line 85
    return-void
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateFPS()V

    .line 81
    return-void
.end method

.method public resetFPS()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    .line 89
    return-void
.end method

.method protected updateFPS()V
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->calculateCurrentFPS()I

    move-result v0

    .line 94
    .local v0, "newFPS":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    if-eq v1, v0, :cond_d

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateSysFSFile(I)V

    .line 96
    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    .line 98
    :cond_d
    return-void
.end method

.method protected updateSysFSFile(I)V
    .registers 7
    .param p1, "fps"    # I

    .prologue
    .line 101
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSysFSFile: fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_31

    .line 117
    :cond_30
    :goto_30
    return-void

    .line 108
    :cond_31
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    # invokes: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->isFPSValid(I)Z
    invoke-static {v1, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$100(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 109
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_57
    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 115
    invoke-static {}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V

    goto :goto_30

    .line 111
    :cond_69
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sys FS file wasn\'t updated!!!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method
