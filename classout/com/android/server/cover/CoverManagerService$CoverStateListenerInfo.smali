.class Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 206
    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 207
    iput p4, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    .line 208
    iput p5, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    .line 209
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 213
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$700(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 215
    :try_start_21
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$700(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 217
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 218
    return-void

    .line 216
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public callback(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_c

    .line 222
    const-string v2, "CoverManager"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_b
    :goto_b
    return-void

    .line 226
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    .line 227
    .local v0, "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    if-eqz v0, :cond_b

    .line 228
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_b

    .line 230
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    :catch_18
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "Failed coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
