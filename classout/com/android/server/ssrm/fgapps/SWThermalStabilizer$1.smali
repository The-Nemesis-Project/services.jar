.class Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;
.super Ljava/lang/Object;
.source "SWThermalStabilizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    sget v1, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    iput v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    .line 81
    # getter for: Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSTSRunnable::PST = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v2, v2, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-boolean v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    if-eqz v0, :cond_57

    .line 83
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    if-lt v0, v1, :cond_66

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-boolean v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    if-eqz v0, :cond_58

    .line 85
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    iput v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 86
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSHeatControl(Z)V

    .line 101
    :goto_4b
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_57
    return-void

    .line 88
    :cond_58
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    iput v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 89
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    goto :goto_4b

    .line 92
    :cond_66
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-boolean v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    if-eqz v0, :cond_7e

    .line 93
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v0, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    if-lt v0, v1, :cond_88

    .line 94
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    iput v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    .line 99
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSHeatControl(Z)V

    goto :goto_4b

    .line 96
    :cond_88
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;->this$0:Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    goto :goto_7e
.end method
