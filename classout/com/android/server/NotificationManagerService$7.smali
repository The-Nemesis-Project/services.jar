.class Lcom/android/server/NotificationManagerService$7;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 11

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$7;->val$isSystemNotification:Z

    iput p6, p0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$7;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 44

    .prologue
    .line 2029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    const/4 v7, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3900(III)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2c

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2c

    .line 2034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 2044
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v4, 0xa

    .line 2050
    .local v9, "score":I
    move/from16 v24, v9

    .line 2051
    .local v24, "initialScore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/notification/NotificationScorer;

    .line 2055
    .local v33, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v9}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_65} :catch_67

    move-result v9

    goto :goto_50

    .line 2056
    :catch_67
    move-exception v35

    .line 2057
    .local v35, "t":Ljava/lang/Throwable;
    const-string v4, "NotificationService"

    const-string v5, "Scorer threw on .getScore."

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 2064
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v33    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v35    # "t":Ljava/lang/Throwable;
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.scoreModified"

    move/from16 v0, v24

    if-eq v9, v0, :cond_c3

    const/4 v4, 0x1

    :goto_7f
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_be

    .line 2069
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/NotificationManagerService$7;->val$isSystemNotification:Z

    if-nez v4, :cond_be

    .line 2070
    const/16 v9, -0x3e8

    .line 2071
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suppressing notification from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by user request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_be
    const/16 v4, -0x14

    if-ge v9, v4, :cond_c5

    .line 2410
    :goto_c2
    return-void

    .line 2064
    :cond_c3
    const/4 v4, 0x0

    goto :goto_7f

    .line 2086
    :cond_c5
    const/16 v4, -0xa

    if-lt v9, v4, :cond_476

    const/4 v14, 0x1

    .line 2088
    .local v14, "canInterrupt":Z
    :goto_ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v42

    monitor-enter v42

    .line 2089
    :try_start_d3
    new-instance v3, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$7;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v3 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2091
    .local v3, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v31, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 2092
    .local v31, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v28, 0x0

    .line 2095
    .local v28, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v23

    .line 2096
    .local v23, "index":I
    if-gez v23, :cond_479

    .line 2097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    :cond_124
    :goto_124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4ad

    const/4 v4, 0x1

    :goto_13c
    # setter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v5, v4}, Lcom/android/server/NotificationManagerService;->access$3502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_16c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_16c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_16c

    .line 2112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->sendMsg()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)V

    .line 2117
    :cond_16c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_180

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 2123
    :cond_180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_183
    .catchall {:try_start_d3 .. :try_end_183} :catchall_473

    move-result-wide v36

    .line 2125
    .local v36, "token":J
    :try_start_184
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_4b0

    move-result v16

    .line 2127
    .local v16, "currentUser":I
    :try_start_188
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_550

    .line 2131
    if-eqz v28, :cond_4ba

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_4ba

    .line 2132
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 2133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a6
    .catchall {:try_start_188 .. :try_end_1a6} :catchall_473

    move-result-wide v21

    .line 2135
    .local v21, "identity":J
    :try_start_1a7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1b6
    .catchall {:try_start_1a7 .. :try_end_1b6} :catchall_4b5

    .line 2138
    :try_start_1b6
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2154
    :goto_1b9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_4d8

    .line 2155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$4500(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 2161
    new-instance v27, Landroid/content/Intent;

    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2164
    .local v27, "notificationArrivedIntent":Landroid/content/Intent;
    const-string v4, "com.android.phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_211

    const-string v4, "com.android.mms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_211

    const-string v4, "KOR"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_240

    const-string v4, "com.skt.prod.dialer"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_240

    .line 2165
    :cond_211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    if-eqz v4, :cond_240

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_240

    .line 2166
    const-string v4, "Notification"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2167
    const-string v4, "pkg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2168
    const-string v4, "id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2172
    :cond_240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2199
    .end local v27    # "notificationArrivedIntent":Landroid/content/Intent;
    :cond_254
    :goto_254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4600(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 2220
    .end local v21    # "identity":J
    :goto_25d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-nez v4, :cond_42f

    if-eqz v28, :cond_276

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_42f

    :cond_276
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28f

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    if-ne v4, v5, :cond_42f

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v16

    if-ne v4, v0, :cond_42f

    :cond_28f
    if-eqz v14, :cond_42f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_42f

    .line 2228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 2236
    .local v12, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2c1

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b6

    :cond_2c1
    const/16 v38, 0x1

    .line 2241
    .local v38, "useDefaultSound":Z
    :goto_2c3
    const/16 v34, 0x0

    .line 2242
    .local v34, "soundUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 2244
    .local v19, "hasValidSound":Z
    if-eqz v38, :cond_5be

    .line 2245
    sget-object v34, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 2249
    .local v32, "resolver":Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5ba

    const/16 v19, 0x1

    .line 2256
    .end local v32    # "resolver":Landroid/content/ContentResolver;
    :cond_2e1
    :goto_2e1
    if-eqz v19, :cond_3b2

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5d7

    const/16 v25, 0x1

    .line 2259
    .local v25, "looping":Z
    :goto_2ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->audioStreamType:I

    if-ltz v4, :cond_5db

    .line 2260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v13, v4, Landroid/app/Notification;->audioStreamType:I

    .line 2264
    .local v13, "audioStreamType":I
    :goto_2fd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2267
    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_3b2

    invoke-virtual {v12}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_3b2

    .line 2269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_315
    .catchall {:try_start_1b6 .. :try_end_315} :catchall_473

    move-result-wide v21

    .line 2271
    .restart local v21    # "identity":J
    :try_start_316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v30

    .line 2272
    .local v30, "player":Landroid/media/IRingtonePlayer;
    if-eqz v30, :cond_3af

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move/from16 v2, v25

    invoke-interface {v0, v1, v4, v2, v13}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3af

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_3af

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-nez v4, :cond_3af

    .line 2279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    .line 2281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_3af

    .line 2282
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/NotificationManagerService$7$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/NotificationManagerService$7$1;-><init>(Lcom/android/server/NotificationManagerService$7;)V

    aput-object v5, v29, v4
    :try_end_383
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_383} :catch_611
    .catchall {:try_start_316 .. :try_end_383} :catchall_64a

    .line 2291
    .local v29, "parameter":[Ljava/lang/Object;
    :try_start_383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v5, v4}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/android/server/NotificationManagerService$7$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/NotificationManagerService$7$2;-><init>(Lcom/android/server/NotificationManagerService$7;)V

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3af
    .catch Ljava/lang/IllegalAccessException; {:try_start_383 .. :try_end_3af} :catch_5de
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_383 .. :try_end_3af} :catch_617
    .catch Landroid/os/RemoteException; {:try_start_383 .. :try_end_3af} :catch_611
    .catchall {:try_start_383 .. :try_end_3af} :catchall_64a

    .line 2328
    .end local v29    # "parameter":[Ljava/lang/Object;
    :cond_3af
    :goto_3af
    :try_start_3af
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2335
    .end local v13    # "audioStreamType":I
    .end local v21    # "identity":J
    .end local v25    # "looping":Z
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :cond_3b2
    :goto_3b2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_64f

    const/16 v18, 0x1

    .line 2339
    .local v18, "hasCustomVibrate":Z
    :goto_3bc
    if-nez v18, :cond_653

    if-eqz v19, :cond_653

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_653

    const/4 v15, 0x1

    .line 2346
    .local v15, "convertSoundToVibration":Z
    :goto_3c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_656

    const/16 v39, 0x1

    .line 2350
    .local v39, "useDefaultVibrate":Z
    :goto_3d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->haptic:I

    # invokes: Lcom/android/server/NotificationManagerService;->doesItUseHaptic(I)Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4900(Lcom/android/server/NotificationManagerService;I)Z

    move-result v40

    .line 2352
    .local v40, "useHaptic":Z
    if-nez v39, :cond_3ea

    if-nez v15, :cond_3ea

    if-nez v18, :cond_3ea

    if-eqz v40, :cond_42f

    :cond_3ea
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_42f

    .line 2356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2384
    const-string v4, "STATUSBAR-NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Noti Alert - doVibrate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " convertStoV="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v39, :cond_425

    if-eqz v15, :cond_65a

    :cond_425
    const/4 v4, 0x1

    :goto_426
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move/from16 v0, v40

    # invokes: Lcom/android/server/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V
    invoke-static {v5, v4, v0, v6}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;ZZLandroid/app/Notification;)V

    .line 2392
    .end local v12    # "audioManager":Landroid/media/AudioManager;
    .end local v15    # "convertSoundToVibration":Z
    .end local v18    # "hasCustomVibrate":Z
    .end local v19    # "hasValidSound":Z
    .end local v34    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    .end local v40    # "useHaptic":Z
    :cond_42f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_450

    .line 2394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2399
    :cond_450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_65d

    if-eqz v14, :cond_65d

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    .line 2409
    :cond_470
    :goto_470
    monitor-exit v42

    goto/16 :goto_c2

    .end local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v16    # "currentUser":I
    .end local v23    # "index":I
    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v31    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v36    # "token":J
    :catchall_473
    move-exception v4

    monitor-exit v42
    :try_end_475
    .catchall {:try_start_3af .. :try_end_475} :catchall_473

    throw v4

    .line 2086
    .end local v14    # "canInterrupt":Z
    :cond_476
    const/4 v14, 0x0

    goto/16 :goto_ca

    .line 2099
    .restart local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v14    # "canInterrupt":Z
    .restart local v23    # "index":I
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v31    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_479
    :try_start_479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v28, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2100
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2102
    if-eqz v28, :cond_124

    .line 2103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    goto/16 :goto_124

    .line 2108
    :cond_4ad
    const/4 v4, 0x0

    goto/16 :goto_13c

    .line 2127
    .restart local v36    # "token":J
    :catchall_4b0
    move-exception v4

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2138
    .restart local v16    # "currentUser":I
    .restart local v21    # "identity":J
    :catchall_4b5
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2141
    .end local v21    # "identity":J
    :cond_4ba
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4bd
    .catchall {:try_start_479 .. :try_end_4bd} :catchall_473

    move-result-wide v21

    .line 2143
    .restart local v21    # "identity":J
    :try_start_4be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_4ce
    .catchall {:try_start_4be .. :try_end_4ce} :catchall_4d3

    .line 2150
    :try_start_4ce
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1b9

    :catchall_4d3
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2181
    :cond_4d8
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v41

    .line 2182
    .local v41, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 2183
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->knoxFlags:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_254

    .line 2184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2185
    new-instance v26, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.ACTION_NEW_NOTIFICATION"

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2187
    .local v26, "newNotifIntent":Landroid/content/Intent;
    const-string v4, "notification"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2188
    const-string/jumbo v4, "userHandle"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2189
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2190
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending broadcast with sbn as extra = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.ENTERPRISE_CONTAINER"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2194
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_254

    .line 2201
    .end local v21    # "identity":J
    .end local v26    # "newNotifIntent":Landroid/content/Intent;
    .end local v41    # "versionInfo":Landroid/os/Bundle;
    :cond_550
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not posting notification with icon==0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    if-eqz v28, :cond_593

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_593

    .line 2203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_577
    .catchall {:try_start_4ce .. :try_end_577} :catchall_473

    move-result-wide v21

    .line 2205
    .restart local v21    # "identity":J
    :try_start_578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_587
    .catchall {:try_start_578 .. :try_end_587} :catchall_5b1

    .line 2208
    :try_start_587
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 2215
    .end local v21    # "identity":J
    :cond_593
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25d

    .line 2208
    .restart local v21    # "identity":J
    :catchall_5b1
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2236
    .end local v21    # "identity":J
    .restart local v12    # "audioManager":Landroid/media/AudioManager;
    :cond_5b6
    const/16 v38, 0x0

    goto/16 :goto_2c3

    .line 2249
    .restart local v19    # "hasValidSound":Z
    .restart local v32    # "resolver":Landroid/content/ContentResolver;
    .restart local v34    # "soundUri":Landroid/net/Uri;
    .restart local v38    # "useDefaultSound":Z
    :cond_5ba
    const/16 v19, 0x0

    goto/16 :goto_2e1

    .line 2251
    .end local v32    # "resolver":Landroid/content/ContentResolver;
    :cond_5be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_2e1

    .line 2252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v34, v0
    :try_end_5ce
    .catchall {:try_start_587 .. :try_end_5ce} :catchall_473

    .line 2253
    if-eqz v34, :cond_5d4

    const/16 v19, 0x1

    :goto_5d2
    goto/16 :goto_2e1

    :cond_5d4
    const/16 v19, 0x0

    goto :goto_5d2

    .line 2257
    :cond_5d7
    const/16 v25, 0x0

    goto/16 :goto_2ef

    .line 2262
    .restart local v25    # "looping":Z
    :cond_5db
    const/4 v13, 0x5

    .restart local v13    # "audioStreamType":I
    goto/16 :goto_2fd

    .line 2304
    .restart local v21    # "identity":J
    .restart local v29    # "parameter":[Ljava/lang/Object;
    .restart local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_5de
    move-exception v17

    .line 2305
    .local v17, "ex":Ljava/lang/IllegalAccessException;
    :try_start_5df
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_607

    .line 2309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2311
    :cond_607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z
    :try_end_60f
    .catch Landroid/os/RemoteException; {:try_start_5df .. :try_end_60f} :catch_611
    .catchall {:try_start_5df .. :try_end_60f} :catchall_64a

    goto/16 :goto_3af

    .line 2326
    .end local v17    # "ex":Ljava/lang/IllegalAccessException;
    .end local v29    # "parameter":[Ljava/lang/Object;
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_611
    move-exception v4

    .line 2328
    :try_start_612
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_615
    .catchall {:try_start_612 .. :try_end_615} :catchall_473

    goto/16 :goto_3b2

    .line 2312
    .restart local v29    # "parameter":[Ljava/lang/Object;
    .restart local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_617
    move-exception v17

    .line 2313
    .local v17, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_618
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_640

    .line 2317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2319
    :cond_640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z
    :try_end_648
    .catch Landroid/os/RemoteException; {:try_start_618 .. :try_end_648} :catch_611
    .catchall {:try_start_618 .. :try_end_648} :catchall_64a

    goto/16 :goto_3af

    .line 2328
    .end local v17    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v29    # "parameter":[Ljava/lang/Object;
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :catchall_64a
    move-exception v4

    :try_start_64b
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2335
    .end local v13    # "audioStreamType":I
    .end local v21    # "identity":J
    .end local v25    # "looping":Z
    :cond_64f
    const/16 v18, 0x0

    goto/16 :goto_3bc

    .line 2339
    .restart local v18    # "hasCustomVibrate":Z
    :cond_653
    const/4 v15, 0x0

    goto/16 :goto_3c8

    .line 2346
    .restart local v15    # "convertSoundToVibration":Z
    :cond_656
    const/16 v39, 0x0

    goto/16 :goto_3d4

    .line 2385
    .restart local v39    # "useDefaultVibrate":Z
    .restart local v40    # "useHaptic":Z
    :cond_65a
    const/4 v4, 0x0

    goto/16 :goto_426

    .line 2404
    .end local v12    # "audioManager":Landroid/media/AudioManager;
    .end local v15    # "convertSoundToVibration":Z
    .end local v18    # "hasCustomVibrate":Z
    .end local v19    # "hasValidSound":Z
    .end local v34    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    .end local v40    # "useHaptic":Z
    :cond_65d
    if-eqz v28, :cond_470

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_470

    .line 2406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V
    :try_end_66e
    .catchall {:try_start_64b .. :try_end_66e} :catchall_473

    goto/16 :goto_470
.end method
