.class Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestIdGenerator"
.end annotation


# instance fields
.field fraction:I

.field random:Ljava/util/Random;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 3

    .prologue
    .line 3540
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3541
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->fraction:I

    .line 3542
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->random:Ljava/util/Random;

    .line 3543
    return-void
.end method


# virtual methods
.method public getNextContainerRequestId()I
    .registers 4

    .prologue
    .line 3546
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->fraction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->fraction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_d

    .line 3547
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->fraction:I

    .line 3549
    :cond_d
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->fraction:I

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->random:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
