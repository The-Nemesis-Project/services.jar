.class public Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsPath"
.end annotation


# instance fields
.field public BUS_MAX_DEFAULT_FREQUENCY:I

.field public BUS_MAX_PATH:Ljava/lang/String;

.field public BUS_MIN_DEFAULT_FREQUENCY:I

.field public BUS_MIN_PATH:Ljava/lang/String;

.field public BUS_TABLE_PATH:Ljava/lang/String;

.field public CPU_CORE_MAX_PATH:Ljava/lang/String;

.field public CPU_CORE_MIN_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public CPU_DEFAULT_CORE:I

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V
    .registers 6
    .param p1, "mChipVendor"    # Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    .param p2, "mPlatformType"    # Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 102
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 104
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 116
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 124
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 126
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 129
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$1;->$SwitchMap$com$android$server$ssrm$GenericFalImpl$PlatformType:[I

    invoke-virtual {p2}, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_152

    .line 228
    :goto_43
    return-void

    .line 131
    :pswitch_44
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 132
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 133
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 134
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 135
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 136
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 142
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 143
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 144
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 145
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 146
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 147
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_43

    .line 150
    :pswitch_79
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 151
    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 152
    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 153
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 154
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 156
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 160
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 161
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 162
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 163
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 164
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 165
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_43

    .line 168
    :pswitch_ae
    const-string v0, "/sys/power/gpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 172
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 173
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 174
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 176
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 177
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 178
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 179
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/cpucore_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 181
    const-string v0, "/sys/devices/system/cpu/busfreq/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 184
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 185
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_43

    .line 190
    :pswitch_e4
    const-string v0, "/sys/class/kgsl/kgsl-3d0/min_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 191
    const-string v0, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 192
    const-string v0, "/sys/class/kgsl/kgsl-3d0/gpu_available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 193
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 194
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 195
    const-string v0, "/sys/class/lcd/panel/fps_change"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 196
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 199
    const-string v0, "/sys/devices/system/cpu/kernel_max"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 200
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 205
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_43

    .line 208
    :pswitch_11b
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 210
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 211
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 212
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 214
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 217
    const-string v0, "/sys/devices/system/cpu/possible"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 218
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 221
    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 222
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 223
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_43

    .line 129
    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_44
        :pswitch_79
        :pswitch_ae
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_11b
    .end packed-switch
.end method
