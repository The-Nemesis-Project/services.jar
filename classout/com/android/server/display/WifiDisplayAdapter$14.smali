.class Lcom/android/server/display/WifiDisplayAdapter$14;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 4

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 971
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onFinish / requestEnableSourceLocked is just called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->val$type:I

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestEnableSourceLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 973
    return-void
.end method
