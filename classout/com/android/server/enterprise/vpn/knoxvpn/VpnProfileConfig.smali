.class Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;
.super Ljava/lang/Object;
.source "VpnProfileConfig.java"


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;


# instance fields
.field private vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->DBG:Z

    .line 52
    const-string v0, "FW-VpnProfileConfig"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;
    .registers 2

    .prologue
    .line 60
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    if-nez v0, :cond_e

    .line 61
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    invoke-direct {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;

    .line 63
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "profileEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .prologue
    .line 98
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_8

    .line 99
    :cond_5
    const/4 v0, 0x0

    .line 101
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 98
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAdminForProfile(ILjava/lang/String;)I
    .registers 8
    .param p1, "admin_id"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p2, :cond_1c

    .line 171
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVPN : Profile null :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, -0x1

    .line 186
    :goto_1b
    return v1

    .line 174
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 175
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v1, 0x0

    .line 176
    .local v1, "returnValue":I
    if-nez v0, :cond_3d

    .line 177
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile does not exist. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x1

    goto :goto_1b

    .line 179
    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getAdminId()I

    move-result v2

    if-eq p1, v2, :cond_4b

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_69

    .line 180
    :cond_4b
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->DBG:Z

    if-eqz v2, :cond_67

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile admin validation success. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_67
    const/4 v1, 0x0

    goto :goto_1b

    .line 183
    :cond_69
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Admin does not have permissions for this profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method public checkPersonaForProfile(ILjava/lang/String;)I
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p2, :cond_1c

    .line 215
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVPN : Profile null :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, -0x1

    .line 231
    :goto_1b
    return v1

    .line 218
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 219
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v1, 0x0

    .line 220
    .local v1, "returnValue":I
    if-nez v0, :cond_3d

    .line 221
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn persona check: Profile does not exist. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x1

    goto :goto_1b

    .line 223
    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPersonaId()I

    move-result v2

    if-ne p1, v2, :cond_5d

    .line 224
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: persona validation success. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    goto :goto_1b

    .line 227
    :cond_5d
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Persona does not belong to this profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->DBG:Z

    if-eqz v2, :cond_91

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Persona does not belong to this personaId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_91
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method public checkVendorForProfile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 190
    if-nez p2, :cond_38

    .line 191
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVPN : Profile or vendor null. profileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->DBG:Z

    if-eqz v2, :cond_36

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVPN : Profile or vendor null. vendor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_36
    const/4 v1, -0x1

    .line 210
    :goto_37
    return v1

    .line 196
    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    move-result-object v0

    .line 197
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    const/4 v1, 0x0

    .line 198
    .local v1, "returnValue":I
    if-nez v0, :cond_59

    .line 199
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile does not exist. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    goto :goto_37

    .line 201
    :cond_59
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "Knox_Framework"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 203
    :cond_6b
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile vendor validation success. profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    goto :goto_37

    .line 206
    :cond_85
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile does not belong to this vendor profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->DBG:Z

    if-eqz v2, :cond_b9

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxVpn: Profile does not belong to this vendor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_b9
    const/4 v1, -0x1

    goto/16 :goto_37
.end method

.method public containsProfileEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p1, :cond_4

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public declared-synchronized getContainerVpnProfile(I)Ljava/lang/String;
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 149
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 150
    .local v0, "containerVpnState":I
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    move-result-object v3

    .line 151
    .local v3, "profileName":Ljava/lang/String;
    if-ne v0, p1, :cond_b

    .line 155
    .end local v0    # "containerVpnState":I
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    :goto_21
    monitor-exit p0

    return-object v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_21

    .line 148
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_25
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getProfileCount()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getProfileEntries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_4

    .line 87
    :cond_3
    :goto_3
    return-object v0

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    goto :goto_3
.end method

.method public declared-synchronized getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 134
    monitor-enter p0

    if-nez p1, :cond_7

    move-object v3, v4

    .line 144
    :goto_5
    monitor-exit p0

    return-object v3

    .line 137
    :cond_7
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 138
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "profileName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2a

    move-result-object v1

    .line 140
    .local v1, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-eqz v1, :cond_11

    goto :goto_5

    .end local v1    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_28
    move-object v3, v4

    .line 144
    goto :goto_5

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getProfileNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 160
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "profileName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->getPackageEntryForUid(I)Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    move-result-object v1

    .line 162
    .local v1, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    if-eqz v1, :cond_b

    .line 166
    .end local v1    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnPackageInfo;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    :goto_21
    monitor-exit p0

    return-object v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_21

    .line 159
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_25
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getProfileNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removePackageFromProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 131
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 125
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;

    .line 127
    .local v0, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_5

    .line 122
    .end local v0    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    monitor-enter p0

    if-nez p1, :cond_6

    .line 111
    :cond_4
    :goto_4
    monitor-exit p0

    return-object v0

    .line 108
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnProfileInfo;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    goto :goto_4

    .line 105
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
