.class public final Lcom/android/server/ssrm/PreMonitor;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PreMonitor$SIOPTable;,
        Lcom/android/server/ssrm/PreMonitor$BrightnessController;
    }
.end annotation


# static fields
.field private static LOCAL_TEST:Z = false

.field private static final TAG:Ljava/lang/String; = "SSRMv2:PreMonitor"

.field private static mArmDVFSHelper:Landroid/os/DVFSHelper;

.field static mBatteryTemperature:I

.field static mBootComplete:Z

.field private static mContext:Landroid/content/Context;

.field private static mGpuDVFSHelper:Landroid/os/DVFSHelper;

.field private static mSiopEnabled:Z

.field private static mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    .line 32
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    .line 34
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    .line 71
    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    .line 73
    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    .line 130
    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    .line 145
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/DVFSHelper;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .registers 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 24
    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/DVFSHelper;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .registers 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 24
    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static getBatteryTemperature()I
    .registers 1

    .prologue
    .line 142
    sget v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public static getDuration()I
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v0, :cond_7

    .line 46
    const/16 v0, 0x7d0

    .line 48
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->duration:I

    goto :goto_6
.end method

.method public static getLastBatteryTemperature()I
    .registers 1

    .prologue
    .line 41
    sget v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public static isSiopEnabled()Z
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    return v0
.end method

.method static updateBatteryTemperature()V
    .registers 2

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    if-eqz v0, :cond_9

    .line 134
    const/16 v0, -0xc8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    .line 139
    :goto_8
    return-void

    .line 136
    :cond_9
    const-string v0, "SSRMv2:PreMonitor"

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    goto :goto_8
.end method


# virtual methods
.method bootComplete()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    .line 150
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    if-nez v0, :cond_8

    .line 189
    :goto_7
    return-void

    .line 154
    :cond_8
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 156
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PreMonitor$2;-><init>(Lcom/android/server/ssrm/PreMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method initialize(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0xbebc200

    const v2, 0x16da00

    const/16 v4, 0x82

    const/16 v6, 0x3c

    const/4 v5, 0x0

    .line 57
    sput-object p1, Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;

    .line 58
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-eqz v0, :cond_20

    .line 59
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x46

    const v2, 0x9eb10

    const/16 v3, 0xb1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    .line 69
    :cond_1f
    :goto_1f
    return-void

    .line 60
    :cond_20
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-eqz v0, :cond_2e

    .line 61
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x32

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_1f

    .line 62
    :cond_2e
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v0, :cond_3d

    .line 63
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v4, 0x28

    move v1, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_1f

    .line 64
    :cond_3d
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v0, :cond_45

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-eqz v0, :cond_53

    .line 65
    :cond_45
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const v2, 0x9eb10

    const/16 v3, 0xb1

    move v1, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_1f

    .line 66
    :cond_53
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-nez v0, :cond_5b

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v0, :cond_1f

    .line 67
    :cond_5b
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x28

    const/16 v4, 0x9b

    const/16 v6, 0x14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_1f
.end method

.method public run()V
    .registers 3

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v0, :cond_5

    .line 128
    :goto_4
    return-void

    .line 83
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PreMonitor$1;-><init>(Lcom/android/server/ssrm/PreMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method
