.class public Lcom/android/server/display/WfdBridgeClient;
.super Lcom/android/server/display/WfdBridgeBase;
.source "WfdBridgeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final CONNECT_TYPE_CONNECTED:I = 0x1

.field public static final CONNECT_TYPE_CONNECTING:I = 0x1

.field public static final CONNECT_TYPE_INITIALIZED:I = -0x1

.field public static final CONNECT_TYPE_NOT_CONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WfdBridgeClient"


# instance fields
.field private mBridgeConnType:I

.field private mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

.field private mInetAddr:Ljava/net/InetAddress;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .registers 7
    .param p1, "inet"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p3}, Lcom/android/server/display/WfdBridgeBase;-><init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .line 35
    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    .line 36
    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    .line 50
    const-string v0, "WfdBridgeClient"

    const-string v1, "Created WFDBridgeClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput p2, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    .line 52
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    .line 53
    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 54
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 59
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->start()V

    .line 61
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->destroy()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 67
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 69
    :cond_10
    return-void
.end method

.method public getConnectAddrList()[Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 120
    const/4 v0, 0x0

    .line 125
    :goto_7
    return-object v0

    .line 123
    :cond_8
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/net/InetAddress;

    .line 124
    .local v0, "addrlist":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_7
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v0

    .line 81
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public request(II)V
    .registers 11
    .param p1, "dev"    # I
    .param p2, "type"    # I

    .prologue
    .line 86
    const-string v3, ""

    .line 88
    .local v3, "reqMsg":Ljava/lang/String;
    packed-switch p2, :pswitch_data_64

    .line 102
    :goto_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_44

    .line 103
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

    .line 108
    :cond_23
    :goto_23
    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 109
    return-void

    .line 90
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RVF"

    .line 91
    goto :goto_5

    .line 94
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "MirrorMouse"

    .line 95
    goto :goto_5

    .line 98
    :pswitch_3f
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RemoteTouch"

    goto :goto_5

    .line 104
    :cond_44
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 105
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

    .line 88
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 132
    const/16 v0, 0x19

    .local v0, "connCount":I
    :goto_4
    if-lez v0, :cond_83

    iget v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    if-eq v2, v6, :cond_83

    .line 134
    :try_start_a
    const-string v2, "WfdBridgeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to connect server : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    .line 136
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mInetAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/WfdBridgeClient;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 138
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 139
    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect to server Success!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    .line 132
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 142
    :cond_58
    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect Fail to server"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_62} :catch_63

    goto :goto_55

    .line 146
    :catch_63
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WfdBridgeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch Exception: Connect Fail to server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput v7, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    goto :goto_55

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_83
    iget v2, p0, Lcom/android/server/display/WfdBridgeClient;->mBridgeConnType:I

    if-eq v2, v6, :cond_8f

    .line 153
    const-string v2, "WfdBridgeClient"

    const-string v3, "Connect Fail to server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_8e
    return-void

    .line 157
    :cond_8f
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v2}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onBridgeConnected()I

    .line 158
    new-instance v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeClient;->mSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;-><init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    goto :goto_8e
.end method

.method public sendBusyflag(I)V
    .registers 10
    .param p1, "flag"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v0, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v0, :cond_1e

    .line 114
    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeClient;->mClientPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 115
    :cond_1e
    return-void
.end method

.method public sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .registers 4
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 73
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
