.class Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationWorking"
.end annotation


# instance fields
.field mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

.field mDisplayedTime:J

.field private final mId:I

.field mList:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V
    .registers 4
    .param p2, "szid"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 194
    iput-object p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    .line 196
    return-void
.end method

.method private pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 321
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1c

    .line 322
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 323
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    monitor-exit v3

    .line 328
    :goto_15
    return-object v1

    .line 325
    :cond_16
    monitor-exit v3

    move-object v1, v2

    .line 326
    goto :goto_15

    .line 325
    :catchall_19
    move-exception v1

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 327
    :catch_1c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 328
    goto :goto_15
.end method


# virtual methods
.method public checkVaild()Z
    .registers 9

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 273
    .local v0, "vailed":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const/4 v2, 0x1

    .line 274
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public clearAll()V
    .registers 5

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 242
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 243
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public countLists()I
    .registers 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 205
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public notStayNofication()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 211
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_16

    .line 212
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    .line 222
    :cond_16
    :goto_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_2f

    .line 223
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 224
    return-void

    .line 216
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 217
    .local v0, "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    if-eqz v0, :cond_16

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    goto :goto_16

    .line 222
    .end local v0    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V
    .registers 7
    .param p1, "unit"    # Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .prologue
    const/4 v2, 0x1

    .line 306
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_4
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1a

    .line 310
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 314
    :cond_1a
    monitor-exit v1

    .line 316
    return-void

    .line 314
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public reflash()V
    .registers 5

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v0, :cond_1a

    .line 229
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    .line 230
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 232
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 234
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    .line 236
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 237
    return-void

    .line 234
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public remove()V
    .registers 6

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "send":Z
    invoke-virtual {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->checkVaild()Z

    move-result v1

    if-nez v1, :cond_24

    .line 250
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_24

    .line 251
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    :try_start_e
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 254
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    .line 255
    const/4 v0, 0x0

    .line 260
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 261
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 262
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_30

    .line 267
    :cond_24
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 268
    :cond_2f
    return-void

    .line 262
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public update()V
    .registers 12

    .prologue
    .line 278
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-nez v5, :cond_15

    .line 279
    invoke-direct {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-result-object v2

    .line 280
    .local v2, "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    if-eqz v2, :cond_15

    .line 281
    iput-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    .line 283
    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setObserverNotification()V

    .line 287
    .end local v2    # "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    :cond_15
    :try_start_15
    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_87

    .line 289
    :try_start_18
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->getNotificationStayed()Z

    move-result v5

    if-nez v5, :cond_78

    .line 290
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 291
    .local v0, "current":J
    iget-wide v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v9, 0xbb8

    add-long/2addr v7, v9

    sub-long v3, v0, v7

    .line 292
    .local v3, "vailed":J
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send the timeout : current  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", vailed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-int v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gez v5, :cond_7a

    .line 294
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const-wide/16 v9, -0x1

    mul-long/2addr v9, v3

    long-to-int v9, v9

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v5, v7, v8, v9}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    .line 299
    .end local v0    # "current":J
    .end local v3    # "vailed":J
    :cond_78
    :goto_78
    monitor-exit v6

    .line 303
    :goto_79
    return-void

    .line 296
    .restart local v0    # "current":J
    .restart local v3    # "vailed":J
    :cond_7a
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v5, v7, v8, v9}, Lcom/android/server/usb/UsbNotificationHandler;->access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V

    goto :goto_78

    .line 299
    .end local v0    # "current":J
    .end local v3    # "vailed":J
    :catchall_84
    move-exception v5

    monitor-exit v6
    :try_end_86
    .catchall {:try_start_18 .. :try_end_86} :catchall_84

    :try_start_86
    throw v5
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_87

    .line 300
    :catch_87
    move-exception v5

    goto :goto_79
.end method
