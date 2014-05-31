.class final Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VpnSvrCommand"
.end annotation


# instance fields
.field private bout:Ljava/io/ByteArrayOutputStream;

.field private dout:Ljava/io/DataOutputStream;

.field private final in:Ljava/io/DataInputStream;

.field private final out:Ljava/io/DataOutputStream;

.field private final sock:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/VpnNamespace;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)V
    .registers 7
    .param p2, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->this$0:Lcom/android/server/connectivity/VpnNamespace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->initConnection(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->sock:Landroid/net/LocalSocket;

    .line 206
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->in:Ljava/io/DataInputStream;

    .line 207
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    .line 208
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    .line 209
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/connectivity/VpnNamespace;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/connectivity/VpnNamespace$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_1
    # invokes: Lcom/android/server/connectivity/VpnNamespace$Cmd;->getArgType()Ljava/lang/Class;
    invoke-static {p1}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->access$200(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_8} :catch_73
    .catchall {:try_start_1 .. :try_end_8} :catchall_70

    .line 292
    :try_start_8
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 293
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    # invokes: Lcom/android/server/connectivity/VpnNamespace$Cmd;->writeTo(Ljava/io/DataOutputStream;)V
    invoke-static {p1, v3}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->access$300(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/io/DataOutputStream;)V

    .line 297
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 299
    if-eqz v2, :cond_2b

    .line 300
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 301
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 305
    :cond_2b
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 308
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 309
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 311
    if-gtz v2, :cond_a3

    .line 312
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute(): negative reply size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid reply size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_70

    .line 280
    .end local v2    # "size":I
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 281
    :catch_73
    move-exception v1

    .line 284
    .local v1, "cce":Ljava/lang/ClassCastException;
    :try_start_74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "argument of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/VpnNamespace$Cmd;->getArgType()Ljava/lang/Class;
    invoke-static {p1}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->access$200(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " required for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    .restart local v2    # "size":I
    :cond_a3
    new-array v0, v2, [B

    .line 317
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->in:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 319
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->getReply(Ljava/io/DataInputStream;)Ljava/lang/Object;
    :try_end_b9
    .catchall {:try_start_74 .. :try_end_b9} :catchall_70

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method private initConnection(Ljava/lang/String;)Landroid/net/LocalSocket;
    .registers 9
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/16 v0, 0x1c

    .line 221
    .local v0, "MAX_CONNECTION_ATTEMPTS":I
    const/16 v1, 0x1c

    .line 222
    .local v1, "attemptsLeft":I
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 224
    .local v3, "socket":Landroid/net/LocalSocket;
    :goto_9
    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_26

    if-lez v1, :cond_26

    .line 226
    :try_start_11
    new-instance v4, Landroid/net/LocalSocketAddress;

    invoke-direct {v4, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_9

    .line 227
    :catch_1a
    move-exception v2

    .line 228
    .local v2, "ioe":Ljava/io/IOException;
    add-int/lit8 v1, v1, -0x1

    .line 230
    const-wide/16 v4, 0xa

    const/4 v6, 0x0

    :try_start_20
    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_9

    .line 231
    :catch_24
    move-exception v4

    goto :goto_9

    .line 236
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_26
    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_56

    .line 237
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FATAL: bailed after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rsub-int/lit8 v6, v1, 0x1c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v4, Ljava/io/IOException;

    const-string v5, "mvpd doesn\'t respond"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_56
    return-object v3
.end method


# virtual methods
.method declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 331
    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_27
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 337
    :goto_22
    monitor-exit p0

    return-void

    .line 328
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :catch_27
    move-exception v0

    goto :goto_22
.end method

.method declared-synchronized execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Object;
    .registers 3
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;I)Ljava/lang/Object;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .param p2, "arg"    # Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
            "Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->writeObject(Ljava/io/DataOutputStream;)V

    .line 251
    const-class v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 250
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->dout:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 264
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 262
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
