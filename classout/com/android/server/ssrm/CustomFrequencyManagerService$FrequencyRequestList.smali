.class Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .param p2, "x1"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V
    .registers 6
    .param p1, "req"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .prologue
    .line 1197
    iget-object v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1198
    .local v0, "index":I
    if-gez v0, :cond_1a

    .line 1199
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 1200
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.addReqest:: insert new request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_1a
    return-void
.end method

.method dumpFrequencyList()V
    .registers 7

    .prologue
    .line 1478
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v3

    monitor-enter v3

    .line 1479
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v0

    .line 1480
    .local v0, "N":I
    if-nez v0, :cond_f

    .line 1481
    monitor-exit v3

    .line 1520
    :goto_e
    return-void

    .line 1483
    :cond_f
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "############################ Start : LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_22a

    .line 1486
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_30

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_a2

    .line 1488
    :cond_30
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPU     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_a2
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_ba

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xb

    if-ne v2, v4, :cond_12c

    .line 1496
    :cond_ba
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUS     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_12c
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a9

    .line 1503
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU CORE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1a9
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_226

    .line 1510
    const-string v4, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCD     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_226
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 1517
    :cond_22a
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    const-string v4, "############################ End :  LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    monitor-exit v3

    goto/16 :goto_e

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_234
    move-exception v2

    monitor-exit v3
    :try_end_236
    .catchall {:try_start_7 .. :try_end_236} :catchall_234

    throw v2
.end method

.method getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v0

    .line 1235
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2c

    .line 1237
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1238
    .local v3, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v3, :cond_29

    .line 1239
    iget-object v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_26

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_29

    .line 1241
    :cond_26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1245
    .end local v3    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_2c
    return-object v2
.end method

.method getIndex(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "reqType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v1

    .line 1220
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_49

    .line 1221
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_46

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    if-ne v2, p2, :cond_46

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1223
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 1224
    const-string v2, "SSRMv2:CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrequencyrequestList.getIndex:: i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .end local v0    # "i":I
    :cond_45
    :goto_45
    return v0

    .line 1220
    .restart local v0    # "i":I
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1229
    :cond_49
    const/4 v0, -0x1

    goto :goto_45
.end method

.method getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1445
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1446
    .local v2, "indexMaxCPUCoreRequest":I
    const/4 v4, -0x1

    .line 1450
    .local v4, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 1451
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_21

    .line 1452
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1454
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 1455
    move v4, v0

    .line 1456
    move v2, v1

    .line 1450
    .end local v0    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1458
    .restart local v0    # "frequency":I
    :cond_24
    if-le v0, v4, :cond_21

    .line 1459
    move v4, v0

    .line 1460
    move v2, v1

    goto :goto_21

    .line 1466
    .end local v0    # "frequency":I
    :cond_29
    if-ltz v2, :cond_4a

    .line 1467
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1474
    .local v3, "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_49
    return-object v3

    .line 1471
    .end local v3    # "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4a
    const/4 v3, 0x0

    .restart local v3    # "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_49
.end method

.method getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1381
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1382
    .local v2, "indexMinMaxFpsRequest":I
    const/4 v3, -0x1

    .line 1385
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 1386
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    .line 1387
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1388
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    .line 1389
    move v3, v0

    .line 1390
    move v2, v1

    .line 1385
    .end local v0    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1392
    .restart local v0    # "frequency":I
    :cond_24
    if-ge v0, v3, :cond_21

    .line 1393
    move v3, v0

    .line 1394
    move v2, v1

    goto :goto_21

    .line 1399
    .end local v0    # "frequency":I
    :cond_29
    if-ltz v2, :cond_4a

    .line 1400
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxFpsRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1406
    .local v4, "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_49
    return-object v4

    .line 1404
    .end local v4    # "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4a
    const/4 v4, 0x0

    .restart local v4    # "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_49
.end method

.method getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1250
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1251
    .local v2, "indexMaxGPURequest":I
    const/4 v3, -0x1

    .line 1255
    .local v3, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 1256
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 1257
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1259
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    .line 1260
    move v3, v0

    .line 1261
    move v2, v1

    .line 1255
    .end local v0    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1263
    .restart local v0    # "frequency":I
    :cond_24
    if-le v0, v3, :cond_21

    .line 1264
    move v3, v0

    .line 1265
    move v2, v1

    goto :goto_21

    .line 1271
    .end local v0    # "frequency":I
    :cond_29
    if-ltz v2, :cond_4e

    .line 1272
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_47

    .line 1273
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_47
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1281
    .local v4, "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4d
    return-object v4

    .line 1278
    .end local v4    # "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4e
    const/4 v4, 0x0

    .restart local v4    # "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4d
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1316
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1317
    .local v2, "indexMaxSysBusRequest":I
    const/4 v3, -0x1

    .line 1321
    .local v3, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_2a

    .line 1322
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_22

    .line 1323
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1325
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    .line 1326
    move v3, v0

    .line 1327
    move v2, v1

    .line 1321
    .end local v0    # "frequency":I
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1329
    .restart local v0    # "frequency":I
    :cond_25
    if-le v0, v3, :cond_22

    .line 1330
    move v3, v0

    .line 1331
    move v2, v1

    goto :goto_22

    .line 1337
    .end local v0    # "frequency":I
    :cond_2a
    if-ltz v2, :cond_4f

    .line 1338
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_48

    .line 1339
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_48
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1346
    .local v4, "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4e
    return-object v4

    .line 1344
    .end local v4    # "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4f
    const/4 v4, 0x0

    .restart local v4    # "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4e
.end method

.method getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1411
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1412
    .local v2, "indexMinCPUCoreRequest":I
    const/4 v4, -0x1

    .line 1416
    .local v4, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 1417
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_21

    .line 1418
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1420
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 1421
    move v4, v0

    .line 1422
    move v2, v1

    .line 1416
    .end local v0    # "frequency":I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1424
    .restart local v0    # "frequency":I
    :cond_24
    if-ge v0, v4, :cond_21

    .line 1425
    move v4, v0

    .line 1426
    move v2, v1

    goto :goto_21

    .line 1432
    .end local v0    # "frequency":I
    :cond_29
    if-ltz v2, :cond_4a

    .line 1433
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1440
    .local v3, "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_49
    return-object v3

    .line 1437
    .end local v3    # "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4a
    const/4 v3, 0x0

    .restart local v3    # "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_49
.end method

.method getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1286
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1287
    .local v2, "indexMinGPURequest":I
    const/4 v3, -0x1

    .line 1290
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_2a

    .line 1291
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_22

    .line 1292
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1293
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    .line 1294
    move v3, v0

    .line 1295
    move v2, v1

    .line 1290
    .end local v0    # "frequency":I
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1297
    .restart local v0    # "frequency":I
    :cond_25
    if-ge v0, v3, :cond_22

    .line 1298
    move v3, v0

    .line 1299
    move v2, v1

    goto :goto_22

    .line 1304
    .end local v0    # "frequency":I
    :cond_2a
    if-ltz v2, :cond_4b

    .line 1305
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1311
    .local v4, "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4a
    return-object v4

    .line 1309
    .end local v4    # "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4b
    const/4 v4, 0x0

    .restart local v4    # "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4a
.end method

.method getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1351
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1352
    .local v2, "indexMinSysBusRequest":I
    const/4 v3, -0x1

    .line 1355
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v5, :cond_2a

    .line 1356
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_22

    .line 1357
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1358
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    .line 1359
    move v3, v0

    .line 1360
    move v2, v1

    .line 1355
    .end local v0    # "frequency":I
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1362
    .restart local v0    # "frequency":I
    :cond_25
    if-ge v0, v3, :cond_22

    .line 1363
    move v3, v0

    .line 1364
    move v2, v1

    goto :goto_22

    .line 1369
    .end local v0    # "frequency":I
    :cond_2a
    if-ltz v2, :cond_4b

    .line 1370
    const-string v6, "SSRMv2:CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1376
    .local v4, "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4a
    return-object v4

    .line 1374
    .end local v4    # "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4b
    const/4 v4, 0x0

    .restart local v4    # "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4a
.end method

.method removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1207
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1208
    .local v0, "index":I
    if-ltz v0, :cond_29

    .line 1209
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 1210
    const-string v1, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrequencyrequestList.removeRequest:: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1214
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method
