.class Lcom/android/server/VibratorService$1;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 242
    return-void
.end method
