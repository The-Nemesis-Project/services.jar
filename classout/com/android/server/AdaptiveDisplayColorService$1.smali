.class Lcom/android/server/AdaptiveDisplayColorService$1;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 223
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 207
    .local v1, "time":J
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$100(Lcom/android/server/AdaptiveDisplayColorService;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$200(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v3

    .line 209
    .local v3, "r":I
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$300(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v4

    .line 210
    .local v4, "g":I
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$400(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v5

    .line 211
    .local v5, "b":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v0, v0, v7

    float-to-int v6, v0

    .line 214
    .local v6, "lux":I
    const-string v0, "AdaptiveDisplayColorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "R = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", G = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", B = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lux = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/AdaptiveDisplayColorService;->access$500(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V

    .line 218
    return-void
.end method
