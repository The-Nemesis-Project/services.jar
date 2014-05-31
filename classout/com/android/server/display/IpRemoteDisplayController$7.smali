.class Lcom/android/server/display/IpRemoteDisplayController$7;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V
    .registers 4

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$deviceType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, "mUri":Landroid/net/Uri;
    const/16 v2, 0x1c44

    .line 442
    .local v2, "mCtrlPort":I
    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$addr:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "SourceAddress":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 445
    const-string v5, "IpRemoteDisplayController"

    const-string v6, "Failed to launch WfdPlayer, addr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "SourceAddress":Ljava/lang/String;
    :goto_12
    return-void

    .line 449
    .restart local v0    # "SourceAddress":Ljava/lang/String;
    :cond_13
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v4, "tempIntent":Landroid/content/Intent;
    const-string v5, "com.sec.allsharecastplayer"

    const-string v6, "com.sec.allsharecastplayer.WfdPlayer"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const/high16 v5, 0x30800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wfd://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 456
    const-string v5, "IpRemoteDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 458
    const-string v5, "launchMode"

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$deviceType:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_71} :catch_72

    goto :goto_12

    .line 461
    .end local v0    # "SourceAddress":Ljava/lang/String;
    .end local v4    # "tempIntent":Landroid/content/Intent;
    :catch_72
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "IpRemoteDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to launch WfdPlayer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
