.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    }
.end annotation


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

    .line 140
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 102
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 104
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 110
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 112
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 142
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 143
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 144
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 145
    .local v5, "vpnProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c3

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 147
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
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

    .line 150
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

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 151
    .local v4, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

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

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

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

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 159
    :cond_9f
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 160
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 161
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 163
    :cond_b2
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 164
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    goto :goto_51

    .line 170
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_c3
    return-void
.end method

.method private addProfile(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1362
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1364
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1365
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1367
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_19
    return-void
.end method

.method private checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z
    .registers 9
    .param p1, "p"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1338
    if-lez p2, :cond_2b

    .line 1339
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1340
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_31

    .line 1341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 1342
    iget-object v5, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_2d

    move-result v3

    if-eqz v3, :cond_28

    .line 1343
    const/4 v3, 0x1

    .line 1353
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_27
    return v3

    .line 1341
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_2b
    move v3, v4

    .line 1348
    goto :goto_27

    .line 1350
    :catch_2d
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    move v3, v4

    .line 1353
    goto :goto_27
.end method

.method private declared-synchronized disconnect()V
    .registers 7

    .prologue
    .line 1500
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_8

    .line 1501
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1503
    :cond_8
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1c

    .line 1504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1505
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1506
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e
    .catchall {:try_start_1 .. :try_end_1c} :catchall_23

    .line 1511
    .end local v1    # "token":J
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 1508
    :catch_1e
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_1c

    .line 1500
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 136
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_12
    return-void
.end method

.method private enforceVpnPermission()I
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .registers 6
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 1317
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1318
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 1319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 1320
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_25

    move-result v3

    if-eqz v3, :cond_22

    .line 1328
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_21
    return v1

    .line 1319
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1325
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_25
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    const/4 v1, -0x1

    goto :goto_21
.end method

.method private getProfileProperty(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_72

    .line 1162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1163
    .local v8, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v8, :cond_72

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_72

    .line 1164
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1165
    .local v7, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p2, :pswitch_data_74

    .line 1189
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_35
    :goto_35
    return-object v6

    .line 1169
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :pswitch_36
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_40
    if-ge v1, v5, :cond_35

    aget-object v2, v0, v1

    .line 1170
    .local v2, "lDnsServer":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1174
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "lDnsServer":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_4a
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_54
    if-ge v1, v5, :cond_35

    aget-object v4, v0, v1

    .line 1175
    .local v4, "lSearchDomain":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 1179
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "lSearchDomain":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_5e
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_68
    if-ge v1, v5, :cond_35

    aget-object v3, v0, v1

    .line 1180
    .local v3, "lRoutes":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1189
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "lRoutes":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_72
    const/4 v6, 0x0

    goto :goto_35

    .line 1167
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_36
        :pswitch_4a
        :pswitch_5e
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .registers 3

    .prologue
    .line 1519
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

.method private removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 11
    .param p1, "p"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .prologue
    .line 1430
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "VpnID"

    aput-object v7, v0, v6

    .line 1433
    .local v0, "Column":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 1436
    .local v1, "Value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1437
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1438
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1440
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1441
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_48

    .line 1446
    .end local v0    # "Column":[Ljava/lang/String;
    .end local v1    # "Value":[Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_47
    :goto_47
    return-void

    .line 1443
    :catch_48
    move-exception v2

    .line 1444
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "p"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1452
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 1453
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1454
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1455
    .local v0, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v0, :cond_37

    .line 1456
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    .line 1459
    .end local v0    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
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
            "Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 907
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_4a

    array-length v7, v4

    if-lez v7, :cond_4a

    .line 909
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v5, :cond_4a

    aget-object v3, v1, v2

    .line 910
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 911
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

    invoke-static {v3, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    move-result-object v6

    .line 912
    .local v6, "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_47

    .line 913
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .end local v6    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 918
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_4a
    return-object v0
.end method

.method private saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z
    .registers 18
    .param p1, "p"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1397
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->encode()[B

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-eqz v11, :cond_a2

    .line 1398
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1400
    .local v6, "token":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1401
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v8

    .line 1404
    .local v8, "uid":I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1405
    .local v9, "username":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1406
    .local v5, "pwd":Ljava/lang/String;
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "adminUid"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "VpnID"

    aput-object v12, v1, v11

    .line 1409
    .local v1, "columns":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 1412
    .local v10, "values":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1413
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string v11, "VpnID"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v11, "UsrName"

    invoke-virtual {v2, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v11, "UsrPwd"

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "VPN"

    invoke-virtual {v11, v12, v1, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9e

    move-result v11

    .line 1422
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pwd":Ljava/lang/String;
    .end local v6    # "token":J
    .end local v8    # "uid":I
    .end local v9    # "username":Ljava/lang/String;
    .end local v10    # "values":[Ljava/lang/String;
    :goto_9d
    return v11

    .line 1419
    :catch_9e
    move-exception v3

    .line 1420
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1422
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a2
    const/4 v11, 0x0

    goto :goto_9d
.end method

.method private setProfileId()J
    .registers 8

    .prologue
    .line 1374
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1375
    .local v3, "millis":J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 1377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v5, v2

    if-ge v1, v5, :cond_2b

    .line 1378
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    move-result v5

    if-eqz v5, :cond_22

    .line 1379
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1380
    const/4 v1, 0x0

    .line 1377
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1385
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "millis":J
    :catch_25
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1388
    const-wide/16 v3, -0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    return-wide v3
.end method

.method private setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1105
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    if-nez p2, :cond_e

    .line 1156
    :cond_d
    :goto_d
    return v8

    .line 1111
    :cond_e
    const-string v1, ""

    .line 1112
    .local v1, "endListAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v2, "endListAddressBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1114
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 1117
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1120
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_46

    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1124
    :cond_46
    if-nez p3, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_54

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1127
    :cond_54
    const/4 v10, 0x2

    if-ne p3, v10, :cond_63

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_63

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1131
    :cond_63
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1132
    .local v4, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1133
    .local v7, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    .line 1134
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1135
    .local v6, "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_d

    .line 1136
    packed-switch p3, :pswitch_data_96

    .line 1148
    :goto_7e
    :try_start_7e
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_8c

    move v8, v9

    .line 1153
    goto :goto_d

    .line 1138
    :pswitch_83
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_7e

    .line 1141
    :pswitch_86
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_7e

    .line 1144
    :pswitch_89
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    goto :goto_7e

    .line 1149
    :catch_8c
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1136
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_83
        :pswitch_86
        :pswitch_89
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .registers 3

    .prologue
    .line 1490
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

    .line 1495
    :goto_d
    monitor-exit p0

    return-void

    .line 1492
    :catch_f
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    .line 1490
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
    .line 1194
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

    .line 1195
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1194
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1199
    :cond_15
    const/16 v8, 0x20

    .line 1200
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2a

    .line 1201
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1202
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1203
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1205
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2a
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1206
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

    .line 1208
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

    .line 1210
    :cond_62
    const/4 v9, 0x0

    .line 1216
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_63
    return v9

    .line 1213
    :catch_64
    move-exception v3

    .line 1214
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_63

    .line 1216
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_67
    const/4 v9, 0x1

    goto :goto_63
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .registers 11
    .param p1, "enable"    # Z

    .prologue
    .line 1261
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v5

    .line 1263
    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1264
    .local v2, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    .line 1265
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1266
    .local v1, "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1267
    .local v4, "type":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, "state":Ljava/lang/String;
    if-eqz v4, :cond_12

    const-string v6, "PPTP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v3, :cond_12

    const-string v6, "CONNECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1270
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_12

    .line 1275
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_42
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "allowOnlySecureVPN"

    invoke-virtual {v6, v5, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .registers 7
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 1287
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1288
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x1

    .line 1290
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1291
    if-eqz p1, :cond_65

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_65

    aget-object v2, p1, v4

    if-eqz v2, :cond_65

    aget-object v2, p1, v4

    const-string v3, "udprsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "xauthrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "hybridrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "udppsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "xauthpsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1298
    :cond_4e
    const/4 v1, 0x1

    .line 1302
    :goto_4f
    if-nez v1, :cond_64

    .line 1303
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const v4, 0x104028e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1307
    :cond_64
    return v1

    .line 1300
    :cond_65
    const/4 v1, 0x0

    goto :goto_4f
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .registers 16
    .param p1, "adminProfile"    # Landroid/app/enterprise/VpnAdminProfile;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 926
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_af

    .line 930
    :try_start_7
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v10, :cond_e

    .line 931
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 933
    :cond_e
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v10, :cond_2e

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 935
    .local v6, "token":J
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 936
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_2e

    .line 938
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 942
    .end local v6    # "token":J
    :cond_2e
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-ge v10, v12, :cond_4e

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0x40

    if-gt v10, v12, :cond_60

    :cond_4e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v10

    if-nez v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5d} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_5d} :catch_fe
    .catchall {:try_start_7 .. :try_end_5d} :catchall_af

    move-result v10

    if-nez v10, :cond_62

    .line 1071
    :cond_60
    :goto_60
    monitor-exit p0

    return v9

    .line 951
    :cond_62
    :try_start_62
    new-instance v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    .line 952
    .local v8, "vpnProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v8, :cond_60

    .line 953
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 954
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 955
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b2

    move v10, v11

    :goto_82
    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 957
    const-string v0, ""

    .line 958
    .local v0, "addresses":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    .local v1, "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 960
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_60

    .line 963
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_a9} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_a9} :catch_fe
    .catchall {:try_start_62 .. :try_end_a9} :catchall_af

    goto :goto_93

    .line 1064
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listAddresses":Ljava/lang/String;
    .end local v8    # "vpnProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :catch_aa
    move-exception v2

    .line 1065
    .local v2, "e":Ljava/io/IOException;
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_60

    .line 926
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_af
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v8    # "vpnProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_b2
    move v10, v9

    .line 955
    goto :goto_82

    .line 966
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_c9

    .line 968
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 970
    :cond_c9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d6

    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 973
    :cond_d6
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    .line 975
    const-string v0, ""

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 978
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_60

    .line 981
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_fd} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_fd} :catch_fe
    .catchall {:try_start_b4 .. :try_end_fd} :catchall_af

    goto :goto_e7

    .line 1067
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listAddresses":Ljava/lang/String;
    .end local v8    # "vpnProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :catch_fe
    move-exception v2

    .line 1068
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_ff
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_af

    goto/16 :goto_60

    .line 984
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "vpnProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_104
    :try_start_104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_119

    .line 986
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 988
    :cond_119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_126

    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 991
    :cond_126
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    .line 993
    const-string v0, ""

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_137
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 996
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_60

    .line 999
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_137

    .line 1002
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_14e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_163

    .line 1004
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1006
    :cond_163
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1008
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v10, :cond_16d

    .line 1009
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 1011
    :cond_16d
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v10, :cond_175

    .line 1012
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 1015
    :cond_175
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "PPTP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19a

    .line 1016
    const/4 v10, 0x0

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1017
    iget-boolean v10, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    .line 1059
    :goto_186
    iget-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1060
    .local v4, "index":I
    if-gez v4, :cond_60

    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v10

    if-nez v10, :cond_60

    .line 1061
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v9

    goto/16 :goto_60

    .line 1018
    .end local v4    # "index":I
    :cond_19a
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    .line 1019
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 1022
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1023
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1024
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_186

    .line 1026
    :cond_1b8
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d6

    .line 1027
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 1030
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1031
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1032
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_186

    .line 1036
    :cond_1d6
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_HYBRID_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 1037
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1038
    const/4 v10, 0x5

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_186

    .line 1039
    :cond_1e8
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_206

    .line 1040
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 1043
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1044
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1045
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_186

    .line 1047
    :cond_206
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 1048
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 1051
    const/4 v10, 0x4

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1052
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1053
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_223} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_223} :catch_fe
    .catchall {:try_start_104 .. :try_end_223} :catchall_af

    goto/16 :goto_186
.end method

.method public declared-synchronized deleteProfile(Ljava/lang/String;)Z
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 660
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_68

    .line 663
    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 664
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 665
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_66

    .line 666
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_66

    .line 667
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 668
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 669
    .local v2, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_38

    .line 670
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 672
    :cond_38
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_5f

    .line 673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 674
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 675
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_59

    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 679
    :cond_59
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5c} :catch_62
    .catchall {:try_start_4 .. :try_end_5c} :catchall_68

    .line 680
    const/4 v6, 0x1

    .line 689
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v4    # "token":J
    :goto_5d
    monitor-exit p0

    return v6

    .line 666
    .restart local v1    # "i":I
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 686
    .end local v1    # "i":I
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_62
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_68

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_66
    const/4 v6, 0x0

    goto :goto_5d

    .line 660
    :catchall_68
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .registers 1

    .prologue
    .line 1618
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1619
    return-void
.end method

.method public declared-synchronized getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 616
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "certificate":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_35

    move-result v5

    if-eqz v5, :cond_e

    .line 629
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v4

    .line 621
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 622
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 623
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 624
    .local v2, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v5, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 625
    iget-object v4, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_c

    .line 616
    .end local v0    # "certificate":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 417
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    .line 429
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    .line 421
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 422
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 423
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 424
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 425
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    .line 417
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1245
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1246
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 1247
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1248
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1249
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1254
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_2f
    return-object v3

    :cond_30
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 752
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 753
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v3

    .line 765
    :goto_b
    return-object v2

    .line 756
    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 757
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 759
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 761
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_b

    .line 758
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_39
    move-object v2, v3

    .line 765
    goto :goto_b
.end method

.method public declared-synchronized getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 379
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_30

    .line 380
    if-nez p1, :cond_9

    .line 391
    :cond_7
    :goto_7
    monitor-exit p0

    return-object v3

    .line 383
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 384
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 385
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 386
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 387
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_7

    .line 379
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 572
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 574
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 575
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_32

    .line 576
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 577
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 578
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_34

    .line 583
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_30
    monitor-exit p0

    return-object v3

    :cond_32
    const/4 v3, 0x0

    goto :goto_30

    .line 572
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 398
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    .line 410
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    .line 402
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 403
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 405
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 406
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    .line 398
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 436
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5f

    .line 437
    if-nez p1, :cond_9

    .line 476
    :goto_7
    monitor-exit p0

    return-object v4

    .line 441
    :cond_9
    :try_start_9
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v5, :cond_10

    .line 442
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 444
    :cond_10
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v5, :cond_57

    .line 445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 446
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v5, :cond_30

    .line 450
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_30
    if-eqz v1, :cond_54

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 453
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v5, :pswitch_data_62

    .line 467
    const-string v4, "IDLE"

    goto :goto_7

    .line 455
    :pswitch_42
    const-string v4, "DISCONNECTED"

    goto :goto_7

    .line 457
    :pswitch_45
    const-string v4, "INITIALIZING"

    goto :goto_7

    .line 459
    :pswitch_48
    const-string v4, "CONNECTING"

    goto :goto_7

    .line 461
    :pswitch_4b
    const-string v4, "CONNECTED"

    goto :goto_7

    .line 463
    :pswitch_4e
    const-string v4, "TIMEOUT"

    goto :goto_7

    .line 465
    :pswitch_51
    const-string v4, "FAILED"

    goto :goto_7

    .line 470
    :cond_54
    const-string v4, "IDLE"

    goto :goto_7

    .line 473
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_57
    const-string v4, "IDLE"
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_59} :catch_5a
    .catchall {:try_start_9 .. :try_end_59} :catchall_5f

    goto :goto_7

    .line 474
    :catch_5a
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_7

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 453
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method

.method public declared-synchronized getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 351
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 352
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 354
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 355
    iget v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    packed-switch v3, :pswitch_data_46

    goto :goto_14

    .line 357
    :pswitch_2e
    const-string v3, "PPTP"
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_43

    .line 372
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :goto_30
    monitor-exit p0

    return-object v3

    .line 359
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :pswitch_32
    :try_start_32
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_30

    .line 361
    :pswitch_35
    const-string v3, "L2TP_IPSEC"

    goto :goto_30

    .line 363
    :pswitch_38
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_30

    .line 365
    :pswitch_3b
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_30

    .line 367
    :pswitch_3e
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_43

    goto :goto_30

    .line 372
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_41
    const/4 v3, 0x0

    goto :goto_30

    .line 350
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_43
    move-exception v3

    monitor-exit p0

    throw v3

    .line 355
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 696
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    .line 708
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    .line 700
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 701
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 702
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 703
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 704
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    .line 696
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 484
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 485
    .local v3, "uid":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 486
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 487
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 488
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 489
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 490
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return-object v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_31

    .line 484
    .end local v3    # "uid":I
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 503
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 522
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 523
    .local v3, "uid":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 525
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 526
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 527
    .local v1, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 528
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    .line 533
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_31
    monitor-exit p0

    return-object v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_31

    .line 522
    .end local v3    # "uid":I
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 514
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 513
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 873
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v4

    .line 874
    .local v4, "uid":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 876
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-nez v3, :cond_c

    .line 892
    :cond_b
    return-object v0

    .line 880
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 884
    const/4 v2, 0x0

    .line 886
    .local v2, "position":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 888
    .local v0, "VpnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 889
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 890
    add-int/lit8 v2, v2, 0x1

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 849
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 851
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_11

    .line 866
    :cond_10
    :goto_10
    return v3

    .line 854
    :cond_11
    if-eqz p1, :cond_10

    .line 857
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 859
    .local v0, "AdminVpnId":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 862
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 863
    const/4 v3, 0x1

    goto :goto_10
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 785
    :cond_a
    :goto_a
    return v3

    .line 776
    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 777
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 779
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 781
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    :goto_3b
    move v3, v2

    goto :goto_a

    :cond_3d
    move v2, v3

    goto :goto_3b

    .line 778
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .registers 4

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1282
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

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 822
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    .line 840
    :goto_b
    return v2

    .line 827
    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 828
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_45

    .line 829
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 830
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 832
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v2, :cond_40

    .line 833
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-boolean v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    goto :goto_b

    :cond_40
    move v2, v3

    .line 835
    goto :goto_b

    .line 829
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_45
    move v2, v3

    .line 840
    goto :goto_b
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1624
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1630
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1641
    return-void
.end method

.method public declared-synchronized setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    const/4 v4, 0x0

    .line 592
    .local v4, "ret":Z
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 593
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_33

    .line 596
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 597
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 598
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_33

    .line 599
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 600
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_39

    .line 602
    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_36
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    .line 603
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_33
    move v5, v4

    .line 609
    :goto_34
    monitor-exit p0

    return v5

    .line 604
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_36
    move-exception v0

    .line 605
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_34

    .line 591
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1089
    .local p2, "searchDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 794
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 795
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_36

    move-result v6

    if-eqz v6, :cond_d

    .line 815
    :cond_b
    :goto_b
    monitor-exit p0

    return v5

    .line 799
    :cond_d
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 800
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 801
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 802
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 803
    .local v3, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_b

    iget v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v6, :cond_b

    .line 804
    move-object v2, v3

    .line 805
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-boolean p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_36

    .line 807
    :try_start_2c
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 808
    const/4 v5, 0x1

    goto :goto_b

    .line 809
    :catch_31
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_b

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_36
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1097
    .local p2, "forwardRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 180
    monitor-enter p0

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7c

    move-result v9

    if-eqz v9, :cond_a

    .line 211
    :cond_8
    :goto_8
    monitor-exit p0

    return v8

    .line 183
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 184
    .local v6, "uid":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_7c

    .line 186
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 188
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 189
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 190
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 191
    .local v4, "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 192
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    .line 193
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 194
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 195
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 198
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 201
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_75} :catch_77
    .catchall {:try_start_13 .. :try_end_75} :catchall_7c

    move-result v8

    goto :goto_8

    .line 207
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_77
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    :try_start_78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_8

    .line 180
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uid":I
    :catchall_7c
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "ipSecIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1220
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    if-eqz p2, :cond_3a

    .line 1222
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1223
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3a

    .line 1224
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1225
    .local v3, "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1226
    iput-object p2, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1229
    .local v2, "index":I
    :try_start_36
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b

    .line 1234
    const/4 v5, 0x1

    .line 1239
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_3a
    :goto_3a
    return v5

    .line 1230
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "p":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_3b
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public declared-synchronized setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 717
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 720
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 721
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_33

    .line 722
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 723
    .local v3, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 724
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_33

    .line 725
    move-object v2, v3

    .line 726
    if-eqz p2, :cond_35

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 727
    iput-object p3, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_3c

    .line 734
    :goto_2f
    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3f
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    .line 735
    const/4 v5, 0x1

    .line 744
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_33
    :goto_33
    monitor-exit p0

    return v5

    .line 728
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_35
    if-nez p2, :cond_33

    .line 729
    :try_start_37
    const-string v6, ""

    iput-object v6, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3c

    goto :goto_2f

    .line 717
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_3c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 736
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_3f
    move-exception v0

    .line 737
    .local v0, "e":Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3c

    goto :goto_33
.end method

.method public declared-synchronized setName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4c

    .line 220
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1e

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_4a

    .line 222
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 224
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4a

    .line 225
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 226
    .local v3, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 227
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_4a

    .line 228
    move-object v2, v3

    .line 229
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 230
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 231
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_46
    .catchall {:try_start_4 .. :try_end_43} :catchall_4c

    .line 232
    const/4 v5, 0x1

    .line 240
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_44
    monitor-exit p0

    return v5

    .line 237
    :catch_46
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a
    const/4 v5, 0x0

    goto :goto_44

    .line 218
    :catchall_4c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "psk"    # Ljava/lang/String;

    .prologue
    .line 542
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_37

    .line 545
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    move-result v6

    if-nez v6, :cond_37

    .line 548
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 549
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 550
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_37

    .line 551
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 552
    .local v3, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 553
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_36

    .line 554
    move-object v2, v3

    .line 555
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 556
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_39
    .catchall {:try_start_17 .. :try_end_36} :catchall_3c

    .line 558
    :cond_36
    const/4 v5, 0x1

    .line 565
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_37
    :goto_37
    monitor-exit p0

    return v5

    .line 560
    :catch_39
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_37

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ret":Z
    :catchall_3c
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_38

    .line 249
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 252
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_36

    .line 253
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 254
    .local v3, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 255
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_36

    .line 256
    move-object v2, v3

    .line 257
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 258
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_32
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 259
    const/4 v5, 0x1

    .line 266
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_30
    monitor-exit p0

    return v5

    .line 263
    :catch_32
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    const/4 v5, 0x0

    goto :goto_30

    .line 247
    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/lang/String;

    .prologue
    .line 637
    monitor-enter p0

    const/4 v4, 0x0

    .line 638
    .local v4, "ret":Z
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 639
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_33

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 644
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_33

    .line 645
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 646
    .local v2, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_39

    .line 648
    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_36
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    .line 649
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_33
    move v5, v4

    .line 655
    :goto_34
    monitor-exit p0

    return v5

    .line 650
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_36
    move-exception v0

    .line 651
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_34

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 274
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 275
    .local v6, "uid":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_81

    move-result v9

    if-nez v9, :cond_72

    .line 278
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 279
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 280
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_72

    .line 281
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 282
    .local v4, "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_72

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 284
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 285
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 290
    :goto_34
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 291
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v9, "UsrName"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 297
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 302
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_71} :catch_7c
    .catchall {:try_start_11 .. :try_end_71} :catchall_81

    move-result v8

    .line 310
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_72
    :goto_72
    monitor-exit p0

    return v8

    .line 287
    .restart local v3    # "index":I
    .restart local v4    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_74
    const/4 v9, 0x0

    :try_start_75
    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 288
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_7c
    .catchall {:try_start_75 .. :try_end_7b} :catchall_81

    goto :goto_34

    .line 306
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_7c
    move-exception v2

    .line 307
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_72

    .line 274
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uid":I
    :catchall_81
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 318
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_74

    move-result v7

    .line 320
    .local v7, "uid":I
    if-eqz p2, :cond_6d

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 322
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 323
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6d

    .line 324
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 325
    .local v5, "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v4, 0x0

    .line 326
    .local v4, "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v5, :cond_6d

    .line 327
    move-object v4, v5

    .line 328
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 329
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 330
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v10, "UsrPwd"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v10, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v10, "VpnID"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "VpnID"

    aput-object v11, v0, v10

    .line 335
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 336
    .local v8, "values":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "VPN"

    invoke-virtual {v10, v11, v0, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6c} :catch_6f
    .catchall {:try_start_8 .. :try_end_6c} :catchall_74

    move-result v9

    .line 343
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5    # "oldProfile":Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v8    # "values":[Ljava/lang/String;
    :cond_6d
    :goto_6d
    monitor-exit p0

    return v9

    .line 340
    :catch_6f
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    :try_start_70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_6d

    .line 318
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "uid":I
    :catchall_74
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    .line 1467
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 1485
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1467
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1636
    return-void
.end method
