.class Lcom/android/server/PVPlayReadyService$2;
.super Ljava/lang/Object;
.source "PVPlayReadyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PVPlayReadyService;->handleNitzTimeUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PVPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/PVPlayReadyService;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/PVPlayReadyService$2;->this$0:Lcom/android/server/PVPlayReadyService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 222
    const-string v4, "gsm.nitz.time"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long v0, v4, v8

    .line 223
    .local v0, "nitzTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v8

    .line 224
    .local v2, "recvElapsedTime":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_27

    cmp-long v4, v2, v6

    if-lez v4, :cond_27

    .line 226
    # invokes: Lcom/android/server/PVPlayReadyService;->nitzReceived(JJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PVPlayReadyService;->access$000(JJ)V

    .line 228
    :cond_27
    return-void
.end method
