.class Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;
.super Landroid/os/Handler;
.source "InternalSmartClipMetaDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/InternalSmartClipMetaDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    :goto_8
    return-void

    .line 128
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 129
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->enabledDismissIntent(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->dismiss()V

    .line 132
    :cond_24
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    new-instance v1, Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    iget-object v2, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$200(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iget-object v4, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$200(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepository;
    invoke-static {v4}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$300(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/samsung/android/smartclip/SmartClipDataRepository;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;-><init>(Landroid/content/Context;Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    # setter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0, v1}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$102(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    .line 133
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSmartClipPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;
    invoke-static {v1}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$400(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->setSmartClipMetaDataPasteTargetViewInfo(Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->show()V

    goto :goto_8

    .line 139
    :pswitch_5e
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 140
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    # getter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$100(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->dismiss()V

    .line 142
    :cond_6f
    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->mSCMetaDialog:Lcom/android/server/smartclip/SmartClipMetaDataDialog;
    invoke-static {v0, v1}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;->access$102(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    goto :goto_8

    .line 125
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5e
    .end packed-switch
.end method
