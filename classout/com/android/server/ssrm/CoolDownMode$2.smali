.class Lcom/android/server/ssrm/CoolDownMode$2;
.super Ljava/lang/Object;
.source "CoolDownMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CoolDownMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CoolDownMode;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v3

    .line 158
    .local v3, "monitor":Lcom/android/server/ssrm/Monitor;
    if-eqz v3, :cond_a8

    .line 159
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-boolean v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_a8

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v1, "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7f

    .line 163
    const-string v4, "com.sec.knox.containeragent"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v4, "com.android.contacts"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v4, "com.android.phone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v4, "com.google.android.apps.maps"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "com.vznavigator"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v5, "check_siop_level_list"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v5, "check_siop_level_level"

    iget-object v6, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v6, v6, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v4, v4, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    const-string v5, "overheat_id"

    const v6, 0x1040a37

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v4, v3, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v5, v5, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckSIOPLevel:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 176
    :cond_7f
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v5, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v5, v5, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    # invokes: Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I
    invoke-static {v4, v5}, Lcom/android/server/ssrm/CoolDownMode;->access$000(Lcom/android/server/ssrm/CoolDownMode;I)I

    move-result v2

    .line 177
    .local v2, "mResult":I
    if-lez v2, :cond_a3

    .line 178
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ssrm/CoolDownMode;->showCoolDownAlert(Ljava/lang/String;)V

    .line 180
    :cond_a3
    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a8} :catch_a9

    .line 186
    .end local v1    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "mResult":I
    .end local v3    # "monitor":Lcom/android/server/ssrm/Monitor;
    :cond_a8
    :goto_a8
    return-void

    .line 183
    :catch_a9
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/CoolDownMode;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mKillActiveApplicationsRunnable:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8
.end method
