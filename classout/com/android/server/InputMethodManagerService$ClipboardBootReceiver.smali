.class Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClipboardBootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 603
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/InputMethodManagerService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/InputMethodManagerService;->access$202(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 607
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->startWritingBuddyService()V
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)V

    .line 611
    :cond_17
    return-void
.end method