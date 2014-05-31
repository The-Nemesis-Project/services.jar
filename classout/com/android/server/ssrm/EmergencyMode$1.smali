.class Lcom/android/server/ssrm/EmergencyMode$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/EmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/EmergencyMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/EmergencyMode;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode$1;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    return-void
.end method
