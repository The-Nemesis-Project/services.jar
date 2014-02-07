.class Lcom/android/server/wifi/WifiService$Multicaster;
.super Lcom/android/server/wifi/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$Multicaster;->this$0:Lcom/android/server/wifi/WifiService;

    .line 3141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3142
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 3145
    const-string v1, "WifiService"

    const-string v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$Multicaster;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$2500(Lcom/android/server/wifi/WifiService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 3147
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$Multicaster;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$2500(Lcom/android/server/wifi/WifiService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3148
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 3149
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$Multicaster;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mMode:I

    # invokes: Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiService;->access$2600(Lcom/android/server/wifi/WifiService;II)V

    .line 3151
    :cond_22
    monitor-exit v2

    .line 3152
    return-void

    .line 3151
    .end local v0    # "i":I
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 3159
    iget v0, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
