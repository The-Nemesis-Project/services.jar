.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartClipMetaDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 241
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$100(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$300(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 248
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$400(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    .line 306
    :cond_3b
    :goto_3b
    return-void

    .line 250
    :cond_3c
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$102(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    goto :goto_3b

    .line 252
    :cond_43
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 253
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "SmartClipMetaDataDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 257
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 259
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 260
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto :goto_3b

    .line 262
    :cond_8f
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 263
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 266
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 267
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto :goto_3b

    .line 270
    :cond_b5
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 272
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    goto/16 :goto_3b

    .line 275
    :cond_c7
    if-nez v1, :cond_3b

    .line 277
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 278
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 279
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    .line 282
    .end local v1    # "reason":Ljava/lang/String;
    :cond_e1
    const-string v2, "DismissSmartClipDialogFromIMMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 283
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$102(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 284
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get DismissSmartClipDialogFromIMMService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 286
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 287
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    .line 289
    :cond_10d
    const-string v2, "DismissSmartClipDialogFromPhoneStatusBar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 290
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get DismissSmartClipDialogFromPhoneStatusBar"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 292
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    .line 293
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    .line 295
    :cond_134
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 296
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_USER_PRESENT"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 298
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$400(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    goto/16 :goto_3b

    .line 300
    :cond_15c
    const-string v2, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 301
    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get com.sec.android.intent.action.HOME_RESUME"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 303
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b
.end method
