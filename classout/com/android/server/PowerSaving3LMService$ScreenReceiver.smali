.class final Lcom/android/server/PowerSaving3LMService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerSaving3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerSaving3LMService;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p2, "x1"    # Lcom/android/server/PowerSaving3LMService$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 341
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    # invokes: Lcom/android/server/PowerSaving3LMService;->setForgroundPackage()V
    invoke-static {v1}, Lcom/android/server/PowerSaving3LMService;->access$400(Lcom/android/server/PowerSaving3LMService;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    # invokes: Lcom/android/server/PowerSaving3LMService;->enablePowerSaving()V
    invoke-static {v1}, Lcom/android/server/PowerSaving3LMService;->access$500(Lcom/android/server/PowerSaving3LMService;)V

    .line 347
    :cond_16
    :goto_16
    return-void

    .line 343
    :cond_17
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 344
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/PowerSaving3LMService;->access$600(Lcom/android/server/PowerSaving3LMService;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    # invokes: Lcom/android/server/PowerSaving3LMService;->disablePowerSaving()V
    invoke-static {v1}, Lcom/android/server/PowerSaving3LMService;->access$700(Lcom/android/server/PowerSaving3LMService;)V

    goto :goto_16
.end method