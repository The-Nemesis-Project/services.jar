.class Lcom/android/server/DeviceManager3LMService$1;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 510
    const-string v0, "KDI"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 511
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService;->restoreDefaultApns()V

    .line 512
    :cond_f
    return-void
.end method
