.class public Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SWThermalStabilizer.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field MINIMUM_CPU_MAXLIMIT:I

.field final PST_CHECK_PERIOD:I

.field PST_START_TEMPERATURE:I

.field PST_STOP_TEMPERATURE:I

.field SS_PREODIC_PERIOD:I

.field SS_START_DELAY:I

.field mCPUControl:Z

.field mCPULevel:I

.field mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mCurrentCPUMaxLimtLevel:I

.field mCurrentGPUMaxLimtLevel:I

.field mGPULevel:I

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mHandler:Landroid/os/Handler;

.field mIsFirstControl:Z

.field mPST:I

.field mPSTControlModeEnable:Z

.field mPSTControlStarted:Z

.field mPSTPackageName:Ljava/lang/String;

.field mPeriod:I

.field mSSCpuMaxFreq:I

.field mSSGpuMaxFreq:I

.field mSTSRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "SSRMv2:SWThermalStabilizer"

    sput-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const v0, 0xea60

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    .line 38
    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    .line 40
    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_CHECK_PERIOD:I

    .line 44
    const/16 v0, 0x1ea

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    .line 46
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    .line 48
    const v0, 0xdbba0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    .line 50
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 52
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 54
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 56
    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPULevel:I

    .line 69
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGPULevel:I

    .line 71
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 73
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    .line 75
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    .line 77
    new-instance v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;-><init>(Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    .line 106
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    .line 110
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 112
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 214
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    .line 240
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    .line 59
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v1, "SWThermalStabilizer"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.sts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 63
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeStsInitalValues()V

    .line 65
    :cond_64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method SSCPUControl(I)V
    .registers 9
    .param p1, "cpuFreq"    # I

    .prologue
    const/4 v6, -0x1

    .line 217
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    if-ne v0, p1, :cond_6

    .line 238
    :cond_5
    :goto_5
    return-void

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_19

    .line 222
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_CPU_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 225
    :cond_19
    if-ne p1, v6, :cond_23

    .line 226
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 227
    iput v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    goto :goto_5

    .line 231
    :cond_23
    if-eqz p1, :cond_5

    .line 232
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 233
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 234
    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    .line 235
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSCPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_5
.end method

.method SSGPUControl(I)V
    .registers 8
    .param p1, "gpuFreq"    # I

    .prologue
    .line 243
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    if-ne v0, p1, :cond_5

    .line 259
    :goto_4
    return-void

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_18

    .line 248
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 250
    :cond_18
    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    .line 252
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_24

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2a

    .line 253
    :cond_24
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_4

    .line 255
    :cond_2a
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 256
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSGPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_4
.end method

.method SSHeatControl(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 115
    if-eqz p1, :cond_54

    .line 116
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    if-eqz v0, :cond_c

    .line 117
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getInitialValues()V

    .line 120
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    if-eqz v0, :cond_45

    .line 121
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    .line 124
    :cond_1c
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    .line 154
    :goto_1e
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSHeatControl :: MAXCPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , MAXGPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 126
    :cond_45
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_51

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    .line 129
    :cond_51
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1e

    .line 132
    :cond_54
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8c

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    .line 138
    :goto_5e
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_92

    .line 139
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_6b

    .line 140
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    .line 146
    :cond_6b
    :goto_6b
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_77

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    if-ne v0, v2, :cond_77

    .line 147
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 149
    :cond_77
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 150
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    .line 152
    :cond_89
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1e

    .line 135
    :cond_8c
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    .line 136
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    goto :goto_5e

    .line 143
    :cond_92
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    .line 144
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    goto :goto_6b
.end method

.method changeCPUStep(Z)V
    .registers 4
    .param p1, "isDown"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_1e

    .line 160
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    if-lt v0, v1, :cond_1d

    .line 161
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 162
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    .line 168
    :cond_1d
    :goto_1d
    return-void

    .line 165
    :cond_1e
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 166
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    goto :goto_1d
.end method

.method changeGPUStep(Z)V
    .registers 5
    .param p1, "isDown"    # Z

    .prologue
    .line 171
    if-eqz p1, :cond_33

    .line 172
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    sget-object v2, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    if-lt v0, v1, :cond_25

    .line 173
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 174
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    .line 184
    :cond_24
    :goto_24
    return-void

    .line 176
    :cond_25
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_24

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    goto :goto_24

    .line 181
    :cond_33
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 182
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    goto :goto_24
.end method

.method changeStsInitalValues()V
    .registers 7

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 300
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.sts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_e4
    .catchall {:try_start_2 .. :try_end_e} :catchall_e2

    .line 301
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d3

    .line 302
    const-string/jumbo v3, "start_delay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 303
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_27} :catch_28
    .catchall {:try_start_e .. :try_end_27} :catchall_8d

    goto :goto_e

    .line 314
    :catch_28
    move-exception v3

    move-object v0, v1

    .line 317
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_2a
    if-eqz v0, :cond_2f

    .line 318
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_db

    .line 323
    :cond_2f
    :goto_2f
    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INIT Value change :: SS_START_DELAY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , SS_PREODIC_PERIOD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , PST_START_TEMPERATURE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , PST_STOP_TEMPERATURE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , MINIMUM_CPU_MAXLIMIT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 304
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_7a
    :try_start_7a
    const-string v3, "periodic_period"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 305
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8c} :catch_28
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8d

    goto :goto_e

    .line 316
    :catchall_8d
    move-exception v3

    move-object v0, v1

    .line 317
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_8f
    if-eqz v0, :cond_94

    .line 318
    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_de

    .line 316
    :cond_94
    :goto_94
    throw v3

    .line 306
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_95
    :try_start_95
    const-string/jumbo v3, "start_temperature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 307
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    goto/16 :goto_e

    .line 308
    :cond_aa
    const-string/jumbo v3, "stop_temperature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 309
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    goto/16 :goto_e

    .line 310
    :cond_bf
    const-string v3, "min_cpu_maxlimit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 311
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_d1} :catch_28
    .catchall {:try_start_95 .. :try_end_d1} :catchall_8d

    goto/16 :goto_e

    .line 317
    :cond_d3
    if-eqz v1, :cond_d8

    .line 318
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_e0

    :cond_d8
    :goto_d8
    move-object v0, v1

    .line 322
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_2f

    .line 320
    :catch_db
    move-exception v3

    goto/16 :goto_2f

    :catch_de
    move-exception v4

    goto :goto_94

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_e0
    move-exception v3

    goto :goto_d8

    .line 316
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :catchall_e2
    move-exception v3

    goto :goto_8f

    .line 314
    :catch_e4
    move-exception v3

    goto/16 :goto_2a
.end method

.method getInitialValues()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 187
    sget v0, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    .line 188
    .local v0, "SSRMCPUMaxLimit":I
    sget v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    .line 189
    .local v1, "SSRMGPUMaxLimit":I
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-nez v3, :cond_16

    .line 190
    :cond_e
    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v4, "There is no supported table."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_15
    return-void

    .line 193
    :cond_16
    if-ne v0, v5, :cond_21

    .line 194
    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 202
    :cond_1a
    if-ne v1, v5, :cond_32

    .line 203
    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 211
    :cond_1e
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    goto :goto_15

    .line 196
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 197
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_2f

    .line 198
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 196
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 205
    .end local v2    # "i":I
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_33
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 206
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_40

    .line 207
    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 205
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_33
.end method

.method public onFgAppChanged()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 262
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 263
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 264
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppChanged : RELEASE STS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    .line 267
    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 272
    :cond_3a
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 276
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusNotiReceived:: statusName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "FullScreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 279
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 280
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 281
    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz p2, :cond_6c

    .line 283
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    .line 284
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 286
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    .end local v0    # "sm":Lcom/android/server/ssrm/SortingMachine;
    :cond_6b
    :goto_6b
    return-void

    .line 288
    .restart local v0    # "sm":Lcom/android/server/ssrm/SortingMachine;
    :cond_6c
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSHeatControl(Z)V

    .line 289
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    .line 290
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_6b
.end method
