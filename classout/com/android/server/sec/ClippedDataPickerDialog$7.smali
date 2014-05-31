.class Lcom/android/server/sec/ClippedDataPickerDialog$7;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$currentMode:I

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V
    .registers 4

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1211
    const-string v6, ""

    .line 1212
    .local v6, "sendData":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    packed-switch v9, :pswitch_data_102

    .line 1241
    :cond_b
    :goto_b
    :pswitch_b
    const/4 v4, 0x0

    .line 1242
    .local v4, "intent":Landroid/content/Intent;
    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    if-nez v9, :cond_ab

    .line 1243
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .restart local v4    # "intent":Landroid/content/Intent;
    :goto_17
    if-eqz v4, :cond_be

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_be

    .line 1249
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1250
    const-string/jumbo v9, "title"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    const-string v9, "content"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 1254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1255
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1256
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1258
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_70

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_70
    :goto_70
    return-void

    .line 1214
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_71
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1215
    .local v7, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v7, :cond_b

    .line 1216
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 1220
    .end local v7    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_80
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 1221
    .local v1, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    if-eqz v1, :cond_b

    .line 1222
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 1226
    .end local v1    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :pswitch_8b
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1227
    .local v8, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    if-eqz v8, :cond_b

    .line 1228
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b

    .line 1232
    .end local v8    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_9b
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1233
    .local v5, "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    if-eqz v5, :cond_b

    .line 1234
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b

    .line 1245
    .end local v5    # "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_ab
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v9, "sec_container_1.android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_17

    .line 1261
    :cond_b4
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_70

    .line 1264
    :cond_be
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_70

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not save content..currentMode :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", intent :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sendData :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mContext :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 1212
    :pswitch_data_102
    .packed-switch 0x2
        :pswitch_71
        :pswitch_b
        :pswitch_80
        :pswitch_8b
        :pswitch_9b
    .end packed-switch
.end method
