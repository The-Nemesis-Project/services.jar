.class public Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
.super Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerEncryptionCallback"
.end annotation


# instance fields
.field private mContainer:Lcom/sec/knox/container/EnterpriseContainerObjectParam;

.field private mContainerId:I

.field private mEcryptfsKey:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPrimary:Z

.field private mRequestId:I

.field private mState:I

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p2, "state"    # I
    .param p3, "containerId"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ecryptfsKey"    # Ljava/lang/String;
    .param p6, "isPrimary"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3412
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;-><init>()V

    .line 3394
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mState:I

    .line 3395
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainerId:I

    .line 3396
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPassword:Ljava/lang/String;

    .line 3397
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    .line 3398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPrimary:Z

    .line 3399
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainer:Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 3400
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mRequestId:I

    .line 3413
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mState:I

    .line 3414
    iput p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainerId:I

    .line 3415
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPassword:Ljava/lang/String;

    .line 3416
    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    .line 3417
    iput-boolean p6, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPrimary:Z

    .line 3418
    return-void
.end method

.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V
    .registers 9
    .param p2, "state"    # I
    .param p3, "containerId"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "isPrimary"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3403
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;-><init>()V

    .line 3394
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mState:I

    .line 3395
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainerId:I

    .line 3396
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPassword:Ljava/lang/String;

    .line 3397
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    .line 3398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPrimary:Z

    .line 3399
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainer:Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 3400
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mRequestId:I

    .line 3404
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mState:I

    .line 3405
    iput p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainerId:I

    .line 3406
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPassword:Ljava/lang/String;

    .line 3407
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    .line 3408
    iput-boolean p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPrimary:Z

    .line 3409
    return-void
.end method


# virtual methods
.method public getRequestId()I
    .registers 2

    .prologue
    .line 3425
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mRequestId:I

    return v0
.end method

.method public setCreateContainerObject(Lcom/sec/knox/container/EnterpriseContainerObjectParam;)V
    .registers 2
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .prologue
    .line 3429
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainer:Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 3430
    return-void
.end method

.method public setRequestId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 3421
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mRequestId:I

    .line 3422
    return-void
.end method

.method public updateStatus(ZI)V
    .registers 8
    .param p1, "status"    # Z
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 3434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3435
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "state"

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3438
    const-string v2, "containerid"

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainerId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3439
    const-string v2, "requestId"

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mRequestId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3441
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3444
    const-string v2, "primary"

    iget-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPrimary:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3447
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3450
    const-string v2, "password"

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    if-eqz v2, :cond_3e

    .line 3454
    const-string v2, "ecryptfskey"

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mEcryptfsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    :cond_3e
    const-string v2, "containerObj"

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->mContainer:Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3461
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3463
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3464
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    return-void
.end method
