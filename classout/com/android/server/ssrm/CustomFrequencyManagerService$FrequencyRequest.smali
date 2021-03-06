.class Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequest"
.end annotation


# instance fields
.field final binder:Landroid/os/IBinder;

.field final frequency:I

.field final pid:I

.field final pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 10
    .param p2, "ty"    # I
    .param p3, "fq"    # I
    .param p4, "b"    # Landroid/os/IBinder;
    .param p5, "pkg"    # Ljava/lang/String;
    .param p6, "u"    # I
    .param p7, "p"    # I

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    iput p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    .line 1144
    iput p3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1145
    iput-object p4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1146
    iput-object p5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    .line 1147
    iput p6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    .line 1148
    iput p7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    .line 1151
    const/4 v1, 0x0

    :try_start_12
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 1155
    :goto_15
    return-void

    .line 1152
    :catch_16
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    goto :goto_15
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v1

    monitor-enter v1

    .line 1160
    :try_start_7
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 1161
    const-string v0, "SSRMv2:CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomFrequencyManager:: binderDied. package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_25
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3d

    .line 1166
    :cond_30
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1177
    :cond_3b
    :goto_3b
    monitor-exit v1

    .line 1178
    return-void

    .line 1167
    :cond_3d
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_49

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_58

    .line 1169
    :cond_49
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_3b

    .line 1177
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v0

    .line 1170
    :cond_58
    :try_start_58
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_62

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6e

    .line 1172
    :cond_62
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_3b

    .line 1173
    :cond_6e
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_78

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3b

    .line 1175
    :cond_78
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_55

    goto :goto_3b
.end method
