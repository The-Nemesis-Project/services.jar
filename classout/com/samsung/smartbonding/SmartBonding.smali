.class public Lcom/samsung/smartbonding/SmartBonding;
.super Ljava/lang/Object;
.source "SmartBonding.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartBonding"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpLogEnabled()Z
    .registers 3

    .prologue
    .line 158
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 160
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1}, Lcom/samsung/smartbonding/ISmartBondingService;->getHttpLogEnabled()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 162
    :goto_e
    return v2

    .line 161
    :catch_f
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getProxyInfo(I)[Ljava/lang/String;
    .registers 6
    .param p0, "netType"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    :try_start_1
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 61
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0}, Lcom/samsung/smartbonding/ISmartBondingService;->getProxyInfo(I)[Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v2

    .line 63
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_f
    return-object v2

    .line 62
    :catch_10
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    goto :goto_f
.end method

.method public static getSBEnabled()Z
    .registers 3

    .prologue
    .line 29
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 31
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1}, Lcom/samsung/smartbonding/ISmartBondingService;->getSBEnabled()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 33
    :goto_e
    return v2

    .line 32
    :catch_f
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getSBInterfaceEx(II)Ljava/lang/String;
    .registers 5
    .param p0, "netType"    # I
    .param p1, "preferIpType"    # I

    .prologue
    .line 39
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 41
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1}, Lcom/samsung/smartbonding/ISmartBondingService;->getSBInterfaceEx(II)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    .line 43
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_e
    return-object v2

    .line 42
    :catch_f
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getSBInterfaces()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 49
    :try_start_1
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 51
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1}, Lcom/samsung/smartbonding/ISmartBondingService;->getSBInterfaces()[Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v2

    .line 53
    :goto_f
    return-object v2

    .line 52
    :catch_10
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    goto :goto_f
.end method

.method public static getSBUsageStatus(J)I
    .registers 5
    .param p0, "threadID"    # J

    .prologue
    .line 129
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 131
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1}, Lcom/samsung/smartbonding/ISmartBondingService;->getSBUsageStatus(J)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 133
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_e
    return v2

    .line 132
    :catch_f
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getSmartBondingData(I)[J
    .registers 4
    .param p0, "pid"    # I

    .prologue
    .line 79
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 81
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0}, Lcom/samsung/smartbonding/ISmartBondingService;->getSmartBondingData(I)[J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    .line 83
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_e
    return-object v2

    .line 82
    :catch_f
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static reportSBUsage(J[J)V
    .registers 6
    .param p0, "threadID"    # J
    .param p2, "data"    # [J

    .prologue
    .line 119
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 121
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/smartbonding/ISmartBondingService;->reportSBUsage(J[J)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 125
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_d
    return-void

    .line 122
    :catch_e
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_d
.end method

.method public static requestGetAllByName(JLjava/lang/String;)V
    .registers 6
    .param p0, "threadID"    # J
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 141
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/smartbonding/ISmartBondingService;->requestGetAllByName(JLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 145
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_d
    return-void

    .line 142
    :catch_e
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_d
.end method

.method public static responseGetAllByName(J)[Ljava/lang/String;
    .registers 7
    .param p0, "threadID"    # J

    .prologue
    const/4 v4, 0x0

    .line 149
    :try_start_1
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 151
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1}, Lcom/samsung/smartbonding/ISmartBondingService;->responseGetAllByName(J)[Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v2

    .line 153
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_f
    return-object v2

    .line 152
    :catch_10
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    goto :goto_f
.end method

.method public static startSBUsage(JJJLjava/lang/String;)Z
    .registers 16
    .param p0, "threadID"    # J
    .param p2, "fileSize"    # J
    .param p4, "startRange"    # J
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    const-string v1, "sb_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v0

    .local v0, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .line 91
    invoke-interface/range {v0 .. v7}, Lcom/samsung/smartbonding/ISmartBondingService;->startSBUsage(JJJLjava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result v1

    .line 93
    .end local v0    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_12
    return v1

    .line 92
    :catch_13
    move-exception v8

    .line 93
    .local v8, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static stopSBUsage(J)I
    .registers 5
    .param p0, "threadID"    # J

    .prologue
    .line 99
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 101
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1}, Lcom/samsung/smartbonding/ISmartBondingService;->stopSBUsage(J)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 103
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_e
    return v2

    .line 102
    :catch_f
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static stopSBUsageWithReason(JI)I
    .registers 6
    .param p0, "threadID"    # J
    .param p2, "errorNo"    # I

    .prologue
    .line 109
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 111
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/smartbonding/ISmartBondingService;->stopSBUsageWithReason(JI)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 113
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_e
    return v2

    .line 112
    :catch_f
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static submitMultiSocketData([J[J)V
    .registers 5
    .param p0, "lens"    # [J
    .param p1, "times"    # [J

    .prologue
    .line 69
    :try_start_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    .line 71
    .local v1, "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    invoke-interface {v1, p0, p1}, Lcom/samsung/smartbonding/ISmartBondingService;->submitMultiSocketData([J[J)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 75
    .end local v1    # "sbService":Lcom/samsung/smartbonding/ISmartBondingService;
    :goto_d
    return-void

    .line 72
    :catch_e
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_d
.end method
