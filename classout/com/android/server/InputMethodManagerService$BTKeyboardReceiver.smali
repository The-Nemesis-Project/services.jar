.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "intentAction":Ljava/lang/String;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InputMethodService onReceive() intentAction"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 864
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 865
    .local v0, "extra":I
    const-string v4, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 866
    .local v2, "isKeyboard":Z
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 867
    .local v3, "prevState":I
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() getIntExtra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() getBooleanExtra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() prevState getIntExtra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    if-eqz v2, :cond_108

    .line 872
    if-ne v0, v8, :cond_13f

    .line 873
    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v4

    if-gez v4, :cond_b1

    .line 874
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--> 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    # setter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$902(I)I

    .line 877
    :cond_b1
    # operator++ for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$908()I

    .line 878
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[STATE_CONNECTED] mBTKeyboardCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    # |= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->access$476(I)I

    .line 880
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_NTTVoiceInput"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 882
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 887
    :goto_e4
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 888
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 890
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$600()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_108

    .line 891
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$600()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_139

    .line 892
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 920
    .end local v0    # "extra":I
    .end local v2    # "isKeyboard":Z
    .end local v3    # "prevState":I
    :cond_108
    :goto_108
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$400()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void

    .line 883
    .restart local v0    # "extra":I
    .restart local v2    # "isKeyboard":Z
    .restart local v3    # "prevState":I
    :cond_125
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseIMEinstalled()Z
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 884
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_e4

    .line 886
    :cond_133
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_e4

    .line 896
    :cond_139
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto :goto_108

    .line 903
    :cond_13f
    if-ne v3, v8, :cond_108

    .line 904
    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v4

    if-ge v4, v9, :cond_16c

    .line 905
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--> 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    # setter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {v9}, Lcom/android/server/InputMethodManagerService;->access$902(I)I

    .line 908
    :cond_16c
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[prevState : STATE_CONNECTED] mBTKeyboardCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    # --operator for: Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$906()I

    move-result v4

    if-nez v4, :cond_108

    .line 910
    const/4 v4, -0x3

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$472(I)I

    .line 911
    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$700()I

    move-result v4

    if-ne v4, v9, :cond_1a5

    .line 912
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness_mode"

    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$700()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    :cond_1a5
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 915
    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$702(I)I

    goto/16 :goto_108
.end method
