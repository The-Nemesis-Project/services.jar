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
    .line 243
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 245
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_29

    .line 246
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    :try_start_14
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_23} :catch_24

    .line 291
    :cond_23
    :goto_23
    return-void

    .line 249
    :catch_24
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_23

    .line 254
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_29
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_82

    .line 255
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_65

    .line 256
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 257
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_59

    .line 258
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 260
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_7a

    .line 261
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 264
    :cond_65
    :try_start_65
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_74} :catch_7d

    .line 270
    :goto_74
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto :goto_23

    .line 260
    :catchall_7a
    move-exception v2

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v2

    .line 265
    :catch_7d
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_74

    .line 271
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_82
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8d

    .line 272
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # invokes: Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V

    goto :goto_23

    .line 274
    :cond_8d
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v1, "in":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.capabilitymanager"

    const-string v3, "com.sec.android.app.cm.ui.CMApplicationListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_e4

    .line 280
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 281
    :try_start_bb
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_d8

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_d8

    .line 282
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 284
    :cond_d8
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_bb .. :try_end_d9} :catchall_fa

    .line 285
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 287
    :cond_e4
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto/16 :goto_23

    .line 284
    :catchall_fa
    move-exception v2

    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v2
.end method
