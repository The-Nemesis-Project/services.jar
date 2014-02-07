.class Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpDbInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransferPipeThread"
.end annotation


# instance fields
.field final args:[Ljava/lang/String;

.field final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final thread:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p2, "_thread"    # Landroid/app/IApplicationThread;
    .param p3, "_fd"    # Ljava/io/FileDescriptor;
    .param p4, "_args"    # [Ljava/lang/String;

    .prologue
    .line 12263
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 12264
    const-string v0, "TransferPipeWrite"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12265
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    .line 12266
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->fd:Ljava/io/FileDescriptor;

    .line 12267
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->args:[Ljava/lang/String;

    .line 12268
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 12271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;->args:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 12274
    :goto_9
    return-void

    .line 12272
    :catch_a
    move-exception v0

    goto :goto_9
.end method
