.class Lcom/android/server/ssrm/EmergencyMode;
.super Ljava/lang/Object;
.source "EmergencyMode.java"


# static fields
.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String;


# instance fields
.field EmergencyMode:Z

.field mContext:Landroid/content/Context;

.field mCpuFreqTable:[I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "SSRMv2:EmergencyMode"

    sput-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/EmergencyMode;->EmergencyMode:Z

    .line 72
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$1;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_EMERGENCY_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuFreqTable:[I

    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuFreqTable:[I

    if-eqz v0, :cond_3f

    .line 56
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_43

    .line 57
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const v3, 0x135600

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 69
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/ssrm/EmergencyMode;->onSettingChanged()V

    .line 70
    return-void

    .line 59
    :cond_43
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-eqz v0, :cond_3f

    .line 60
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_3f
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .registers 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v3, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeCommand:: cmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 118
    .local v2, "runtime":Ljava/lang/Runtime;
    :try_start_1c
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 119
    .local v1, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_35

    move-result-object v3

    if-nez v3, :cond_2e

    .line 124
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "process":Ljava/lang/Process;
    :goto_34
    return-void

    .line 122
    :catch_35
    move-exception v3

    goto :goto_34
.end method


# virtual methods
.method onSettingChanged()V
    .registers 6

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 81
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 82
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v2, :cond_31

    .line 83
    const-string/jumbo v2, "stop mpdecision"

    invoke-static {v2}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v3, "/sys/devices/system/cpu/cpu1/online"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v2, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v3, "/sys/devices/system/cpu/cpu2/online"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v2, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v3, "/sys/devices/system/cpu/cpu3/online"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_31
    const-string/jumbo v2, "sys.siop.longlife"

    const-string v3, "minlock_disable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "SSRM_STATUS_NAME"

    const-string v3, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "SSRM_STATUS_VALUE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 96
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 111
    :goto_5c
    return-void

    .line 98
    .end local v0    # "boostIntent":Landroid/content/Intent;
    :cond_5d
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v2, :cond_67

    .line 99
    const-string/jumbo v2, "start mpdecision"

    invoke-static {v2}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 101
    :cond_67
    const-string/jumbo v2, "sys.siop.longlife"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v0    # "boostIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "SSRM_STATUS_NAME"

    const-string v3, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v2, "SSRM_STATUS_VALUE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_5c
.end method
