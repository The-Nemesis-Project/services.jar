.class Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgUsageStatsExtended"
.end annotation


# instance fields
.field final mFullyDrawnTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchCount:I

.field final mLaunchTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mPausedTime:J

.field mResumedTime:J

.field mUsageTime:J

.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .registers 4

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 192
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V
    .registers 10
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    .line 182
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "numLaunchTimeStats":I
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v3, :cond_3c

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "comp":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    .line 207
    .local v4, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 210
    .end local v0    # "comp":Ljava/lang/String;
    .end local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "numFullyDrawnTimeStats":I
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 213
    const/4 v1, 0x0

    :goto_46
    if-ge v1, v2, :cond_59

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0    # "comp":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    .line 217
    .restart local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 219
    .end local v0    # "comp":Ljava/lang/String;
    .end local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_59
    return-void
.end method


# virtual methods
.method addFullyDrawnTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "millis"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 253
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_14

    .line 254
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 255
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_14
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    .line 258
    return-void
.end method

.method addLaunchCount(Ljava/lang/String;)V
    .registers 4
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 235
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_14

    .line 236
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 237
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;->incCount()V

    .line 240
    return-void
.end method

.method addLaunchTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "millis"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 244
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_14

    .line 245
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 246
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_14
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    .line 249
    return-void
.end method

.method clear()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 279
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 282
    return-void
.end method

.method updatePause()V
    .registers 7

    .prologue
    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    .line 230
    iget-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    iget-wide v2, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    iget-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 231
    return-void
.end method

.method updateResume(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "launched"    # Z

    .prologue
    .line 222
    if-eqz p2, :cond_8

    .line 223
    iget v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 225
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    .line 226
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 261
    iget v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-wide v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 263
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 264
    .local v2, "numLaunchTimeStats":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v2, :cond_2f

    .line 266
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 269
    :cond_2f
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 270
    .local v1, "numFullyDrawnTimeStats":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_54

    .line 272
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 275
    :cond_54
    return-void
.end method
