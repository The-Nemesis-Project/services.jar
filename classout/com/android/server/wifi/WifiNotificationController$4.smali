.class Lcom/android/server/wifi/WifiNotificationController$4;
.super Landroid/database/ContentObserver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 845
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$1000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 846
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkIfLowSignalFromProvider()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v0

    .line 848
    .local v0, "lowSignal":Z
    if-nez v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$1200(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 849
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$1302(Lcom/android/server/wifi/WifiNotificationController;J)J

    .line 850
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->access$1202(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 851
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 852
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$4;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiNotificationController;->access$1400(Lcom/android/server/wifi/WifiNotificationController;)I

    move-result v3

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$1500(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V

    .line 855
    .end local v0    # "lowSignal":Z
    :cond_43
    return-void
.end method
