.class Lcom/android/server/WifiOffloadService$10;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .registers 2

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "back key timer resetting"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1640
    const/4 v0, 0x0

    # setter for: Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1302(Z)Z

    .line 1641
    const/4 v0, 0x1

    # setter for: Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1402(I)I

    .line 1642
    const/4 v0, -0x1

    # setter for: Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1502(I)I

    .line 1644
    return-void
.end method
