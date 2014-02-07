.class Lcom/android/server/sec/InternalClipboardExService$2;
.super Ljava/lang/Object;
.source "InternalClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/InternalClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V
    .registers 4

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$2;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService$2;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/InternalClipboardExService$2;->val$format:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    :try_start_1
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ClipboardServiceEx"

    const-string v1, "----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_c
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "ClipboardServiceEx"

    const-string v1, "in synchronized"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_17
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$2;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_1d

    .line 547
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 548
    return-void

    .line 544
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$2;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService$2;->val$format:I

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$2;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    # invokes: Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {v0, v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_1b

    .line 547
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method
