.class Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;
.super Landroid/os/Handler;
.source "MarvellFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;->this$1:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "dvfsLockIntent":Landroid/content/Intent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_112

    .line 266
    const-string v1, "SSRMv2:MarvellFALImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "undefined message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_26
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;->this$1:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    iget-object v1, v1, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v1}, Lcom/android/server/ssrm/MarvellFALImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 270
    monitor-exit p0

    .line 271
    return-void

    .line 184
    :pswitch_35
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "MIN"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 270
    .end local v0    # "dvfsLockIntent":Landroid/content/Intent;
    :catchall_46
    move-exception v1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v1

    .line 189
    .restart local v0    # "dvfsLockIntent":Landroid/content/Intent;
    :pswitch_49
    :try_start_49
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "MAX"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 194
    :pswitch_5a
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "MIN"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 199
    :pswitch_67
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "MAX"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 204
    :pswitch_74
    const-string v1, "com.sec.android.intent.action.GPU_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "MIN"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 209
    :pswitch_85
    const-string v1, "com.sec.android.intent.action.GPU_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "MIN"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 214
    :pswitch_92
    const-string v1, "com.sec.android.intent.action.GPU_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "MAX"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_26

    .line 219
    :pswitch_a3
    const-string v1, "com.sec.android.intent.action.GPU_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "MAX"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 224
    :pswitch_b1
    const-string v1, "com.sec.android.intent.action.DDR_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "MIN"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 229
    :pswitch_c3
    const-string v1, "com.sec.android.intent.action.DDR_BOOSTER_MIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "MIN"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 234
    :pswitch_d1
    const-string v1, "com.sec.android.intent.action.DDR_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "MAX"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 239
    :pswitch_e3
    const-string v1, "com.sec.android.intent.action.DDR_BOOSTER_MAX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "MAX"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 244
    :pswitch_f1
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_CORE_NUM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "NUM"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_26

    .line 249
    :pswitch_103
    const-string v1, "com.sec.android.intent.action.CPU_BOOSTER_CORE_NUM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "NUM"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_10f
    .catchall {:try_start_49 .. :try_end_10f} :catchall_46

    goto/16 :goto_26

    .line 182
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_35
        :pswitch_49
        :pswitch_5a
        :pswitch_67
        :pswitch_74
        :pswitch_85
        :pswitch_92
        :pswitch_a3
        :pswitch_b1
        :pswitch_c3
        :pswitch_d1
        :pswitch_e3
        :pswitch_f1
        :pswitch_103
    .end packed-switch
.end method
