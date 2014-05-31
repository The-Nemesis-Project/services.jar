.class public Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
.super Ljava/lang/Object;
.source "EnterpriseContainerCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerCallbackList"


# instance fields
.field private final DBG:Z

.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field mEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<TE;>.Callback;>;>;"
        }
    .end annotation
.end field

.field private mKilled:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6
    .param p1, "eventKeys"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    const/4 v2, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->DBG:Z

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    .line 39
    iput-boolean v2, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    array-length v1, p1

    if-ge v0, v1, :cond_2f

    .line 74
    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v2, p1, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 77
    :cond_2f
    return-void
.end method


# virtual methods
.method public beginBroadcast(Ljava/lang/String;)I
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    .line 162
    :try_start_3
    iget v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    if-lez v5, :cond_12

    .line 163
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :catchall_f
    move-exception v5

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v5

    .line 166
    :cond_12
    :try_start_12
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    .line 167
    .local v0, "N":I
    if-gtz v0, :cond_25

    .line 168
    const/4 v3, 0x0

    monitor-exit v6

    .line 179
    :goto_24
    return v3

    .line 170
    :cond_25
    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 171
    .local v1, "active":[Ljava/lang/Object;
    if-eqz v1, :cond_2c

    array-length v5, v1

    if-ge v5, v0, :cond_30

    .line 172
    :cond_2c
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 174
    :cond_30
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 175
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 176
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_3e

    .line 179
    :cond_4e
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_f

    goto :goto_24
.end method

.method public finishBroadcast()V
    .registers 6

    .prologue
    .line 188
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    iget v3, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    if-gez v3, :cond_c

    .line 189
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_c
    iget-object v1, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 193
    .local v1, "active":[Ljava/lang/Object;
    if-eqz v1, :cond_1b

    .line 194
    iget v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    .line 195
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_1b

    .line 196
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 200
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_1b
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mBroadcastCount:I

    .line 201
    return-void
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    iget-object v0, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    iget-object v0, v0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public kill()V
    .registers 10

    .prologue
    .line 143
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v7

    .line 144
    :try_start_3
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    .line 145
    .local v1, "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    iget-object v6, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 146
    iget-object v6, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 147
    iget-object v0, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2b
    if-ge v3, v5, :cond_d

    aget-object v4, v0, v3

    .line 148
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 150
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_3d
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 151
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 152
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    .line 153
    monitor-exit v7

    .line 154
    return-void

    .line 153
    :catchall_4c
    move-exception v6

    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v6
.end method

.method public onCallbackDied(Landroid/os/IInterface;[Ljava/lang/String;)V
    .registers 3
    .param p2, "key"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    return-void
.end method

.method public register([Ljava/lang/String;Landroid/os/IInterface;)Z
    .registers 15
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    .local p2, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    iget-object v9, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v9

    .line 81
    :try_start_5
    iget-boolean v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mKilled:Z

    if-nez v6, :cond_e

    if-eqz p1, :cond_e

    array-length v6, p1

    if-ge v6, v8, :cond_11

    .line 82
    :cond_e
    monitor-exit v9

    move v6, v7

    .line 116
    :goto_10
    return v6

    .line 87
    :cond_11
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_90

    move-result-object v0

    .line 89
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 90
    .local v5, "registeredEventCnt":I
    :try_start_16
    new-instance v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;-><init>(Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;Landroid/os/IInterface;[Ljava/lang/String;)V

    .line 91
    .local v1, "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v6, p1

    if-ge v3, v6, :cond_78

    .line 94
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_46

    .line 95
    const-string v6, "EnterpriseContainerCallbackList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item registration was ignored by invalid key - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 98
    :cond_46
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 99
    .local v4, "idx":I
    if-lez v4, :cond_66

    .line 100
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 102
    :cond_66
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    aget-object v10, p1, v3

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_73} :catch_74
    .catchall {:try_start_16 .. :try_end_73} :catchall_90

    goto :goto_63

    .line 115
    .end local v1    # "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    .end local v3    # "i":I
    .end local v4    # "idx":I
    :catch_74
    move-exception v2

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_75
    monitor-exit v9
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_90

    move v6, v7

    goto :goto_10

    .line 106
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    .restart local v3    # "i":I
    :cond_78
    if-gtz v5, :cond_84

    .line 107
    :try_start_7a
    const-string v6, "EnterpriseContainerCallbackList"

    const-string v8, "Event is not registered! - Client requested registeration with wrong event keys!"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_81} :catch_74
    .catchall {:try_start_7a .. :try_end_81} :catchall_90

    .line 109
    :try_start_81
    monitor-exit v9
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_90

    move v6, v7

    goto :goto_10

    .line 112
    :cond_84
    const/4 v6, 0x0

    :try_start_85
    invoke-interface {v0, v1, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 113
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8d} :catch_74
    .catchall {:try_start_85 .. :try_end_8d} :catchall_90

    .line 114
    :try_start_8d
    monitor-exit v9

    move v6, v8

    goto :goto_10

    .line 118
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    .end local v3    # "i":I
    .end local v5    # "registeredEventCnt":I
    :catchall_90
    move-exception v6

    monitor-exit v9
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_90

    throw v6
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TE;"
    const/4 v5, 0x0

    .line 122
    iget-object v6, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    .line 124
    :try_start_4
    iget-object v7, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;

    .line 127
    .local v1, "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    if-eqz v1, :cond_39

    .line 128
    iget-object v5, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    if-eqz v5, :cond_2c

    .line 129
    iget-object v0, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mKey:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1a
    if-ge v2, v4, :cond_2c

    aget-object v3, v0, v2

    .line 130
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->mEventMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 135
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_2c
    iget-object v5, v1, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 136
    const/4 v5, 0x1

    monitor-exit v6

    .line 138
    :goto_38
    return v5

    :cond_39
    monitor-exit v6

    goto :goto_38

    .line 139
    .end local v1    # "cb":Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList$Callback;, "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList<TE;>.Callback;"
    :catchall_3b
    move-exception v5

    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v5
.end method
