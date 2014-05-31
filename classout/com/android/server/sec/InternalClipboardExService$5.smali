.class Lcom/android/server/sec/InternalClipboardExService$5;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .registers 2

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1183
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_16a

    .line 1255
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "ClipboardServiceEx"

    const-string v6, "handler msg : default"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_10
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1258
    :cond_13
    :goto_13
    return-void

    .line 1190
    :pswitch_14
    const/4 v4, 0x0

    .line 1191
    .local v4, "isClearDialogShown":Z
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 1192
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v5, :cond_41

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1193
    const/4 v4, 0x1

    .line 1194
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 1196
    :cond_41
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->enabledDismissIntent(Z)V

    .line 1197
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 1200
    :cond_54
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v9, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I
    invoke-static {v10}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/sec/clipboard/ClipboardExManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {v6, v7, v8}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5, v6}, Lcom/android/server/sec/InternalClipboardExService;->access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 1203
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v6}, Lcom/android/server/sec/InternalClipboardExService;->access$1000(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v7}, Lcom/android/server/sec/InternalClipboardExService;->access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1206
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    .line 1212
    if-eqz v4, :cond_13

    .line 1213
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->createClearConfirmDialog(Landroid/content/Context;)V

    .line 1214
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->show()V

    goto/16 :goto_13

    .line 1220
    .end local v4    # "isClearDialogShown":Z
    :pswitch_b1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1221
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v6}, Lcom/android/server/sec/InternalClipboardExService;->access$1000(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v7}, Lcom/android/server/sec/InternalClipboardExService;->access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto/16 :goto_13

    .line 1225
    :pswitch_d0
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    if-eqz v5, :cond_ec

    .line 1226
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_e3

    const-string v5, "ClipboardServiceEx"

    const-string v6, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_e3
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 1229
    :cond_ec
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v5, v6}, Lcom/android/server/sec/InternalClipboardExService;->access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto/16 :goto_13

    .line 1233
    :pswitch_f4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1234
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 1235
    const-string v5, "deletePath"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1236
    .local v3, "filePath":Ljava/lang/String;
    const-string v5, "extraDataPath"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    .local v2, "extraFilePath":Ljava/lang/String;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v5, :cond_12c

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete intent will be called. filePath :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", extraFilePath :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_12c
    const/4 v1, 0x0

    .line 1240
    .local v1, "deleteIntent":Landroid/content/Intent;
    if-eqz v3, :cond_162

    const-string v5, "data/data1/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_162

    .line 1241
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "deleteIntent":Landroid/content/Intent;
    const-string v5, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1245
    .restart local v1    # "deleteIntent":Landroid/content/Intent;
    :goto_13e
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1246
    const-string v5, "deletePath"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    if-eqz v2, :cond_155

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_155

    .line 1248
    const-string v5, "extraDataPath"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    :cond_155
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_13

    .line 1243
    :cond_162
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "deleteIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "deleteIntent":Landroid/content/Intent;
    goto :goto_13e

    .line 1183
    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b1
        :pswitch_d0
        :pswitch_f4
    .end packed-switch
.end method
