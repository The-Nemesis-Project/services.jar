.class Lcom/android/server/ssrm/BatteryCoolDownMode$3;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/BatteryCoolDownMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    .line 141
    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 142
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    if-eqz v2, :cond_4c

    .line 143
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v3, v3, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-ne v3, v4, :cond_4c

    .line 144
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v3, v3, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v4, "check_siop_level_list"

    iget-object v5, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v5, v5, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v3, v3, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v4, "battery_overheat_level"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v3, v3, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    const v5, 0x1040a3b

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v4, v4, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 151
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v4, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v4, v4, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    # invokes: Lcom/android/server/ssrm/BatteryCoolDownMode;->killActiveApplications(I)I
    invoke-static {v3, v4}, Lcom/android/server/ssrm/BatteryCoolDownMode;->access$000(Lcom/android/server/ssrm/BatteryCoolDownMode;I)I

    move-result v1

    .line 152
    .local v1, "mResult":I
    if-lez v1, :cond_4c

    .line 153
    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$3;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-virtual {v3, v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;->showCoolDownAlert(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    .line 160
    .end local v1    # "mResult":I
    .end local v2    # "monitor":Lcom/android/server/ssrm/Monitor;
    :cond_4c
    :goto_4c
    return-void

    .line 157
    :catch_4d
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/BatteryCoolDownMode;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKillActiveApplicationsRunnable:: e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method
