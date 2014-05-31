.class final Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmMotionInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method public constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    .line 80
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 98
    return-void
.end method
