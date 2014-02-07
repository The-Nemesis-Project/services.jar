.class public Lcom/android/server/IdleMaintenanceService;
.super Landroid/content/BroadcastReceiver;
.source "IdleMaintenanceService.java"


# static fields
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

    .line 53
    const-class v0, Lcom/android/server/IdleMaintenanceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->LOG_TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    .line 75
    sget-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    .line 81
    sget-object v0, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryService"    # Lcom/android/server/BatteryService;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 103
    iput-object p1, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 106
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    .line 108
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 109
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/android/server/IdleMaintenanceService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    .line 118
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IdleMaintenanceService;->register(Landroid/os/Looper;)V

    .line 119
    return-void
.end method

.method private batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z
    .registers 5

    .prologue
    .line 245
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

.method private deviceStatePermitsIdleMaintenanceStart()Z
    .registers 6

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->isBatteryCharging()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x1e

    .line 221
    .local v0, "minBatteryLevel":I
    :goto_8
    iget-wide v1, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/IdleMaintenanceService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v1

    if-le v1, v0, :cond_1d

    const/4 v1, 0x1

    :goto_19
    return v1

    .line 218
    .end local v0    # "minBatteryLevel":I
    :cond_1a
    const/16 v0, 0x50

    goto :goto_8

    .line 221
    .restart local v0    # "minBatteryLevel":I
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private getNextIdleMaintenanceIntervalStartFromNow()J
    .registers 5

    .prologue
    .line 201
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
    .line 251
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

.method private lastRunPermitsIdleMaintenanceStart()Z
    .registers 5

    .prologue
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private lastUserActivityPermitsIdleMaintenanceRunning()Z
    .registers 5

    .prologue
    .line 240
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

.method private lastUserActivityPermitsIdleMaintenanceStart()Z
    .registers 5

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x4100a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private scheduleUpdateIdleMaintenanceState(J)V
    .registers 8
    .param p1, "delayMillis"    # J

    .prologue
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 144
    .local v0, "triggetRealTimeMillis":J
    iget-object v2, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 146
    return-void
.end method

.method private sendIdleMaintenanceEndIntent()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 213
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceEndIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method private sendIdleMaintenanceStartIntent()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 207
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/IdleMaintenanceService;->sIdleMaintenanceStartIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/IdleMaintenanceService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method private unscheduleUpdateIdleMaintenanceState()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/IdleMaintenanceService;->mUpdateIdleMaintenanceStatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 150
    return-void
.end method

.method private updateIdleMaintenanceState()V
    .registers 9

    .prologue
    const-wide/32 v1, 0x4100a0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    if-eqz v0, :cond_42

    .line 156
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 158
    :cond_15
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->unscheduleUpdateIdleMaintenanceState()V

    .line 159
    iput-boolean v6, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    .line 160
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

    .line 163
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->sendIdleMaintenanceEndIntent()V

    .line 168
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->batteryLevelAndMaintenanceTimeoutPermitsIdleMaintenanceRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 169
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->getNextIdleMaintenanceIntervalStartFromNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    .line 198
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v5, v6

    .line 160
    goto :goto_2c

    .line 173
    :cond_42
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->deviceStatePermitsIdleMaintenanceStart()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceStart()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastRunPermitsIdleMaintenanceStart()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 178
    invoke-direct {p0, v1, v2}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    .line 179
    iput-boolean v5, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    .line 180
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

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/IdleMaintenanceService;->mLastIdleMaintenanceStartTimeMillis:J

    .line 184
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->sendIdleMaintenanceStartIntent()V

    goto :goto_3f

    :cond_78
    move v5, v6

    .line 180
    goto :goto_6b

    .line 185
    :cond_7a
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastUserActivityPermitsIdleMaintenanceStart()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 186
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->lastRunPermitsIdleMaintenanceStart()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 190
    invoke-direct {p0, v1, v2}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_3f

    .line 194
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->getNextIdleMaintenanceIntervalStartFromNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_3f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 268
    iget-boolean v1, p0, Lcom/android/server/IdleMaintenanceService;->mIdleMaintenanceStarted:Z

    if-eqz v1, :cond_13

    .line 269
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState()V

    .line 295
    :cond_13
    :goto_13
    return-void

    .line 271
    :cond_14
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 273
    :cond_24
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 276
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->unscheduleUpdateIdleMaintenanceState()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState()V

    goto :goto_13

    .line 280
    :cond_2f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 282
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/IdleMaintenanceService;->mLastUserActivityElapsedTimeMillis:J

    .line 286
    const-wide/32 v1, 0x4100a0

    invoke-direct {p0, v1, v2}, Lcom/android/server/IdleMaintenanceService;->scheduleUpdateIdleMaintenanceState(J)V

    goto :goto_13

    .line 287
    :cond_4c
    const-string v1, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 288
    invoke-direct {p0}, Lcom/android/server/IdleMaintenanceService;->updateIdleMaintenanceState()V

    goto :goto_13

    .line 289
    :cond_58
    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 293
    :cond_68
    iget-object v1, p0, Lcom/android/server/IdleMaintenanceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method public register(Landroid/os/Looper;)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 122
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.IdleMaintenanceService.action.UPDATE_IDLE_MAINTENANCE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/IdleMaintenanceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 140
    return-void
.end method
