.class Lcom/android/server/display/WifiDisplayAdapter$16;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->launchWfdPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 3

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$16;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$16;->val$deviceType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1096
    const/4 v3, 0x0

    .line 1097
    .local v3, "mUri":Landroid/net/Uri;
    const/16 v2, 0x1c44

    .line 1098
    .local v2, "mCtrlPort":I
    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$16;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->getConnAddr()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "SourceAddress":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 1101
    const-string v5, "WifiDisplayAdapter"

    const-string v6, "startSourceRTSP Fail, addr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v0    # "SourceAddress":Ljava/lang/String;
    :goto_1a
    return-void

    .line 1105
    .restart local v0    # "SourceAddress":Ljava/lang/String;
    :cond_1b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v4, "tempIntent":Landroid/content/Intent;
    const-string v5, "com.sec.allsharecastplayer"

    const-string v6, "com.sec.allsharecastplayer.WfdPlayer"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const/high16 v5, 0x30800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd://"

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

    .line 1112
    const-string v5, "WifiDisplayAdapter"

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

    .line 1113
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1114
    const-string v5, "launchMode"

    iget v6, p0, Lcom/android/server/display/WifiDisplayAdapter$16;->val$deviceType:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1115
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$16;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_79

    goto :goto_1a

    .line 1117
    .end local v0    # "SourceAddress":Ljava/lang/String;
    .end local v4    # "tempIntent":Landroid/content/Intent;
    :catch_79
    move-exception v1

    .line 1118
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "WifiDisplayAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startSourceRTSP failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
