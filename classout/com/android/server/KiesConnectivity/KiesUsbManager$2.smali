.class Lcom/android/server/KiesConnectivity/KiesUsbManager$2;
.super Ljava/util/TimerTask;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 229
    const-string v0, "KiesUsbManager"

    const-string v1, "setUsbCurrentSettingMode -> modechange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 231
    return-void
.end method