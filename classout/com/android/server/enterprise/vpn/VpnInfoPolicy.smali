.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 149
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 106
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 108
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 112
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 114
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 116
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 151
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 152
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 154
    .local v5, "vpnProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c3

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 156
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 159
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 160
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    :cond_89
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 168
    :cond_9f
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 169
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 170
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 172
    :cond_b2
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 173
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_51

    .line 179
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_c3
    return-void
.end method

.method private canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1708
    const/4 v2, 0x0

    .line 1710
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "vpnAlwaysOnProfile"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "currentProfile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "vpnAlwaysOnOwner"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1715
    .local v0, "currentOwner":Ljava/lang/String;
    if-eqz v1, :cond_2d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1718
    const/4 v3, 0x0

    .line 1721
    :goto_2c
    return v3

    :cond_2d
    const/4 v3, 0x1

    goto :goto_2c
.end method

.method private checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    .registers 9
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1347
    if-lez p2, :cond_2b

    .line 1348
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1349
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_31

    .line 1350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 1351
    iget-object v5, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_2d

    move-result v3

    if-eqz v3, :cond_28

    .line 1352
    const/4 v3, 0x1

    .line 1362
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_27
    return v3

    .line 1350
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2b
    move v3, v4

    .line 1357
    goto :goto_27

    .line 1359
    :catch_2d
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    move v3, v4

    .line 1362
    goto :goto_27
.end method

.method private declared-synchronized disconnect()V
    .registers 7

    .prologue
    .line 1496
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_8

    .line 1497
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1499
    :cond_8
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1c

    .line 1500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1501
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1502
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e
    .catchall {:try_start_1 .. :try_end_1c} :catchall_23

    .line 1507
    .end local v1    # "token":J
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 1504
    :catch_1e
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_1c

    .line 1496
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 145
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_12
    return-void
.end method

.method private enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1750
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1751
    :cond_8
    const/4 v4, 0x0

    .line 1771
    :cond_9
    :goto_9
    return-object v4

    .line 1754
    :cond_a
    const/4 v4, 0x0

    .line 1756
    .local v4, "result":Lcom/android/internal/net/VpnProfile;
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 1757
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1758
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1759
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_31

    move-result v5

    if-eqz v5, :cond_1b

    .line 1760
    move-object v4, v2

    .line 1761
    goto :goto_9

    .line 1766
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_31
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VpnPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getProfileByName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .registers 6
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 1326
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1327
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 1328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 1329
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_25

    move-result v3

    if-eqz v3, :cond_22

    .line 1337
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_21
    return v1

    .line 1328
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1334
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_25
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    const/4 v1, -0x1

    goto :goto_21
.end method

.method private getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_73

    .line 1172
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1173
    .local v8, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v8, :cond_73

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_73

    .line 1174
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/VpnProfile;

    .line 1175
    .local v7, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_76

    .line 1199
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_36
    :goto_36
    return-object v6

    .line 1179
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :pswitch_37
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_41
    if-ge v1, v5, :cond_36

    aget-object v2, v0, v1

    .line 1180
    .local v2, "lDnsServer":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1184
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "lDnsServer":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_4b
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_55
    if-ge v1, v5, :cond_36

    aget-object v4, v0, v1

    .line 1185
    .local v4, "lSearchDomain":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1189
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "lSearchDomain":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_5f
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_69
    if-ge v1, v5, :cond_36

    aget-object v3, v0, v1

    .line 1190
    .local v3, "lRoutes":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1199
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "lRoutes":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_73
    const/4 v6, 0x0

    goto :goto_36

    .line 1177
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_37
        :pswitch_4b
        :pswitch_5f
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .registers 3

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    .registers 11
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1426
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "VpnID"

    aput-object v7, v0, v6

    .line 1429
    .local v0, "Column":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 1432
    .local v1, "Value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1433
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1434
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1436
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1437
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4a

    .line 1442
    .end local v0    # "Column":[Ljava/lang/String;
    .end local v1    # "Value":[Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_49
    :goto_49
    return-void

    .line 1439
    :catch_4a
    move-exception v2

    .line 1440
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.method private replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "index"    # I
    .param p3, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1448
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 1449
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1450
    invoke-virtual {v1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1451
    .local v0, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_37

    .line 1452
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    .line 1455
    .end local v0    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    :cond_37
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 931
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_4a

    array-length v7, v4

    if-lez v7, :cond_4a

    .line 933
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v5, :cond_4a

    aget-object v3, v1, v2

    .line 934
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 935
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 936
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_47

    .line 937
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 942
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_4a
    return-object v0
.end method

.method private saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1730
    const/4 v1, 0x0

    .line 1732
    .local v1, "userId":I
    if-eqz p2, :cond_21

    .line 1733
    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v4, "vpnAlwaysOnProfile"

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1736
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string/jumbo v4, "vpnAlwaysOnOwner"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1740
    return v0

    .line 1732
    .end local v0    # "ret":Z
    :cond_21
    const-string p2, ""

    goto :goto_3
.end method

.method private saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1393
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VPN_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 1394
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1396
    .local v7, "token":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1397
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1400
    .local v9, "uid":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1401
    .local v10, "username":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1402
    .local v6, "pwd":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "VpnID"

    aput-object v13, v2, v12

    .line 1405
    .local v2, "columns":[Ljava/lang/String;
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 1408
    .local v11, "values":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1409
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    const-string v12, "VpnID"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v12, "UsrName"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v12, "UsrPwd"

    invoke-virtual {v3, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "VPN"

    invoke-virtual {v12, v13, v2, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a5

    move-result v12

    .line 1418
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pwd":Ljava/lang/String;
    .end local v7    # "token":J
    .end local v9    # "uid":I
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/String;
    :goto_a4
    return v12

    .line 1415
    :catch_a5
    move-exception v4

    .line 1416
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1418
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a9
    const/4 v12, 0x0

    goto :goto_a4
.end method

.method private setProfileId()J
    .registers 8

    .prologue
    .line 1370
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1371
    .local v3, "millis":J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 1373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v5, v2

    if-ge v1, v5, :cond_2b

    .line 1374
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    move-result v5

    if-eqz v5, :cond_22

    .line 1375
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1376
    const/4 v1, 0x0

    .line 1373
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1381
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "millis":J
    :catch_25
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1384
    const-wide/16 v3, -0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    return-wide v3
.end method

.method private setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    if-nez p3, :cond_f

    .line 1166
    :cond_e
    :goto_e
    return v8

    .line 1121
    :cond_f
    const-string v1, ""

    .line 1122
    .local v1, "endListAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v2, "endListAddressBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1124
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 1127
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1130
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_47

    .line 1132
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1134
    :cond_47
    if-nez p4, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_55

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1137
    :cond_55
    const/4 v10, 0x2

    if-ne p4, v10, :cond_64

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_64

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1141
    :cond_64
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1142
    .local v4, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1143
    .local v7, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 1144
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    .line 1145
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_e

    .line 1146
    packed-switch p4, :pswitch_data_98

    .line 1158
    :goto_7f
    :try_start_7f
    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8d

    move v8, v9

    .line 1163
    goto :goto_e

    .line 1148
    :pswitch_84
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_7f

    .line 1151
    :pswitch_87
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_7f

    .line 1154
    :pswitch_8a
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_7f

    .line 1159
    :catch_8d
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1146
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_84
        :pswitch_87
        :pswitch_8a
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .registers 3

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_1
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1491
    :goto_d
    monitor-exit p0

    return-void

    .line 1488
    :catch_f
    move-exception v0

    .line 1489
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    .line 1486
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 1204
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v6, :cond_67

    aget-object v0, v1, v4

    .line 1205
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1204
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1209
    :cond_15
    const/16 v8, 0x20

    .line 1210
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2a

    .line 1211
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1212
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1213
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1215
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2a
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1216
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 1218
    .local v5, "integer":I
    array-length v9, v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_64

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    if-ltz v8, :cond_62

    const/16 v9, 0x20

    if-gt v8, v9, :cond_62

    const/16 v9, 0x20

    if-ge v8, v9, :cond_12

    shl-int v9, v5, v8

    if-eqz v9, :cond_12

    .line 1220
    :cond_62
    const/4 v9, 0x0

    .line 1226
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_63
    return v9

    .line 1223
    :catch_64
    move-exception v3

    .line 1224
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_63

    .line 1226
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_67
    const/4 v9, 0x1

    goto :goto_63
.end method


# virtual methods
.method public allowOnlySecureConnections(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1273
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1274
    .local v2, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_42

    .line 1275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1276
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1277
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1278
    .local v3, "state":Ljava/lang/String;
    if-eqz v4, :cond_12

    const-string v5, "PPTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v3, :cond_12

    const-string v5, "CONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1280
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_12

    .line 1285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_42
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "allowOnlySecureVPN"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    return v5
.end method

.method public allowUserAddProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1673
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserAddProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1675
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserAddProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserChangeProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1638
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserChangeProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1640
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserChangeProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserSetAlwaysOn(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1602
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserSetAlwaysOn"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1604
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserSetAlwaysOn"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "racoon"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1298
    const/4 v0, 0x1

    .line 1299
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1300
    if-eqz p2, :cond_56

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_56

    aget-object v1, p2, v3

    if-eqz v1, :cond_56

    aget-object v1, p2, v3

    const-string/jumbo v2, "udprsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    aget-object v1, p2, v3

    const-string v2, "hybridrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    aget-object v1, p2, v3

    const-string/jumbo v2, "udppsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthpsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1307
    :cond_4c
    const/4 v0, 0x1

    .line 1311
    :goto_4d
    if-nez v0, :cond_55

    .line 1312
    const v1, 0x104029a

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1316
    :cond_55
    return v0

    .line 1309
    :cond_56
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/VpnAdminProfile;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "adminProfile"    # Landroid/app/enterprise/VpnAdminProfile;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 950
    monitor-enter p0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9e

    move-result-object p1

    .line 953
    if-nez p2, :cond_b

    .line 1081
    :cond_9
    :goto_9
    monitor-exit p0

    return v7

    .line 956
    :cond_b
    :try_start_b
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x20

    if-gt v8, v10, :cond_9

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 964
    new-instance v6, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 965
    .local v6, "vpnProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_9

    .line 966
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 967
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 968
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    move v8, v9

    :goto_57
    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 970
    const-string v0, ""

    .line 971
    .local v0, "addresses":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    .local v1, "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 973
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 976
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_7e} :catch_7f
    .catchall {:try_start_b .. :try_end_7e} :catchall_9e

    goto :goto_68

    .line 1077
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listAddresses":Ljava/lang/String;
    .end local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :catch_7f
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/io/IOException;
    :try_start_80
    const-string v8, "VpnPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createProfile exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_9e

    goto/16 :goto_9

    .line 950
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_9e
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :cond_a1
    move v8, v7

    .line 968
    goto :goto_57

    .line 979
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_b8

    .line 981
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_b8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c5

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 986
    :cond_c5
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 988
    const-string v0, ""

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ed

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 991
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 994
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d6

    .line 997
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_ed
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_102

    .line 999
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_10f

    const/4 v8, 0x1

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1004
    :cond_10f
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 1006
    const-string v0, ""

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_120
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_137

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1009
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 1012
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_120

    .line 1015
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_14c

    .line 1017
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :cond_14c
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1021
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v8, :cond_156

    .line 1022
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 1024
    :cond_156
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v8, :cond_15e

    .line 1025
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1028
    :cond_15e
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "PPTP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_183

    .line 1029
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1030
    iget-boolean v8, p2, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 1072
    :goto_16f
    iget-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1073
    .local v4, "index":I
    if-gez v4, :cond_9

    invoke-direct {p0, v6, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1074
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    move-result v7

    goto/16 :goto_9

    .line 1031
    .end local v4    # "index":I
    :cond_183
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a1

    .line 1032
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1035
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1036
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1037
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_16f

    .line 1039
    :cond_1a1
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1bf

    .line 1040
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1043
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1044
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1045
    const/4 v8, 0x2

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_16f

    .line 1049
    :cond_1bf
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_HYBRID_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d1

    .line 1050
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1051
    const/4 v8, 0x5

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_16f

    .line 1052
    :cond_1d1
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    .line 1053
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1056
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1057
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1058
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_16f

    .line 1060
    :cond_1ef
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1061
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1064
    const/4 v8, 0x4

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1065
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1066
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_20c} :catch_7f
    .catchall {:try_start_a3 .. :try_end_20c} :catchall_9e

    goto/16 :goto_16f
.end method

.method public declared-synchronized deleteProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 684
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_69

    move-result-object p1

    .line 687
    :try_start_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 689
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_67

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_67

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_67

    .line 691
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 692
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 693
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_39

    .line 694
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 696
    :cond_39
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_60

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 698
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 699
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5a

    .line 701
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 703
    :cond_5a
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5d} :catch_63
    .catchall {:try_start_5 .. :try_end_5d} :catchall_69

    .line 704
    const/4 v6, 0x1

    .line 713
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v4    # "token":J
    :goto_5e
    monitor-exit p0

    return v6

    .line 690
    .restart local v1    # "i":I
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 710
    .end local v1    # "i":I
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_63
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_69

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    const/4 v6, 0x0

    goto :goto_5e

    .line 684
    :catchall_69
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .registers 1

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1520
    return-void
.end method

.method public getAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1573
    const-string v6, "VpnPolicy"

    const-string v7, "getAlwaysOnProfile"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const/4 v5, 0x0

    .line 1576
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v7, "LOCKDOWN_VPN"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 1578
    .local v1, "lockdownKey":[B
    if-eqz v1, :cond_3d

    .line 1579
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1580
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_3d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d

    .line 1581
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1582
    .local v2, "lockdownKeyStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1583
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1584
    iget-object v5, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1591
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lockdownKeyStr":Ljava/lang/String;
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_3d
    return-object v5
.end method

.method public declared-synchronized getCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 640
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "certificate":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_36

    move-result v5

    if-eqz v5, :cond_f

    .line 653
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v4

    .line 645
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 646
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 647
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 648
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 649
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_36

    goto :goto_d

    .line 640
    .end local v0    # "certificate":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_36
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1103
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 426
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_35

    move-result v4

    if-eqz v4, :cond_e

    .line 438
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v3

    .line 430
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 431
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 432
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 433
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 434
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_c

    .line 426
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1255
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1256
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_31

    .line 1257
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1258
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1259
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_30
    return-object v3

    :cond_31
    const/4 v3, 0x0

    goto :goto_30
.end method

.method public getL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 776
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v3

    .line 789
    :goto_c
    return-object v2

    .line 780
    :cond_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 781
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 783
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 785
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_c

    .line 782
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .end local v0    # "i":I
    :cond_3a
    move-object v2, v3

    .line 789
    goto :goto_c
.end method

.method public declared-synchronized getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 388
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_31

    move-result-object p1

    .line 389
    if-nez p2, :cond_a

    .line 400
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v3

    .line 392
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 394
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 395
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 396
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_31

    goto :goto_8

    .line 388
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_31
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 596
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 597
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 598
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 599
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 600
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 601
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 602
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    .line 607
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return-object v3

    :cond_33
    const/4 v3, 0x0

    goto :goto_31

    .line 596
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 407
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 408
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_35

    move-result v4

    if-eqz v4, :cond_e

    .line 419
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v3

    .line 411
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 412
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 413
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 414
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 415
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_c

    .line 407
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 445
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_88

    move-result-object p1

    .line 446
    if-nez p2, :cond_a

    .line 500
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v8

    .line 450
    :cond_a
    const/4 v1, 0x0

    .line 451
    .local v1, "found":Z
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 452
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_30

    .line 453
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 454
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_88

    move-result v9

    if-eqz v9, :cond_1b

    .line 455
    const/4 v1, 0x1

    .line 461
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_30
    if-eqz v1, :cond_8

    .line 465
    :try_start_32
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v9, :cond_39

    .line 466
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 468
    :cond_39
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v9, :cond_80

    .line 469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 470
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 471
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v9, :cond_59

    .line 474
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    :cond_59
    if-eqz v3, :cond_7d

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 477
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v9, :pswitch_data_8c

    .line 491
    const-string v8, "IDLE"

    goto :goto_8

    .line 479
    :pswitch_6b
    const-string v8, "DISCONNECTED"

    goto :goto_8

    .line 481
    :pswitch_6e
    const-string v8, "INITIALIZING"

    goto :goto_8

    .line 483
    :pswitch_71
    const-string v8, "CONNECTING"

    goto :goto_8

    .line 485
    :pswitch_74
    const-string v8, "CONNECTED"

    goto :goto_8

    .line 487
    :pswitch_77
    const-string v8, "TIMEOUT"

    goto :goto_8

    .line 489
    :pswitch_7a
    const-string v8, "FAILED"

    goto :goto_8

    .line 494
    :cond_7d
    const-string v8, "IDLE"

    goto :goto_8

    .line 497
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_80
    const-string v8, "IDLE"
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_82} :catch_83
    .catchall {:try_start_32 .. :try_end_82} :catchall_88

    goto :goto_8

    .line 498
    :catch_83
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "found":Z
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_88
    move-exception v8

    monitor-exit p0

    throw v8

    .line 477
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7a
    .end packed-switch
.end method

.method public declared-synchronized getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 360
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 361
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_42

    .line 362
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 363
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 364
    iget v3, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_48

    goto :goto_15

    .line 366
    :pswitch_2f
    const-string v3, "PPTP"
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_44

    .line 381
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :goto_31
    monitor-exit p0

    return-object v3

    .line 368
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :pswitch_33
    :try_start_33
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_31

    .line 370
    :pswitch_36
    const-string v3, "L2TP_IPSEC"

    goto :goto_31

    .line 372
    :pswitch_39
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_31

    .line 374
    :pswitch_3c
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_31

    .line 376
    :pswitch_3f
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_44

    goto :goto_31

    .line 381
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_42
    const/4 v3, 0x0

    goto :goto_31

    .line 359
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3

    .line 364
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 720
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 721
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_35

    move-result v4

    if-eqz v4, :cond_e

    .line 732
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v3

    .line 724
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 725
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 726
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 727
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 728
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_c

    .line 720
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 509
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 510
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 511
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 512
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 513
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 514
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    .line 519
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return-object v3

    :cond_33
    const/4 v3, 0x0

    goto :goto_31

    .line 508
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserNameById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 528
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 527
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 546
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 547
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 548
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 549
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 550
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 551
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 552
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    .line 557
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return-object v3

    :cond_33
    const/4 v3, 0x0

    goto :goto_31

    .line 546
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserPwdById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 537
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 898
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 900
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-nez v3, :cond_c

    .line 916
    :cond_b
    return-object v0

    .line 904
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 908
    const/4 v2, 0x0

    .line 910
    .local v2, "position":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 912
    .local v0, "VpnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 913
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 914
    add-int/lit8 v2, v2, 0x1

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public isAdminProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 873
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 875
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_12

    .line 890
    :cond_11
    :goto_11
    return v3

    .line 878
    :cond_12
    if-eqz p2, :cond_11

    .line 881
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    .local v0, "AdminVpnId":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 886
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 887
    const/4 v3, 0x1

    goto :goto_11
.end method

.method public isL2TPSecretEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 797
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 809
    :cond_b
    :goto_b
    return v3

    .line 800
    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 801
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 803
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 805
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_3c
    move v3, v2

    goto :goto_b

    :cond_3e
    move v2, v3

    goto :goto_3c

    .line 802
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1292
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowOnlySecureVPN"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 846
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 848
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    .line 864
    :goto_c
    return v2

    .line 851
    :cond_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 852
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_46

    .line 853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 854
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 856
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v2, :cond_41

    .line 857
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_c

    :cond_41
    move v2, v3

    .line 859
    goto :goto_c

    .line 853
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .end local v0    # "i":I
    :cond_46
    move v2, v3

    .line 864
    goto :goto_c
.end method

.method public isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1688
    const-string v2, "VpnPolicy"

    const-string v3, "isUserAddProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserAddProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1693
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    .line 1695
    .local v0, "ret":Z
    :cond_1d
    if-eqz p2, :cond_27

    if-nez v0, :cond_27

    .line 1696
    const v2, 0x10402b2

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1699
    :cond_27
    return v0
.end method

.method public isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1652
    const-string v2, "VpnPolicy"

    const-string v3, "isUserChangeProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserChangeProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1657
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    .line 1659
    .local v0, "ret":Z
    :cond_1d
    if-eqz p2, :cond_27

    if-nez v0, :cond_27

    .line 1660
    const v2, 0x10402b1

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1663
    :cond_27
    return v0
.end method

.method public isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1617
    const-string v2, "VpnPolicy"

    const-string v3, "isUserSetAlwaysOnAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserSetAlwaysOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1622
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    .line 1624
    .local v0, "ret":Z
    :cond_1d
    if-eqz p2, :cond_27

    if-nez v0, :cond_27

    .line 1625
    const v2, 0x10402b0

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1628
    :cond_27
    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1779
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1784
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1787
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1790
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    .line 1793
    :cond_14
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1804
    return-void
.end method

.method public setAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1533
    const-string v4, "VpnPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlwaysOnProfile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, "success":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1539
    if-eqz p2, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1541
    :cond_31
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 1552
    :cond_39
    :goto_39
    if-eqz v1, :cond_4f

    .line 1554
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1558
    .local v2, "uid":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1559
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    .end local v2    # "uid":J
    :cond_4f
    return v1

    .line 1544
    :cond_50
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 1545
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1547
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    iget-object v6, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    goto :goto_39
.end method

.method public declared-synchronized setCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 615
    monitor-enter p0

    const/4 v4, 0x0

    .line 616
    .local v4, "ret":Z
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 617
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_34

    .line 620
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 622
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_34

    .line 623
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 624
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_3a

    .line 626
    :try_start_30
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_37
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    .line 627
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_34
    move v5, v4

    .line 633
    :goto_35
    monitor-exit p0

    return v5

    .line 628
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_37
    move-exception v0

    .line 629
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_35

    .line 615
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_3a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1099
    .local p3, "searchDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1091
    .local p3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 818
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 819
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_37

    move-result v6

    if-eqz v6, :cond_e

    .line 839
    :cond_c
    :goto_c
    monitor-exit p0

    return v5

    .line 823
    :cond_e
    :try_start_e
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 824
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 825
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 826
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 827
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_c

    iget v6, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v6, :cond_c

    .line 828
    move-object v2, v3

    .line 829
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-boolean p3, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_37

    .line 831
    :try_start_2d
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_32
    .catchall {:try_start_2d .. :try_end_30} :catchall_37

    .line 832
    const/4 v5, 0x1

    goto :goto_c

    .line 833
    :catch_32
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_c

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_37
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1107
    .local p3, "forwardRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 189
    monitor-enter p0

    :try_start_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_86

    move-result v9

    if-eqz v9, :cond_a

    .line 220
    :cond_8
    :goto_8
    monitor-exit p0

    return v8

    .line 192
    :cond_a
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 193
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_86

    .line 195
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 198
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 199
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 200
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 201
    invoke-virtual {v5}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v9

    invoke-static {p3, v9}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 202
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 203
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 204
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 207
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 210
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7f} :catch_81
    .catchall {:try_start_13 .. :try_end_7f} :catchall_86

    move-result v8

    goto :goto_8

    .line 216
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_81
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8

    .line 189
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_86
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ipSecIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1230
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3b

    if-eqz p3, :cond_3b

    .line 1232
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1233
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3b

    .line 1234
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1235
    .local v3, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1236
    iput-object p3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1237
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1239
    .local v2, "index":I
    :try_start_37
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3c

    .line 1244
    const/4 v5, 0x1

    .line 1249
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_3b
    :goto_3b
    return v5

    .line 1240
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_3c
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public declared-synchronized setL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 741
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 742
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 743
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 744
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 745
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_34

    .line 746
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 747
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 748
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_34

    .line 749
    move-object v2, v3

    .line 750
    if-eqz p3, :cond_36

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 751
    iput-object p4, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_3d

    .line 758
    :goto_30
    :try_start_30
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_40
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 759
    const/4 v5, 0x1

    .line 768
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_34
    :goto_34
    monitor-exit p0

    return v5

    .line 752
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_36
    if-nez p3, :cond_34

    .line 753
    :try_start_38
    const-string v6, ""

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_30

    .line 741
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_3d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 760
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_40
    move-exception v0

    .line 761
    .local v0, "e":Ljava/io/IOException;
    :try_start_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3d

    goto :goto_34
.end method

.method public declared-synchronized setName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_47

    move-result-object p1

    .line 229
    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    if-ge v5, v6, :cond_45

    .line 231
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 233
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_45

    .line 234
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 235
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 236
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_45

    .line 237
    move-object v2, v3

    .line 238
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 239
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_45

    .line 240
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_41
    .catchall {:try_start_5 .. :try_end_3e} :catchall_47

    .line 241
    const/4 v5, 0x1

    .line 249
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_3f
    monitor-exit p0

    return v5

    .line 246
    :catch_41
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_47

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_45
    const/4 v5, 0x0

    goto :goto_3f

    .line 227
    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 567
    const/4 v5, 0x0

    .line 568
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_38

    .line 569
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3d

    move-result v6

    if-nez v6, :cond_38

    .line 572
    :try_start_18
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 573
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 574
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_38

    .line 575
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 576
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 577
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_37

    .line 578
    move-object v2, v3

    .line 579
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 580
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_37} :catch_3a
    .catchall {:try_start_18 .. :try_end_37} :catchall_3d

    .line 582
    :cond_37
    const/4 v5, 0x1

    .line 589
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_38
    :goto_38
    monitor-exit p0

    return v5

    .line 584
    :catch_3a
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_38

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ret":Z
    :catchall_3d
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_39

    move-result-object p1

    .line 258
    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 259
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 261
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_37

    .line 262
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 263
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 264
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_37

    .line 265
    move-object v2, v3

    .line 266
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 267
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_33
    .catchall {:try_start_5 .. :try_end_30} :catchall_39

    .line 268
    const/4 v5, 0x1

    .line 275
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return v5

    .line 272
    :catch_33
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v5, 0x0

    goto :goto_31

    .line 256
    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 661
    monitor-enter p0

    const/4 v4, 0x0

    .line 662
    .local v4, "ret":Z
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 663
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_34

    .line 666
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 667
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 668
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_34

    .line 669
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 670
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_3a

    .line 672
    :try_start_30
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_37
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    .line 673
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_34
    move v5, v4

    .line 679
    :goto_35
    monitor-exit p0

    return v5

    .line 674
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_37
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_35

    .line 661
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_3a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 283
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 284
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_85

    move-result v8

    if-nez v8, :cond_76

    .line 287
    :try_start_11
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 288
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 289
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_76

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_76

    .line 290
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 291
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_76

    .line 292
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 293
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 294
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 299
    :goto_34
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 300
    const-string v8, "adminUid"

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v8, "VpnID"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v8, "UsrName"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "VpnID"

    aput-object v9, v0, v8

    .line 306
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 311
    .local v6, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "VPN"

    invoke-virtual {v8, v9, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_75} :catch_80
    .catchall {:try_start_11 .. :try_end_75} :catchall_85

    move-result v7

    .line 319
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v6    # "values":[Ljava/lang/String;
    :cond_76
    :goto_76
    monitor-exit p0

    return v7

    .line 296
    .restart local v3    # "index":I
    .restart local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_78
    const/4 v8, 0x0

    :try_start_79
    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 297
    const-string v8, ""

    iput-object v8, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_80
    .catchall {:try_start_79 .. :try_end_7f} :catchall_85

    goto :goto_34

    .line 315
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_80
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    :try_start_81
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_76

    .line 283
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setUserPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 327
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_78

    move-result-object p1

    .line 329
    if-eqz p3, :cond_71

    :try_start_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_71

    .line 330
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 332
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_71

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_71

    .line 333
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 334
    .local v5, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v4, 0x0

    .line 335
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_71

    .line 336
    move-object v4, v5

    .line 337
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 338
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 339
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "UsrPwd"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 344
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 345
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_73
    .catchall {:try_start_8 .. :try_end_70} :catchall_78

    move-result v8

    .line 352
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_71
    :goto_71
    monitor-exit p0

    return v8

    .line 349
    :catch_73
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_71

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    .line 1463
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    .line 1481
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1463
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1799
    return-void
.end method
