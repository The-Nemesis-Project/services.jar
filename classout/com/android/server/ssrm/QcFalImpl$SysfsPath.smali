.class public Lcom/android/server/ssrm/QcFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "QcFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/QcFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SysfsPath"
.end annotation


# instance fields
.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/QcFalImpl;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/QcFalImpl;Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V
    .registers 5
    .param p2, "mPlatformType"    # Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->this$0:Lcom/android/server/ssrm/QcFalImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 74
    iput v1, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 77
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl$1;->$SwitchMap$com$android$server$ssrm$QcFalImpl$PlatformType:[I

    invoke-virtual {p2}, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 89
    :goto_25
    return-void

    .line 81
    :pswitch_26
    const-string v0, "/sys/class/kgsl/kgsl-3d0/min_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 82
    const-string v0, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 83
    const-string v0, "/sys/class/kgsl/kgsl-3d0/gpu_available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 84
    const-string v0, "/sys/devices/system/cpu/kernel_max"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    goto :goto_25

    .line 77
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method
