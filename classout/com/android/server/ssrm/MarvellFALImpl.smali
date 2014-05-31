.class public Lcom/android/server/ssrm/MarvellFALImpl;
.super Ljava/lang/Object;
.source "MarvellFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;
    }
.end annotation


# instance fields
.field final MSG_ACQUIRE_DVFS_LOCK_INTENT_MAX:I

.field final MSG_ACQUIRE_DVFS_LOCK_INTENT_MIN:I

.field final MSG_RELEASE_DVFS_LOCK_INTENT_MAX:I

.field final MSG_RELEASE_DVFS_LOCK_INTENT_MIN:I

.field final MSG_REL_CPUCORE_NUM_INTENT_MIN:I

.field final MSG_REL_DDR_BOOSTER_INTENT_MAX:I

.field final MSG_REL_DDR_BOOSTER_INTENT_MIN:I

.field final MSG_REL_GPU_BOOSTER_INTENT_MAX:I

.field final MSG_REL_GPU_BOOSTER_INTENT_MIN:I

.field final MSG_SET_CPUCORE_NUM_INTENT_MIN:I

.field final MSG_SET_DDR_BOOSTER_INTENT_MAX:I

.field final MSG_SET_DDR_BOOSTER_INTENT_MIN:I

.field final MSG_SET_GPU_BOOSTER_INTENT_MAX:I

.field final MSG_SET_GPU_BOOSTER_INTENT_MIN:I

.field final TAG:Ljava/lang/String;

.field mDVFSLockIntentSenderHandler:Landroid/os/Handler;

.field mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

.field final mDvfsThreadSyncObject:Ljava/lang/Object;

.field volatile mInitComplete:Z


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "SSRMv2:MarvellFALImpl"

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->TAG:Ljava/lang/String;

    .line 34
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_GPU_BOOSTER_INTENT_MIN:I

    .line 36
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_GPU_BOOSTER_INTENT_MIN:I

    .line 38
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_GPU_BOOSTER_INTENT_MAX:I

    .line 40
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_GPU_BOOSTER_INTENT_MAX:I

    .line 42
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_DDR_BOOSTER_INTENT_MIN:I

    .line 44
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_DDR_BOOSTER_INTENT_MIN:I

    .line 46
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_DDR_BOOSTER_INTENT_MAX:I

    .line 48
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_DDR_BOOSTER_INTENT_MAX:I

    .line 50
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_CPUCORE_NUM_INTENT_MIN:I

    .line 52
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_CPUCORE_NUM_INTENT_MIN:I

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z

    .line 66
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_ACQUIRE_DVFS_LOCK_INTENT_MIN:I

    .line 68
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_ACQUIRE_DVFS_LOCK_INTENT_MAX:I

    .line 70
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_RELEASE_DVFS_LOCK_INTENT_MIN:I

    .line 72
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_RELEASE_DVFS_LOCK_INTENT_MAX:I

    .line 75
    new-instance v1, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    const-string v2, "DVFSIntentSenderThread"

    const/4 v3, -0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;-><init>(Lcom/android/server/ssrm/MarvellFALImpl;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    .line 77
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    invoke-virtual {v1}, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->start()V

    .line 79
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :goto_54
    :try_start_54
    iget-boolean v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_63

    if-nez v1, :cond_66

    .line 82
    :try_start_58
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_5e
    .catchall {:try_start_58 .. :try_end_5d} :catchall_63

    goto :goto_54

    .line 83
    :catch_5e
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_54

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    throw v1

    :cond_66
    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_63

    .line 88
    return-void
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 281
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initSupportedFrequency(I)[I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public modifyToValues(II)Z
    .registers 8
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 137
    packed-switch p1, :pswitch_data_4c

    .line 167
    :pswitch_5
    const/4 v1, 0x0

    :goto_6
    :pswitch_6
    return v1

    .line 139
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 144
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_14
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 146
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 149
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_21
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 151
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 154
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2f
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 156
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 159
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3d
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 161
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 137
    nop

    :pswitch_data_4c
    .packed-switch 0x3
        :pswitch_7
        :pswitch_14
        :pswitch_21
        :pswitch_2f
        :pswitch_5
        :pswitch_3d
        :pswitch_6
    .end packed-switch
.end method

.method public nativeAcquireDVFSLock(II)I
    .registers 7
    .param p1, "lockType"    # I
    .param p2, "freq"    # I

    .prologue
    const/4 v3, -0x1

    .line 286
    packed-switch p1, :pswitch_data_20

    .line 298
    :goto_4
    const/4 v1, 0x0

    return v1

    .line 288
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 293
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_13
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 295
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 286
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method

.method public nativeReleaseDVFSLock(I)I
    .registers 5
    .param p1, "lockType"    # I

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_20

    .line 313
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 305
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 309
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_12
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 310
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 303
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_5
        :pswitch_12
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 98
    packed-switch p1, :pswitch_data_4c

    .line 123
    :pswitch_4
    const/4 v1, 0x0

    :goto_5
    :pswitch_5
    return v1

    .line 100
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 104
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 105
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 108
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_21
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 109
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 112
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2f
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 116
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3d
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 117
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 98
    nop

    :pswitch_data_4c
    .packed-switch 0x3
        :pswitch_6
        :pswitch_13
        :pswitch_21
        :pswitch_2f
        :pswitch_4
        :pswitch_3d
        :pswitch_5
    .end packed-switch
.end method
