.class Lcom/android/server/wifi/WifiService$BatchedScanRequest;
.super Lcom/android/server/wifi/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedScanRequest"
.end annotation


# instance fields
.field final pid:I

.field final settings:Landroid/net/wifi/BatchedScanSettings;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;

.field final uid:I

.field final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 11
    .param p2, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v3, 0x0

    .line 1810
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiService;

    .line 1811
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1812
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 1813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    .line 1814
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    .line 1815
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 1816
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    iget v3, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    # invokes: Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiService;->access$2700(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;II)V

    .line 1819
    return-void
.end method

.method public isSameApp(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1825
    iget v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatchedScanRequest{settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
