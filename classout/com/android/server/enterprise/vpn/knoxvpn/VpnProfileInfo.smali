.class Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
.super Ljava/lang/Object;
.source "VpnProfileInfo.java"


# instance fields
.field private activateState:I

.field private admin_id:I

.field private chainingEnabled:I

.field private containerVpnState:I

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mIsRetry:Z

.field private mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileName:Ljava/lang/String;

.field private mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mVendorPkgName:Ljava/lang/String;

.field private markProfileForDeletion:Z

.field private personaId:I

.field private protocolType:Ljava/lang/String;

.field private routeType:I

.field private vpnType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mIsRetry:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized addPackageEntry(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cid"    # I

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 250
    .local v0, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 251
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getActivateState()I
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->activateState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdminId()I
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->admin_id:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChainingEnabled()I
    .registers 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->chainingEnabled:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContainerVpnState()I
    .registers 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->containerVpnState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDnsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mDnsList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsRetry()Z
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mIsRetry:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMarkProfileForDeletion()Z
    .registers 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->markProfileForDeletion:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    goto :goto_9
.end method

.method public getPackageCount()I
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;

    .line 232
    .local v1, "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 237
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public getPackageList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPackageMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public declared-synchronized getPersonaId()I
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->personaId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mProfileName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocolType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->protocolType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRouteType()I
    .registers 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->routeType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getVendorPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVpnServiceType()I
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->vpnType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePackageEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result v0

    if-nez v0, :cond_b

    .line 258
    :goto_9
    monitor-exit p0

    return-void

    .line 257
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_9

    .line 254
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActivateState(I)V
    .registers 3
    .param p1, "activateState"    # I

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->activateState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdminId(I)V
    .registers 3
    .param p1, "adminid"    # I

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->admin_id:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChainingEnabled(I)V
    .registers 3
    .param p1, "chainingEnabled"    # I

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->chainingEnabled:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContainerVpnState(I)V
    .registers 3
    .param p1, "containerVpnState"    # I

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->containerVpnState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDnsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mDnsList:Ljava/util/List;

    .line 191
    return-void
.end method

.method public declared-synchronized setInterfaceName(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsRetry(Z)V
    .registers 3
    .param p1, "set"    # Z

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mIsRetry:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMarkProfileForDeletion(Z)V
    .registers 3
    .param p1, "markProfileForDeletion"    # Z

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->markProfileForDeletion:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPersonaId(I)V
    .registers 3
    .param p1, "personaId"    # I

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->personaId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProfileName(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mProfileName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProtocolType(Ljava/lang/String;)V
    .registers 3
    .param p1, "protocolType"    # Ljava/lang/String;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->protocolType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRouteType(I)V
    .registers 3
    .param p1, "routeType"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->routeType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mSearchDomainList:Ljava/util/List;

    .line 199
    return-void
.end method

.method public declared-synchronized setVendorPkgName(Ljava/lang/String;)V
    .registers 3
    .param p1, "vendorPkgName"    # Ljava/lang/String;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVpnServiceType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 214
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->vpnType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
