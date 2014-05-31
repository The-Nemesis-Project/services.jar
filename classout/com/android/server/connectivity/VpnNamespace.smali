.class final Lcom/android/server/connectivity/VpnNamespace;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnNamespace$1;,
        Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;,
        Lcom/android/server/connectivity/VpnNamespace$Cmd;,
        Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VPNNS_SVR_ADDR:Ljava/lang/String; = "mvpvpn-ns"


# instance fields
.field private nsIfIdx:Ljava/lang/Integer;

.field private nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

.field private nsPid:I

.field private nsVmId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 654
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/VpnNamespace;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized checkIf(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    const/4 v1, -0x1

    .line 100
    .local v1, "idx":I
    :try_start_2
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 102
    .local v0, "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    .line 104
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_25

    move-result v2

    monitor-exit p0

    return v2

    .line 98
    .end local v0    # "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .registers 13
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    .param p2, "idx"    # I
    .param p3, "cfg"    # Lcom/android/internal/net/VpnConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v6, :cond_c

    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 115
    :cond_c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "at least one network address must be provided for the tunnel"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    :cond_14
    const/4 v1, 0x0

    .line 120
    .local v1, "count":I
    iget-object v6, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 126
    .local v4, "lAddr":Landroid/net/LinkAddress;
    :try_start_27
    invoke-static {p2, v4}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromLinkAddress(ILandroid/net/LinkAddress;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    .line 127
    .local v0, "a":Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    sget-object v6, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v6, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_36} :catch_56

    move-result v5

    .line 129
    .local v5, "res":I
    if-nez v5, :cond_1b

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 132
    .end local v0    # "a":Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    .end local v5    # "res":I
    :catch_3c
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O error: couldn\'t set interface address to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed address string "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 138
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "lAddr":Landroid/net/LinkAddress;
    :cond_7a
    if-gtz v1, :cond_9e

    .line 139
    sget-object v6, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could set none of the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v6, Ljava/io/IOException;

    const-string v7, "none of the proveded network addresses could be set"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_9e
    return-void
.end method

.method private setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .registers 12
    .param p1, "cmd"    # Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    .param p2, "idx"    # I
    .param p3, "cfg"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 151
    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v5, :cond_c

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 152
    :cond_c
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v6, "no routes configured"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_13
    return-void

    .line 156
    :cond_14
    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 162
    .local v4, "route":Landroid/net/RouteInfo;
    :try_start_26
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v3

    .line 163
    .local v3, "lAddr":Landroid/net/LinkAddress;
    if-eqz v3, :cond_1a

    .line 164
    invoke-static {p2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromLinkAddress(ILandroid/net/LinkAddress;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    .line 165
    .local v0, "a":Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_3b} :catch_56

    goto :goto_1a

    .line 167
    .end local v0    # "a":Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    .end local v3    # "lAddr":Landroid/net/LinkAddress;
    :catch_3c
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O error: couldn\'t set route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed route address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method


# virtual methods
.method declared-synchronized close()V
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->quit()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 84
    :cond_d
    monitor-exit p0

    return-void

    .line 80
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 58
    .local v0, "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    .line 62
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    .line 64
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/connectivity/VpnNamespace;->setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    .line 65
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/connectivity/VpnNamespace;->setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    .line 67
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    .line 68
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-nez v1, :cond_49

    .line 69
    new-instance v1, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    .line 70
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->start()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_4f

    .line 74
    :goto_47
    monitor-exit p0

    return-void

    .line 72
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->restart()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_47

    .line 56
    .end local v0    # "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeInterface()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 88
    .local v0, "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;I)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was removed from ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 91
    monitor-exit p0

    return-void

    .line 87
    .end local v0    # "cmd":Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method
