.class Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
.super Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLock"
.end annotation


# instance fields
.field acqTime:J

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 10
    .param p2, "ty"    # I
    .param p3, "fq"    # I
    .param p4, "b"    # Landroid/os/IBinder;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "u"    # I
    .param p7, "p"    # I

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1600
    invoke-direct/range {p0 .. p7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1601
    iput-object p5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    .line 1602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    .line 1603
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .prologue
    .line 1607
    invoke-super {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    .line 1608
    return-void
.end method
