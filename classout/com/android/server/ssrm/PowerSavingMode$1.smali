.class Lcom/android/server/ssrm/PowerSavingMode$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PowerSavingMode;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode$1;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$1;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    invoke-virtual {v0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    .line 72
    return-void
.end method