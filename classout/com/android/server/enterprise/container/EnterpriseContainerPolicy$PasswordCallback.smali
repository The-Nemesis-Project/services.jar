.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
.super Lcom/sec/enterprise/knox/EnterpriseContainerCallback;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordCallback"
.end annotation


# instance fields
.field mContainerId:I

.field mFinished:Z

.field mResult:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)V
    .registers 4
    .param p2, "containerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 286
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;-><init>()V

    .line 287
    iput-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 288
    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 289
    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    .line 290
    return-void
.end method


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "errorcode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 294
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PasswordCallback:updateStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, -0x1

    .line 296
    .local v0, "containerId":I
    if-eqz p2, :cond_38

    iget v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    const-string v2, "containerid"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_5e

    .line 299
    :cond_38
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting callback for container:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receieved for container:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_5e
    packed-switch p1, :pswitch_data_138

    .line 345
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password callback updateStatus Unknown errorcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-enter p0

    .line 347
    const/4 v1, 0x1

    :try_start_7d
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 348
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_134

    .line 353
    :goto_86
    return-void

    .line 305
    :pswitch_87
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password change sucessfully for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-enter p0

    .line 307
    const/4 v1, 0x1

    :try_start_a5
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 308
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit p0

    goto :goto_86

    :catchall_af
    move-exception v1

    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_af

    throw v1

    .line 315
    :pswitch_b2
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password change failed for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-enter p0

    .line 317
    const/4 v1, 0x1

    :try_start_d0
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 318
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit p0

    goto :goto_86

    :catchall_da
    move-exception v1

    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_da

    throw v1

    .line 325
    :pswitch_dd
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password verified sucessfully for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-enter p0

    .line 327
    const/4 v1, 0x1

    :try_start_fb
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 328
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 330
    monitor-exit p0

    goto :goto_86

    :catchall_105
    move-exception v1

    monitor-exit p0
    :try_end_107
    .catchall {:try_start_fb .. :try_end_107} :catchall_105

    throw v1

    .line 335
    :pswitch_108
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password verification failed for Container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-enter p0

    .line 337
    const/4 v1, 0x1

    :try_start_126
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z

    .line 338
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 340
    monitor-exit p0

    goto/16 :goto_86

    :catchall_131
    move-exception v1

    monitor-exit p0
    :try_end_133
    .catchall {:try_start_126 .. :try_end_133} :catchall_131

    throw v1

    .line 350
    :catchall_134
    move-exception v1

    :try_start_135
    monitor-exit p0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw v1

    .line 303
    nop

    :pswitch_data_138
    .packed-switch 0x3f4
        :pswitch_87
        :pswitch_b2
        :pswitch_dd
        :pswitch_108
    .end packed-switch
.end method
