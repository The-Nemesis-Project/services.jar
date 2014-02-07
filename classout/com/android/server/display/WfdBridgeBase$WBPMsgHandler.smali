.class public Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WBPMsgHandler"
.end annotation


# static fields
.field public static final STR_AllShareCast:Ljava/lang/String; = "AllShareCast"

.field public static final STR_CRLF:Ljava/lang/String; = "\r\n"

.field public static final STR_MirrorMouse:Ljava/lang/String; = "MirrorMouse"

.field public static final STR_RVF:Ljava/lang/String; = "RVF"

.field public static final STR_RemoteTouch:Ljava/lang/String; = "RemoteTouch"

.field public static final STR_Sink:Ljava/lang/String; = "Sink"

.field public static final STR_Source:Ljava/lang/String; = "Source"

.field private static final TAG:Ljava/lang/String; = "WBPMsgHandler"


# instance fields
.field private mMsgList:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$WBPMsg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;)V
    .registers 3

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 281
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 282
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 283
    return-void
.end method

.method private parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x0

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 451
    .local v2, "parcel":Landroid/os/Parcel;
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 452
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 453
    const-class v3, Lcom/android/server/display/CmdInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/CmdInfo;

    .line 455
    .local v1, "ci":Lcom/android/server/display/CmdInfo;
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmdType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/CmdInfo$CmdType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v3, Lcom/android/server/display/WfdBridgeBase$1;->$SwitchMap$com$android$server$display$CmdInfo$CmdType:[I

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/CmdInfo$CmdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_98

    .line 473
    const-string v3, "WBPMsgHandler"

    const-string v4, "Wrong Cmd Type is accepted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_59
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 479
    return-void

    .line 459
    :pswitch_5d
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(II)V

    goto :goto_59

    .line 463
    :pswitch_6a
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(II)V

    goto :goto_59

    .line 467
    :pswitch_77
    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v0

    .line 468
    .local v0, "busyFlag":I
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected mBusyFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput v0, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    goto :goto_59

    .line 457
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_6a
        :pswitch_77
    .end packed-switch
.end method

.method private parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 4
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 347
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    .line 355
    :goto_c
    return-void

    .line 350
    :cond_d
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v1, "WBP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_c

    .line 353
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_c
.end method

.method private parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .registers 10
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x1

    .line 358
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v7, " \n\r,"

    invoke-direct {v2, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "token":Ljava/lang/String;
    const-string v6, "GET_PARAMETER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    .line 404
    :goto_19
    return v5

    .line 365
    :cond_1a
    const-string v6, "TRIGGER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 367
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onGetStatus()I

    move-result v1

    .line 369
    .local v1, "deviceStatus":I
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_4a

    .line 370
    const/4 v0, -0x1

    .line 371
    .local v0, "dev":I
    const/4 v4, -0x1

    .line 373
    .local v4, "type":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string v6, "RVF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 378
    const/4 v4, 0x0

    .line 386
    :cond_3d
    :goto_3d
    const-string v6, "Sink"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 387
    const/4 v0, 0x1

    .line 392
    :goto_46
    if-gez v4, :cond_64

    .line 393
    const/16 v1, 0x12f

    .line 400
    .end local v0    # "dev":I
    .end local v4    # "type":I
    :cond_4a
    :goto_4a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V

    goto :goto_19

    .line 379
    .restart local v0    # "dev":I
    .restart local v4    # "type":I
    :cond_4e
    const-string v6, "MirrorMouse"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 380
    const/4 v4, 0x2

    goto :goto_3d

    .line 381
    :cond_58
    const-string v6, "RemoteTouch"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 382
    const/4 v4, 0x1

    goto :goto_3d

    .line 389
    :cond_62
    const/4 v0, 0x2

    goto :goto_46

    .line 395
    :cond_64
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v6, v0, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(II)V

    goto :goto_4a

    .line 404
    .end local v0    # "dev":I
    .end local v1    # "deviceStatus":I
    .end local v4    # "type":I
    :cond_6c
    const/4 v5, 0x0

    goto :goto_19
.end method

.method private parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .registers 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 408
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v4, " \n\r,"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 414
    .local v0, "errorCode":I
    const-string v3, "WBP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 415
    const/4 v3, 0x0

    .line 443
    :goto_17
    return v3

    .line 417
    :cond_18
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WBP version= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 419
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WBP error code= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 422
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WBP error msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9e

    .line 425
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 426
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 427
    const-string v3, "supported:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 428
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v4, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v4, v5}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;)V

    iput-object v4, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 429
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->parseSupportedType(Ljava/util/StringTokenizer;)V

    .line 438
    :cond_94
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK()V

    .line 443
    :goto_9b
    const/4 v3, 0x1

    goto/16 :goto_17

    .line 440
    :cond_9e
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3, v0}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    goto :goto_9b
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 342
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 343
    return-void
.end method

.method public getSupportedDevList()Ljava/lang/String;
    .registers 2

    .prologue
    .line 526
    const-string v0, "AllShareCast/Source/Sink, RVF/Source/Sink"

    return-object v0
.end method

.method public putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .registers 5
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    .line 508
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 503
    :catch_7
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public run()V
    .registers 6

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 290
    .local v2, "msg":Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-boolean v3, v3, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_1c

    .line 292
    :try_start_b
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 293
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_19} :catch_34

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27

    .line 336
    :cond_1c
    :goto_1c
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 337
    const-string v3, "WBPMsgHandler"

    const-string v4, "End of WBPMsgHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 297
    :cond_27
    :try_start_27
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    sparse-switch v3, :sswitch_data_76

    .line 324
    const-string v3, "WBPMsgHandler"

    const-string v4, "WBPMsg Parse Error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_1

    .line 330
    :catch_34
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 299
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_3f
    :try_start_3f
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_1

    .line 304
    :sswitch_4a
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED_LEGACY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_1

    .line 309
    :sswitch_55
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_M1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_1

    .line 314
    :sswitch_60
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_WBP_TRIGGER"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_1

    .line 319
    :sswitch_6b
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_BUSYFLAG"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_75} :catch_34

    goto :goto_1

    .line 297
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_3f
        0x1 -> :sswitch_4a
        0x2 -> :sswitch_55
        0x3e8 -> :sswitch_60
        0x3ed -> :sswitch_6b
    .end sparse-switch
.end method

.method public send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 4
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 516
    const-string v0, "GET_PARAMETER WBP/1.0\r\nsupported\r\n\r\n"

    .line 520
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method public send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 5
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WBP/1.0 200 OK\r\nsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->getSupportedDevList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 536
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v1, :cond_34

    .line 537
    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 539
    :cond_34
    return-void
.end method

.method public send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 543
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v3, :cond_59

    .line 544
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 545
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/16 v4, 0x12d

    invoke-interface {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    .line 589
    :goto_16
    return-void

    .line 548
    :cond_17
    :try_start_17
    const-string v3, "WBPMsgHandler"

    const-string v4, "sendCmd for trigger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 550
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Lcom/android/server/display/CmdInfo;

    iget v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mDev:I

    iget v5, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/CmdInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 551
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_4e

    .line 557
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_3f
    const-string v3, "WBPMsgHandler"

    const-string v4, "Force OK, launch Peding dev"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK()V

    goto :goto_16

    .line 553
    :catch_4e
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TRIGGER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WBP/1.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    goto :goto_16
.end method

.method public send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V
    .registers 6
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    .param p2, "returnType"    # I

    .prologue
    .line 592
    const-string v0, "WBP/1.0"

    .line 594
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_6e

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 UNKNOWN\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_18
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 617
    return-void

    .line 596
    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 200 OK\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    goto :goto_18

    .line 600
    :sswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 301 SCREEN_OFF\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    goto :goto_18

    .line 604
    :sswitch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 302 ENGINE_RUNNING\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    goto :goto_18

    .line 608
    :sswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 303 DO_NOT_SUPPORT\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    goto :goto_18

    .line 594
    :sswitch_data_6e
    .sparse-switch
        0xc8 -> :sswitch_1e
        0x12d -> :sswitch_32
        0x12e -> :sswitch_46
        0x12f -> :sswitch_5a
    .end sparse-switch
.end method

.method public send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .registers 6
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 482
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v1, :cond_2e

    .line 483
    const-string v1, "WBPMsgHandler"

    const-string v2, "sendCmd for trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 485
    .local v0, "parcel":Landroid/os/Parcel;
    new-instance v1, Lcom/android/server/display/CmdInfo;

    sget-object v2, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 486
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_2e
    return-void
.end method

.method public triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I
    .registers 5
    .param p1, "msgType"    # I
    .param p2, "to"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 512
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-result v0

    return v0
.end method
