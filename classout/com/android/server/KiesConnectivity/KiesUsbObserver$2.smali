.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;
.super Landroid/os/UEventObserver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 185
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "state":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->getUsbMode()I
    invoke-static {v3}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)I

    move-result v1

    .line 189
    .local v1, "usbMode":I
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCDFSEventObjserver -> state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", usbMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "time stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 192
    const/16 v2, 0x1388

    .line 193
    .local v2, "usbState":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 206
    .end local v2    # "usbState":I
    :cond_3f
    :goto_3f
    return-void

    .line 194
    :cond_40
    const-string v3, "time reset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 195
    const/16 v2, 0x1770

    .line 196
    .restart local v2    # "usbState":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    goto :goto_3f

    .line 197
    .end local v2    # "usbState":I
    :cond_50
    const-string v3, "Load AT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 198
    const/16 v2, 0x1b58

    .line 199
    .restart local v2    # "usbState":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 200
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB message -Load AT"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 201
    .end local v2    # "usbState":I
    :cond_69
    const-string v3, "Load User"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 202
    const/16 v2, 0x1f40

    .line 203
    .restart local v2    # "usbState":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 204
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB message -Load User"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
