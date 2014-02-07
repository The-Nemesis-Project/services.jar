.class Lcom/android/server/smartclip/SmartClipView$5;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 957
    const/4 v3, 0x1

    .line 958
    .local v3, "isScreenCaptureEnabled":Z
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$900(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 960
    .local v5, "totalPointerSize":I
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 961
    .local v0, "EDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 962
    .local v4, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_2e

    .line 963
    invoke-virtual {v4, v8}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 964
    const-string v6, "SmartClipView"

    const-string v7, "MDM: Screen Capture Disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_2d
    return-void

    .line 970
    :cond_2e
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-boolean v6, v6, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v6, v8, :cond_3c

    .line 971
    const-string v6, "SmartClipView"

    const-string v7, "flashannotate couldn\'t by MDM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 975
    :cond_3c
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 976
    const-string v6, "SmartClipView"

    const-string v7, "Now keyguard is on!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 980
    :cond_4c
    const-string v6, "SmartClipView"

    const-string v7, "Long pressed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :try_start_53
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const-string v7, "com.sec.spen.flashannotate"

    # invokes: Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1000(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 983
    const-string v6, "SmartClipView"

    const-string v7, "flashannotate is live!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_64} :catch_65

    goto :goto_2d

    .line 1011
    :catch_65
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 986
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6a
    :try_start_6a
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 987
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1102(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 988
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6, v5}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 989
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 991
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 993
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v6, v6, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    if-eqz v6, :cond_9f

    .line 1002
    const-string v6, "SmartClipView"

    const-string v7, "SpenGestureView: mPenLongPress: not freestyle-mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "FrontWindowLayer"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    :cond_9f
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/server/smartclip/SmartClipView;->access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1009
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v2, "intentForVideoPlay":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_c0} :catch_65

    goto/16 :goto_2d
.end method
