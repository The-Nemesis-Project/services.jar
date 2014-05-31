.class final Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSettingsStore"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 55
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 57
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    .line 59
    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private getPersistedWifiState()I
    .registers 6

    .prologue
    .line 210
    iget-object v3, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_6
    const-string/jumbo v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_c} :catch_e

    move-result v2

    .line 217
    :goto_d
    return v2

    .line 213
    :catch_e
    move-exception v1

    .line 214
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiSettingsStore"

    const-string v4, "SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "state":I
    const-string/jumbo v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private persistWifiState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 170
    const-string/jumbo v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget-object v4, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 200
    .local v1, "wifiSavedState":I
    :try_start_9
    const-string/jumbo v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 201
    if-ne v1, v2, :cond_19

    .line 202
    const-string/jumbo v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_19} :catch_1e

    .line 206
    :cond_19
    :goto_19
    if-ne v1, v2, :cond_1c

    :goto_1b
    return v2

    :cond_1c
    move v2, v3

    goto :goto_1b

    .line 203
    :catch_1e
    move-exception v4

    goto :goto_19
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAirplaneModeOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method declared-synchronized handleAirplaneModeToggled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 110
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v1

    if-nez v1, :cond_b

    .line 111
    const/4 v0, 0x0

    .line 127
    :cond_9
    :goto_9
    monitor-exit p0

    return v0

    .line 114
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 115
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v1, :cond_21

    .line 117
    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v1, v0, :cond_9

    .line 118
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_9

    .line 110
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v1

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 124
    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_1e

    goto :goto_9
.end method

.method declared-synchronized handleWifiIbssToggled(Z)V
    .registers 5
    .param p1, "IbssEnabled"    # Z

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifi_ibss_on"

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    :goto_d
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :cond_12
    const/4 v1, 0x0

    goto :goto_d

    .line 136
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleWifiToggled(Z)Z
    .registers 5
    .param p1, "wifiEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    move-result v2

    if-nez v2, :cond_f

    .line 105
    :goto_d
    monitor-exit p0

    return v0

    .line 92
    :cond_f
    if-eqz p1, :cond_23

    .line 93
    :try_start_11
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_1b

    .line 94
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    :goto_19
    move v0, v1

    .line 105
    goto :goto_d

    .line 96
    :cond_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_19

    .line 88
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    goto :goto_19
.end method

.method declared-synchronized isAirplaneModeOn()Z
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isScanAlwaysAvailable()Z
    .registers 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWifiIbssToggleEnabled()I
    .registers 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_ibss_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v1

    monitor-exit p0

    return v1

    .line 158
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isWifiToggleEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    if-nez v2, :cond_12

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    move-result v2

    if-eqz v2, :cond_12

    .line 70
    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    .line 67
    :cond_12
    :try_start_12
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_1d

    .line 68
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_10

    .line 70
    :cond_1d
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_23

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    .line 62
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setOrRecoveryScanMode(Z)V
    .registers 6
    .param p1, "isRecovery"    # Z

    .prologue
    const/4 v3, 0x1

    .line 142
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p1, :cond_24

    .line 144
    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_22

    .line 145
    const-string/jumbo v1, "wifi_scan_always_enabled_recovery"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_3d

    .line 154
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 149
    :cond_24
    :try_start_24
    const-string/jumbo v1, "wifi_scan_always_enabled_recovery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_22

    .line 150
    const-string/jumbo v1, "wifi_scan_always_enabled_recovery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_3d

    goto :goto_22

    .line 142
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
