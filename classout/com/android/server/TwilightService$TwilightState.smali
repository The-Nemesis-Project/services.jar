.class public final Lcom/android/server/TwilightService$TwilightState;
.super Ljava/lang/Object;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TwilightState"
.end annotation


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .registers 10
    .param p1, "isNight"    # Z
    .param p2, "yesterdaySunset"    # J
    .param p4, "todaySunrise"    # J
    .param p6, "todaySunset"    # J
    .param p8, "tomorrowSunrise"    # J

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean p1, p0, Lcom/android/server/TwilightService$TwilightState;->mIsNight:Z

    .line 181
    iput-wide p2, p0, Lcom/android/server/TwilightService$TwilightState;->mYesterdaySunset:J

    .line 182
    iput-wide p4, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunrise:J

    .line 183
    iput-wide p6, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunset:J

    .line 184
    iput-wide p8, p0, Lcom/android/server/TwilightService$TwilightState;->mTomorrowSunrise:J

    .line 185
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/TwilightService$TwilightState;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/server/TwilightService$TwilightState;

    .prologue
    .line 232
    if-eqz p1, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/TwilightService$TwilightState;->mIsNight:Z

    iget-boolean v1, p1, Lcom/android/server/TwilightService$TwilightState;->mIsNight:Z

    if-ne v0, v1, :cond_2a

    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mYesterdaySunset:J

    iget-wide v2, p1, Lcom/android/server/TwilightService$TwilightState;->mYesterdaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunrise:J

    iget-wide v2, p1, Lcom/android/server/TwilightService$TwilightState;->mTodaySunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunset:J

    iget-wide v2, p1, Lcom/android/server/TwilightService$TwilightState;->mTodaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTomorrowSunrise:J

    iget-wide v2, p1, Lcom/android/server/TwilightService$TwilightState;->mTomorrowSunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 228
    instance-of v0, p1, Lcom/android/server/TwilightService$TwilightState;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/server/TwilightService$TwilightState;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/TwilightService$TwilightState;->equals(Lcom/android/server/TwilightService$TwilightState;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getTodaySunrise()J
    .registers 3

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .registers 3

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .registers 3

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/android/server/TwilightService$TwilightState;->mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/server/TwilightService$TwilightState;->mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 247
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 248
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/TwilightService$TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYesterdaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/TwilightService$TwilightState;->mYesterdaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/TwilightService$TwilightState;->mTodaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTomorrowSunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/TwilightService$TwilightState;->mTomorrowSunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
