.class Lcom/android/server/pm/Installer$AsyncCmd;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCmd"
.end annotation


# instance fields
.field private ackTime:J

.field private cmd:I

.field private cmdBuilder:Ljava/lang/StringBuilder;

.field private failCount:I

.field private replyTime:J

.field private startTime:J

.field private targetPkgStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;I)V
    .registers 5
    .param p2, "cmd"    # I

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p2, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    .line 462
    invoke-direct {p0, p2}, Lcom/android/server/pm/Installer$AsyncCmd;->convertCmdIntToStr(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "cmdStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    .line 464
    return-void
.end method

.method private convertCmdIntToStr(I)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # I

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 469
    const-string v0, "asyncDexopt"

    .line 471
    :cond_8
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/server/pm/Installer$AsyncCmd;"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "a":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    return-object p0
.end method

.method public appendPackage(Ljava/lang/String;)Lcom/android/server/pm/Installer$AsyncCmd;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    return-object p0
.end method

.method public checkAck(Lcom/android/server/pm/Installer$AsyncReply;)Z
    .registers 5
    .param p1, "reply"    # Lcom/android/server/pm/Installer$AsyncReply;

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncReply;->getCmd()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 493
    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer$AsyncReply;->getExtra(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 494
    const/4 v0, 0x1

    .line 497
    :cond_16
    return v0
.end method

.method public checkMatched(Lcom/android/server/pm/Installer$AsyncReply;)Z
    .registers 5
    .param p1, "reply"    # Lcom/android/server/pm/Installer$AsyncReply;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncReply;->getCmd()I

    move-result v2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer$AsyncReply;->getExtra(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 504
    const/4 v0, 0x1

    .line 506
    :cond_17
    return v0
.end method

.method public fail()V
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    .line 511
    return-void
.end method

.method public getFailCount()I
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    return v0
.end method

.method public recordAckTime()V
    .registers 1

    .prologue
    .line 527
    return-void
.end method

.method public recordReplyTime()V
    .registers 1

    .prologue
    .line 533
    return-void
.end method

.method public recordStartTime()V
    .registers 1

    .prologue
    .line 521
    return-void
.end method

.method public recordStatistics()V
    .registers 1

    .prologue
    .line 541
    return-void
.end method

.method public timesToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    const-string v0, "NO DEBUG BUILD"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
