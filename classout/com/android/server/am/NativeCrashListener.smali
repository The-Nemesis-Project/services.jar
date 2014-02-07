.class Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 100
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "totalRead":I
    :goto_1
    if-lez p3, :cond_e

    .line 177
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 178
    .local v0, "n":I
    if-gtz v0, :cond_f

    .line 182
    const/4 v1, -0x1

    .line 187
    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_e
    return v1

    .line 184
    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_f
    sub-int/2addr p3, v0

    .line 185
    add-int/2addr v1, v0

    .line 186
    goto :goto_1
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 166
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 167
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 168
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 169
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 170
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v13, 0x8

    .line 193
    new-array v0, v10, [B

    .line 194
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 197
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x7d0

    :try_start_d
    invoke-static {v10, v11}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v9

    .line 198
    .local v9, "timeout":Llibcore/io/StructTimeval;
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 199
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 202
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 203
    .local v3, "headerBytes":I
    if-eq v3, v13, :cond_34

    .line 205
    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v3    # "headerBytes":I
    .end local v9    # "timeout":Llibcore/io/StructTimeval;
    :cond_33
    :goto_33
    return-void

    .line 209
    .restart local v3    # "headerBytes":I
    .restart local v9    # "timeout":Llibcore/io/StructTimeval;
    :cond_34
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .line 210
    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 216
    .local v8, "signal":I
    if-lez v5, :cond_ba

    .line 218
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_45} :catch_8a

    .line 219
    :try_start_45
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 220
    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v11
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_93

    .line 221
    if-eqz v6, :cond_a0

    .line 223
    :try_start_52
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v10, :cond_33

    .line 233
    :cond_56
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, p1, v0, v11, v12}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 234
    .local v1, "bytes":I
    if-lez v1, :cond_9a

    .line 240
    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_96

    .line 241
    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 256
    :goto_6c
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6f} :catch_8a

    .line 257
    const/4 v10, 0x1

    :try_start_70
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 258
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 259
    monitor-exit v11
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_9d

    .line 264
    :try_start_76
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 265
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_89} :catch_8a

    goto :goto_33

    .line 272
    .end local v1    # "bytes":I
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "reportString":Ljava/lang/String;
    .end local v8    # "signal":I
    .end local v9    # "timeout":Llibcore/io/StructTimeval;
    :catch_8a
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "NativeCrashListener"

    const-string v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Llibcore/io/StructTimeval;
    :catchall_93
    move-exception v10

    :try_start_94
    monitor-exit v11
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v10

    .line 245
    .restart local v1    # "bytes":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_96
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_8a

    .line 247
    :cond_9a
    if-gtz v1, :cond_56

    goto :goto_6c

    .line 259
    :catchall_9d
    move-exception v10

    :try_start_9e
    monitor-exit v11
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v10

    .line 267
    .end local v1    # "bytes":I
    :cond_a0
    const-string v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 270
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_ba
    const-string v10, "NativeCrashListener"

    const-string v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c1} :catch_8a

    goto/16 :goto_33
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    .line 104
    new-array v0, v8, [B

    .line 112
    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 119
    :cond_13
    :try_start_13
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v10, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 120
    .local v5, "serverFd":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/net/InetUnixAddress;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v6, v8}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "sockAddr":Ljava/net/InetUnixAddress;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    invoke-interface {v8, v5, v6, v9}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 122
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x1

    invoke-interface {v8, v5, v9}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 125
    :cond_31
    :goto_31
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_7b

    .line 126
    .local v3, "peer":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 129
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    :try_start_37
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v5, v3}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_50

    .line 133
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v8, v4, v9, v10}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v1

    .line 135
    .local v1, "credentials":Llibcore/io/StructUcred;
    iget v8, v1, Llibcore/io/StructUcred;->uid:I

    if-nez v8, :cond_50

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_5c
    .catchall {:try_start_37 .. :try_end_50} :catchall_70

    .line 146
    .end local v1    # "credentials":Llibcore/io/StructUcred;
    :cond_50
    if-eqz v4, :cond_31

    .line 148
    :try_start_52
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_31

    .line 149
    :catch_5a
    move-exception v8

    goto :goto_31

    .line 141
    :catch_5c
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v8, "NativeCrashListener"

    const-string v9, "Error handling connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_70

    .line 146
    if-eqz v4, :cond_31

    .line 148
    :try_start_66
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_31

    .line 149
    :catch_6e
    move-exception v8

    goto :goto_31

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_70
    move-exception v8

    if-eqz v4, :cond_7a

    .line 148
    :try_start_73
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v9, v4, v0, v10, v11}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_84

    .line 154
    :cond_7a
    :goto_7a
    :try_start_7a
    throw v8
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7b} :catch_7b

    .line 158
    .end local v3    # "peer":Ljava/net/InetSocketAddress;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_7b
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "NativeCrashListener"

    const-string v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-void

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "peer":Ljava/net/InetSocketAddress;
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_84
    move-exception v9

    goto :goto_7a
.end method
