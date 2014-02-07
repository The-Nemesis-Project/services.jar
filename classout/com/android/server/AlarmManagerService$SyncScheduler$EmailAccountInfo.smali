.class Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAccountInfo"
.end annotation


# instance fields
.field public countOfLastSyncTime:J

.field public countOfLastTrigTime:J

.field public id:J

.field public lastSyncTime:J

.field public nextSyncTime:J

.field public repeatInterval:J

.field final synthetic this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V
    .registers 2

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    .line 2037
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V
    .registers 12
    .param p2, "accId"    # J
    .param p4, "accLastSyncTime"    # J
    .param p6, "accRpeatInterval"    # J

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 2041
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 2042
    invoke-static {p6, p7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 2043
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 2044
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    .prologue
    .line 2027
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .param p1, "x1"    # J

    .prologue
    .line 2027
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 2027
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V

    return-void
.end method

.method private clear()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2065
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 2066
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 2067
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 2068
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 2069
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    .line 2070
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    .line 2071
    return-void
.end method

.method private setId(J)V
    .registers 3
    .param p1, "Id"    # J

    .prologue
    .line 2051
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 2052
    return-void
.end method

.method private update(JJ)V
    .registers 9
    .param p1, "accLastSyncTime"    # J
    .param p3, "accRpeatInterval"    # J

    .prologue
    .line 2055
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8

    .line 2056
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 2059
    :cond_8
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    .line 2060
    :cond_15
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 2061
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 2062
    return-void
.end method


# virtual methods
.method public getRepeatInterval()J
    .registers 3

    .prologue
    .line 2047
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2076
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "EmailAccountInfo{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    const-string v2, " id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2080
    const-string v2, ", last: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2082
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 2083
    .local v1, "t":Landroid/text/format/Time;
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2084
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    const-string v2, "), next: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2088
    const-string v2, ", interval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2090
    const-string v2, ", count(S:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2092
    const-string v2, ",T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2094
    const-string v2, ")}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
