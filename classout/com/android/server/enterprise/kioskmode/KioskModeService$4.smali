.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->retgisterSwitchingUserReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 741
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$900(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 743
    return-void
.end method
