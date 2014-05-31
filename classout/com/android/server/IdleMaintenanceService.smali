.class public Lcom/android/server/IdleMaintenanceService;
.super Landroid/content/BroadcastReceiver;
.source "IdleMaintenanceService.java"


# static fields
.field private static final ACTION_FORCE_IDLE_MAINTENANCE:Ljava/lang/String; = "com.android.server.IdleMaintenanceService.action.FORCE_IDLE_MAINTENANCE"

.field private static final ACTION_UPDATE_IDLE_MAINTENANCE_STATE:Ljava/lang/String; = "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

.field private static final DEBUG:Z = false

.field private static final LAST_USER_ACTIVITY_TIME_INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_IDLE_MAINTENANCE_DURATION:J = 0x4100a0L

.field private static final MIN_BATTERY_LEVEL_IDLE_MAINTENANCE_RUNNING:I = 0x14

.field private static final MIN_BATTERY_LEVEL_IDLE_MAINTENANCE_START_CHARGING:I = 0x1e

.field private static final MIN_BATTERY_LEVEL_IDLE_MAINTENANCE_START_NOT_CHARGING:I = 0x50

.field private static final MIN_IDLE_MAINTENANCE_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final MIN_USER_INACTIVITY_IDLE_MAINTENANCE_START:J = 0x4100a0L

.field private static final sIdleMaintenanceEndIntent:Landroid/content/Intent;

.field private static final sIdleMaintenanceStartIntent:Landroid/content/Intent;


# instance fields
.field private final mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryService:Lcom/android/server/BatteryService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIdleMaintenanceStarted:Z

.field private mLastIdleMaintenanceStartTimeMillis:J

.field private mLastUserActivityElapsedTimeMillis:J

.field private final mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x40000000

    .line 55
    const-class v0, Lcom/android/server/IdleMaintenanceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->LOG_TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    .line 80
    sget-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    .line 86
    sget-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 108
    iput-object p1, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 111
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    .line 113
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 114
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/android/server/IdleMaintenanceService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    .line 123
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/server/IdleMaintenanceService;->register(Landroid/os/Handler;)V

    .line 124
    return-void
.end method

.method private batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z
    .registers 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1a

    iget-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    const-wide/32 v2, 0x4100a0

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private deviceStatePermitsIdleMaintenanceStart(Z)Z
    .registers 8
    .param p1, "noisy"    # Z

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->isBatteryCharging()Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v1, 0x1e

    .line 235
    .local v1, "minBatteryLevel":I
    :goto_8
    iget-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v2}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v2

    if-le v2, v1, :cond_28

    const/4 v0, 0x1

    .line 237
    .local v0, "allowed":Z
    :goto_19
    if-nez v0, :cond_24

    if-eqz p1, :cond_24

    .line 238
    const-string v2, "IdleMaintenance"

    const-string v3, "Idle maintenance not allowed due to power"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_24
    return v0

    .line 232
    .end local v0    # "allowed":Z
    .end local v1    # "minBatteryLevel":I
    :cond_25
    const/16 v1, 0x50

    goto :goto_8

    .line 235
    .restart local v1    # "minBatteryLevel":I
    :cond_28
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private getNextIdleMaintenanceIntervalStartFromNow()J
    .registers 5

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isBatteryCharging()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getInvalidCharger()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private lastRunPermitsIdleMaintenanceStart(Z)Z
    .registers 7
    .param p1, "noisy"    # Z

    .prologue
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    const/4 v0, 0x1

    .line 258
    .local v0, "allowed":Z
    :goto_f
    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 259
    const-string v1, "IdleMaintenance"

    const-string v2, "Idle maintenance not allowed due time since last"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1a
    return v0

    .line 256
    .end local v0    # "allowed":Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private lastUserActivityPermitsIdleMaintenanceRunning()Z
    .registers 5

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private lastUserActivityPermitsIdleMaintenanceStart(Z)Z
    .registers 7
    .param p1, "noisy"    # Z

    .prologue
    .line 245
    iget-wide v1, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x4100a0

    cmp-long v1, v1, v3

    if-lez v1, :cond_23

    const/4 v0, 0x1

    .line 248
    .local v0, "allowed":Z
    :goto_17
    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    .line 249
    const-string v1, "IdleMaintenance"

    const-string v2, "Idle maintenance not allowed due to last user activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_22
    return v0

    .line 245
    .end local v0    # "allowed":Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private scheduleUpdateIdleMaintenanceState(J)V
    .registers 8
    .param p1, "delayMillis"    # J

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 154
    .local v0, "triggetRealTimeMillis":J
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 156
    return-void
.end method

.method private sendIdleMaintenanceEndIntent()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 227
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method private sendIdleMaintenanceStartIntent()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 218
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_1d

    .line 221
    :goto_d
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 223
    return-void

    .line 219
    :catch_1d
    move-exception v0

    goto :goto_d
.end method

.method private unscheduleUpdateIdleMaintenanceState()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    return-void
.end method

.method private updateIdleMaintenanceState(Z)V
    .registers 10
    .param p1, "noisy"    # Z

    .prologue
    const-wide/32 v1, 0x4100a0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    if-eqz v0, :cond_42

    .line 166
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 168
    :cond_15
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->unscheduleUpdateIdleMaintenanceState()V

    .line 169
    iput-boolean v6, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    iget-object v4, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v4}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->isBatteryCharging()Z

    move-result v7

    if-eqz v7, :cond_40

    :goto_2c
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeIdleMaintenanceWindowFinish(JJII)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->sendIdleMaintenanceEndIntent()V

    .line 178
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 179
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->getNextIdleMaintenanceIntervalStartFromNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    .line 208
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v5, v6

    .line 170
    goto :goto_2c

    .line 183
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/server/IdleMaintenanceService;->deviceStatePermitsIdleMaintenanceStart(Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0, p1}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceStart(Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0, p1}, Lcom/android/server/IdleMaintenanceService;->lastRunPermitsIdleMaintenanceStart(Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 188
    invoke-direct {p0, v1, v2}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    .line 189
    iput-boolean v5, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    iget-object v4, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v4}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->isBatteryCharging()Z

    move-result v7

    if-eqz v7, :cond_78

    :goto_6b
    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writeIdleMaintenanceWindowStart(JJII)V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    .line 194
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->sendIdleMaintenanceStartIntent()V

    goto :goto_3f

    :cond_78
    move v5, v6

    .line 190
    goto :goto_6b

    .line 195
    :cond_7a
    invoke-direct {p0, p1}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceStart(Z)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/IdleMaintenanceService;->lastRunPermitsIdleMaintenanceStart(Z)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 200
    invoke-direct {p0, v1, v2}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_3f

    .line 204
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->getNextIdleMaintenanceIntervalStartFromNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_3f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/32 v7, 0x4100a0

    const/4 v5, 0x0

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 294
    iget-boolean v3, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    if-eqz v3, :cond_17

    .line 295
    invoke-direct {p0, v5}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState(Z)V

    .line 326
    :cond_17
    :goto_17
    return-void

    .line 297
    :cond_18
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 299
    :cond_28
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 302
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->unscheduleUpdateIdleMaintenanceState()V

    .line 305
    invoke-direct {p0, v5}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState(Z)V

    goto :goto_17

    .line 306
    :cond_33
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 308
    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 312
    invoke-direct {p0, v7, v8}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_17

    .line 313
    :cond_4d
    const-string v3, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 314
    invoke-direct {p0, v5}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState(Z)V

    goto :goto_17

    .line 315
    :cond_59
    const-string v3, "com.android.server.IdleMaintenanceService.action.FORCE_IDLE_MAINTENANCE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long v1, v3, v5

    .line 317
    .local v1, "now":J
    sub-long v3, v1, v7

    iput-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 318
    const-wide/32 v3, 0x5265c00

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    .line 319
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState(Z)V

    goto :goto_17

    .line 320
    .end local v1    # "now":J
    :cond_79
    const-string v3, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 324
    :cond_89
    iget-object v3, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_17
.end method

.method public register(Landroid/os/Handler;)V
    .registers 8
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.IdleMaintenanceService.action.FORCE_IDLE_MAINTENANCE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.SET_ACTIVITY_WATCHER"

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    return-void
.end method
