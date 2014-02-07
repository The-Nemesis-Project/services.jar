.class Lcom/android/server/display/WifiDisplayAdapter$17;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$reqDevType:I

.field final synthetic val$sinkdevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ILandroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$reqDevType:I

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$sinkdevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wfd"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 1150
    .local v1, "wm":Lcom/samsung/wfd/WfdManager;
    if-eqz v1, :cond_22

    .line 1151
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$reqDevType:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabled(I)Z

    .line 1153
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->sendToWfdStartRTSP()Z

    .line 1168
    .end local v1    # "wm":Lcom/samsung/wfd/WfdManager;
    :goto_21
    return-void

    .line 1155
    .restart local v1    # "wm":Lcom/samsung/wfd/WfdManager;
    :cond_22
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "WfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_21

    .line 1164
    .end local v1    # "wm":Lcom/samsung/wfd/WfdManager;
    :catch_2a
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "startSourceRTSP failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
