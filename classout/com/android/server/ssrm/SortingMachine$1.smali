.class Lcom/android/server/ssrm/SortingMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SortingMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SortingMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/SortingMachine;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/SortingMachine;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine$1;->this$0:Lcom/android/server/ssrm/SortingMachine;

    # invokes: Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V
    invoke-static {v0}, Lcom/android/server/ssrm/SortingMachine;->access$000(Lcom/android/server/ssrm/SortingMachine;)V

    .line 198
    return-void
.end method
