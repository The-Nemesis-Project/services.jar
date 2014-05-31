.class public Lcom/android/server/display/WfdBridgeServer;
.super Lcom/android/server/display/WfdBridgeBase;
.source "WfdBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdBridgeServer"


# instance fields
.field private mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$BridgePeer;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/android/server/display/WfdBridgeBase;-><init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 36
    const-string v0, "WfdBridgeServer"

    const-string v1, "Created WFDBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput p1, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 46
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->start()V

    .line 49
    return-void
.end method

.method public disconnect()V
    .registers 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->destroy()V

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 125
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 129
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 132
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_30

    .line 138
    :goto_2c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 139
    return-void

    .line 134
    :catch_30
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WfdBridgeServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public getAddr()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 117
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getConnectAddrList()[Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 101
    const/4 v0, 0x0

    .line 108
    :cond_7
    return-object v0

    .line 104
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 105
    .local v0, "addrlist":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 106
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 54
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 55
    const/4 v1, 0x1

    .line 59
    :goto_18
    return v1

    .line 53
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public request(II)V
    .registers 11
    .param p1, "dev"    # I
    .param p2, "type"    # I

    .prologue
    .line 64
    const-string v3, ""

    .line 66
    .local v3, "reqMsg":Ljava/lang/String;
    packed-switch p2, :pswitch_data_6a

    .line 80
    :goto_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Sink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_23
    :goto_23
    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3e8

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 87
    return-void

    .line 68
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RVF"

    .line 69
    goto :goto_5

    .line 72
    :pswitch_41
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "MirrorMouse"

    .line 73
    goto :goto_5

    .line 76
    :pswitch_46
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "ScreenMirroring"

    goto :goto_5

    .line 82
    :cond_4b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 66
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_41
        :pswitch_46
    .end packed-switch
.end method

.method public run()V
    .registers 6

    .prologue
    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 164
    :try_start_3
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 166
    :goto_c
    iget-boolean v3, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    if-eqz v3, :cond_38

    .line 167
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 168
    .local v2, "socket":Ljava/net/Socket;
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;-><init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V

    .line 169
    .local v0, "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 170
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onBridgeConnected()I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2d} :catch_2e

    goto :goto_c

    .line 174
    .end local v0    # "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_2e
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "WfdBridgeServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "e":Ljava/io/IOException;
    :cond_38
    const-string v3, "WfdBridgeServer"

    const-string v4, "End of WfdBridgeServer"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public sendBusyflag(I)V
    .registers 10
    .param p1, "flag"    # I

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 92
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v0, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v0, :cond_32

    .line 93
    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 96
    :cond_32
    return-void
.end method

.method public sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .registers 7
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_33

    .line 146
    :cond_2a
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 156
    :goto_32
    return v0

    .line 150
    :cond_33
    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_43

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_4c

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 151
    :cond_43
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 152
    goto :goto_32

    .line 155
    :cond_4c
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    goto :goto_32
.end method
