.class Lcom/android/server/am/AppPermissionManagedDialog$2;
.super Landroid/os/Handler;
.source "AppPermissionManagedDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionManagedDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_24

    .line 225
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 242
    :cond_23
    :goto_23
    return-void

    .line 227
    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_78

    .line 228
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v0

    if-ne v0, v1, :cond_60

    .line 229
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-enter v1

    .line 230
    :try_start_37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v0, v2, :cond_54

    .line 231
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 233
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_75

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 237
    :cond_60
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto :goto_23

    .line 233
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 239
    :cond_78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 240
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # invokes: Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V
    invoke-static {v0}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V

    goto :goto_23
.end method
