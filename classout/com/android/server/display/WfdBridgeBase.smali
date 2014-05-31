.class public abstract Lcom/android/server/display/WfdBridgeBase;
.super Ljava/lang/Object;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WfdBridgeBase$1;,
        Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;,
        Lcom/android/server/display/WfdBridgeBase$WBPMsg;,
        Lcom/android/server/display/WfdBridgeBase$BridgePeer;,
        Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;,
        Lcom/android/server/display/WfdBridgeBase$BridgeListner;
    }
.end annotation


# static fields
.field public static final REQ_DEV_SINK:I = 0x1

.field public static final REQ_DEV_SOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WfdBridgeBase"


# instance fields
.field protected final mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

.field protected mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

.field protected mSession:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .registers 3
    .param p1, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v0, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;-><init>(Lcom/android/server/display/WfdBridgeBase;)V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 82
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .line 83
    return-void
.end method

.method public static getInstance(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)Lcom/android/server/display/WfdBridgeBase;
    .registers 4
    .param p0, "inet"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "base":Lcom/android/server/display/WfdBridgeBase;
    if-nez p0, :cond_9

    .line 46
    new-instance v0, Lcom/android/server/display/WfdBridgeServer;

    .end local v0    # "base":Lcom/android/server/display/WfdBridgeBase;
    invoke-direct {v0, p1, p2}, Lcom/android/server/display/WfdBridgeServer;-><init>(ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .line 51
    .restart local v0    # "base":Lcom/android/server/display/WfdBridgeBase;
    :goto_8
    return-object v0

    .line 48
    :cond_9
    new-instance v0, Lcom/android/server/display/WfdBridgeClient;

    .end local v0    # "base":Lcom/android/server/display/WfdBridgeBase;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/WfdBridgeClient;-><init>(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .restart local v0    # "base":Lcom/android/server/display/WfdBridgeBase;
    goto :goto_8
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getAddr()Ljava/net/InetAddress;
.end method

.method public abstract getConnectAddrList()[Ljava/net/InetAddress;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract request(II)V
.end method

.method public abstract sendBusyflag(I)V
.end method

.method public abstract sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
.end method
