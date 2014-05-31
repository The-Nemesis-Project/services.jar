.class public Lcom/android/server/display/WfdBridgeBase$BridgePeer;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BridgePeer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdBridgeBase::BridgePeer"


# instance fields
.field public mBusyFlag:I

.field public mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

.field private mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

.field private mSocReader:Ljava/io/BufferedReader;

.field private mSocWriter:Ljava/io/PrintWriter;

.field mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V
    .registers 8
    .param p2, "soc"    # Ljava/net/Socket;
    .param p3, "msgHandler"    # Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 116
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    .line 117
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Create BridgePeer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .line 120
    iput-object p2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    .line 123
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    .line 124
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_35} :catch_39

    .line 129
    :goto_35
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->start()V

    .line 130
    return-void

    .line 125
    :catch_39
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method


# virtual methods
.method public closeSocket()V
    .registers 4

    .prologue
    .line 141
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Close Socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    .line 148
    :goto_f
    return-void

    .line 145
    :catch_10
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public isSocConnected()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public run()V
    .registers 10

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "msg":Ljava/lang/String;
    const/16 v5, 0x100

    new-array v0, v5, [C

    .line 173
    .local v0, "buf":[C
    const/4 v4, 0x0

    .line 175
    .local v4, "readLen":I
    :goto_6
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v5, :cond_58

    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 177
    :try_start_12
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_48

    .line 178
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_4e

    .line 181
    .end local v2    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    :try_start_22
    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_39

    .line 182
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 184
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_39
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_60

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 188
    :cond_48
    const-wide/16 v5, 0xa

    :try_start_4a
    invoke-static {v5, v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_6

    .line 191
    :catch_4e
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    :goto_4f
    const-string v5, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_58
    const-string v5, "WfdBridgeBase::BridgePeer"

    const-string v6, "End of Peer"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 191
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_60
    move-exception v1

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_4f
.end method

.method public send(Ljava/lang/String;)I
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "WfdBridgeBase::BridgePeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public socketState()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 156
    :cond_c
    const/4 v0, 0x0

    .line 159
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method
