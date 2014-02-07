.class Lcom/android/server/sec/InternalClipboardExService$3;
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
    .line 805
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 808
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_f4

    .line 858
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "ClipboardServiceEx"

    const-string v2, "handler msg : default"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_10
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 861
    :cond_13
    :goto_13
    return-void

    .line 815
    :pswitch_14
    const/4 v0, 0x0

    .line 816
    .local v0, "isClearDialogShown":Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 817
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 818
    const/4 v0, 0x1

    .line 819
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 821
    :cond_41
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->enabledDismissIntent(Z)V

    .line 822
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 825
    :cond_54
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I
    invoke-static {v6}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/sec/clipboard/ClipboardExManager;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$502(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 828
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 831
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    .line 837
    if-eqz v0, :cond_13

    .line 838
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->createClearConfirmDialog(Landroid/content/Context;)V

    .line 839
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->show()V

    goto/16 :goto_13

    .line 845
    .end local v0    # "isClearDialogShown":Z
    :pswitch_b1
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 846
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto/16 :goto_13

    .line 850
    :pswitch_d0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    if-eqz v1, :cond_ec

    .line 851
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_e3

    const-string v1, "ClipboardServiceEx"

    const-string v2, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_e3
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 854
    :cond_ec
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$502(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto/16 :goto_13

    .line 808
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b1
        :pswitch_d0
    .end packed-switch
.end method
