.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2143
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_96

    .line 2196
    :goto_7
    return-void

    .line 2145
    :pswitch_8
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .line 2146
    .local v9, "num":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2147
    .local v13, "start":J
    const/4 v1, 0x1

    new-array v15, v1, [J

    .line 2152
    .local v15, "tmp":[J
    :cond_11
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2153
    :try_start_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_30

    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2157
    monitor-exit v4

    goto :goto_7

    .line 2171
    :catchall_2d
    move-exception v1

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    throw v1

    .line 2159
    :cond_30
    :try_start_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 2160
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v8, v8, 0x1

    .line 2161
    if-nez v11, :cond_42

    .line 2162
    monitor-exit v4

    goto :goto_11

    .line 2164
    :cond_42
    iget v12, v11, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2165
    .local v12, "procState":I
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_92

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v1, :cond_92

    .line 2166
    iget v10, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2171
    .local v10, "pid":I
    :goto_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_2d

    .line 2172
    if-eqz v11, :cond_11

    .line 2173
    invoke-static {v10, v15}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v2

    .line 2174
    .local v2, "pss":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2175
    :try_start_5c
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_8d

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v1, v12, :cond_8d

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v10, :cond_8d

    .line 2177
    add-int/lit8 v9, v9, 0x1

    .line 2178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2179
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    const/4 v6, 0x1

    iget-object v7, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(JJZLandroid/util/ArrayMap;)V

    .line 2183
    iget-wide v4, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_85

    .line 2184
    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    .line 2186
    :cond_85
    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    .line 2187
    const/16 v1, 0x9

    if-lt v12, v1, :cond_8d

    .line 2188
    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    .line 2191
    :cond_8d
    monitor-exit v16

    goto :goto_11

    :catchall_8f
    move-exception v1

    monitor-exit v16
    :try_end_91
    .catchall {:try_start_5c .. :try_end_91} :catchall_8f

    throw v1

    .line 2168
    .end local v2    # "pss":J
    .end local v10    # "pid":I
    :cond_92
    const/4 v11, 0x0

    .line 2169
    const/4 v10, 0x0

    .restart local v10    # "pid":I
    goto :goto_4e

    .line 2143
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
