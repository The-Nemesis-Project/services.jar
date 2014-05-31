.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final LIGHT_STATE_UNKNOWN:I = 0x2

.field public static final MSG_LIGHT_OFF:I = 0x0

.field public static final MSG_LIGHT_ON:I = 0x1


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/LightsService$Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService;I)V
    .registers 6
    .param p2, "lightService"    # Lcom/android/server/LightsService;
    .param p3, "lightsId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5172
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5173
    invoke-virtual {p2, p3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/LightsService$Light;

    .line 5174
    iput v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    .line 5175
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    .line 5177
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 5178
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    .line 5180
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    .line 5181
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5182
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    .line 5195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 5196
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # I

    .prologue
    .line 5151
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # Z

    .prologue
    .line 5151
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightState()I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOn()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5151
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOff()V

    return-void
.end method

.method private getInputDeviceLightKeep()Z
    .registers 2

    .prologue
    .line 5261
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .registers 2

    .prologue
    .line 5233
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .registers 2

    .prologue
    .line 5253
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightOff()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5241
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5242
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 5243
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 5244
    return-void
.end method

.method private handleInputDeviceLightOn()V
    .registers 3

    .prologue
    .line 5237
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 5238
    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 5257
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    .line 5258
    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 5247
    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_6

    .line 5248
    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    .line 5250
    :cond_6
    return-void
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .registers 7
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5201
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    if-eqz v1, :cond_d

    .line 5202
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5203
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 5206
    :cond_d
    if-ne p1, v4, :cond_51

    .line 5207
    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5230
    :cond_23
    :goto_23
    return-void

    .line 5212
    :cond_24
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5213
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5214
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5216
    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    if-nez v1, :cond_4e

    .line 5218
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5219
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5220
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5221
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    .line 5229
    :cond_4e
    :goto_4e
    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    goto :goto_23

    .line 5224
    .end local v0    # "msg":Landroid/os/Message;
    :cond_51
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5225
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5226
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4e
.end method
