.class Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .registers 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    .param p2, "x1"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " action is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 513
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "stateExtra":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " state Extra is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v7, "ABSENT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 517
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SIM Card State :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCardConstants$State;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "SimChangeTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/data/system/SimCard.dat"

    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 521
    const-string v7, "SimChangeOperation"

    const-string v8, "1"

    const-string v9, "/data/system/SimCard.dat"

    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/SimCard.dat"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v4, "lFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a0

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 528
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "simChangeInfo"

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v8, v8, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-virtual {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 531
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$200(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "lFile":Ljava/io/File;
    .end local v6    # "stateExtra":Ljava/lang/String;
    :cond_ca
    :goto_ca
    return-void

    .line 533
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v6    # "stateExtra":Ljava/lang/String;
    :cond_cb
    const-string v7, "LOADED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 534
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " SIM Card State : LOADED"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->saveSimState()V
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$300(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    .line 538
    const-string v7, "SimChangeTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/data/system/SimCard.dat"

    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    const-string v7, "PreviousSimSerialNumber"

    const-string v8, "/data/system/SimCard.dat"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, "previousSN":Ljava/lang/String;
    const-string v7, "CurrentSimSerialNumber"

    const-string v8, "/data/system/SimCard.dat"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "currentSN":Ljava/lang/String;
    if-eqz v5, :cond_15f

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15f

    .line 545
    const-string v7, "SimChangeOperation"

    const-string v8, "2"

    const-string v9, "/data/system/SimCard.dat"

    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    :goto_122
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.sec.SIM_CARD_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v7, "simChangeInfo"

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v8, v8, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-virtual {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$200(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13f} :catch_140

    goto :goto_ca

    .line 560
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "currentSN":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v5    # "previousSN":Ljava/lang/String;
    .end local v6    # "stateExtra":Ljava/lang/String;
    :catch_140
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->access$100(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIMCardBroadcastReceiver Ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "currentSN":Ljava/lang/String;
    .restart local v5    # "previousSN":Ljava/lang/String;
    .restart local v6    # "stateExtra":Ljava/lang/String;
    :cond_15f
    :try_start_15f
    const-string v7, "SimChangeOperation"

    const-string v8, "3"

    const-string v9, "/data/system/SimCard.dat"

    invoke-static {v7, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_168} :catch_140

    goto :goto_122
.end method
