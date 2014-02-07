.class Lcom/android/server/power/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .registers 2

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$000(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 700
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 701
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$002(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 703
    :cond_17
    return-void
.end method
