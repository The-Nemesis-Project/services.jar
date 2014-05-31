.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 198
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 199
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 4
    .param p1, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 202
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 203
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 204
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 223
    .local v0, "index":I
    if-gez v0, :cond_11

    .line 224
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 226
    :cond_11
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 230
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 231
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 232
    const/4 v1, 0x1

    .line 234
    :cond_23
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2f

    .line 235
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 241
    :cond_2f
    return v1
.end method

.method canHold(JJ)Z
    .registers 7
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 327
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 328
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 329
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 330
    const/4 v3, 0x1

    .line 333
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1e
    return v3

    .line 327
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 333
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method hasWakeups()Z
    .registers 5

    .prologue
    .line 337
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1c

    .line 339
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 341
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_19

    .line 342
    const/4 v3, 0x1

    .line 345
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_18
    return v3

    .line 338
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 345
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method remove(I)Z
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 301
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 302
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3f

    .line 303
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 304
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_2c

    .line 305
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    const/4 v1, 0x1

    goto :goto_9

    .line 308
    :cond_2c
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_34

    .line 309
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 311
    :cond_34
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_3c

    .line 312
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 314
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 317
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3f
    if-eqz v1, :cond_45

    .line 319
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 320
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 322
    :cond_45
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .registers 11
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 247
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 248
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3b

    .line 249
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 250
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 251
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    const/4 v1, 0x1

    goto :goto_9

    .line 254
    :cond_28
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_30

    .line 255
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 257
    :cond_30
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_38

    .line 258
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 260
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 263
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3b
    if-eqz v1, :cond_41

    .line 265
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 266
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 268
    :cond_41
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "didRemove":Z
    const-wide/16 v5, 0x0

    .line 274
    .local v5, "newStart":J
    const-wide v3, 0x7fffffffffffffffL

    .line 275
    .local v3, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3f

    .line 276
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 277
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 278
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    const/4 v1, 0x1

    goto :goto_9

    .line 281
    :cond_2c
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_34

    .line 282
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 284
    :cond_34
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_3c

    .line 285
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 287
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 290
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3f
    if-eqz v1, :cond_45

    .line 292
    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 293
    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 295
    :cond_45
    return v1
.end method

.method size()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_40

    .line 356
    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_40
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
