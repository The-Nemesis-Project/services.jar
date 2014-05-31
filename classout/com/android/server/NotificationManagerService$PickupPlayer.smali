.class Lcom/android/server/NotificationManagerService$PickupPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupPlayer"
.end annotation


# instance fields
.field private ivt:[B

.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private mPickUpMissedEventExist:Z

.field private mPickupListener:Landroid/hardware/motion/MRListener;

.field private mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3134
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 3136
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 3137
    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 3138
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    .line 3147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3149
    new-instance v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationManagerService$PickupPlayer$1;-><init>(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 3138
    :array_20
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x64t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x4ft
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/NotificationManagerService$1;

    .prologue
    .line 3134
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3134
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3134
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/NotificationManagerService$PickupPlayer;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    return-object v0
.end method

.method private register()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 3194
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 3195
    const/4 v3, 0x0

    :try_start_9
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 3196
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3197
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_a4

    .line 3198
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 3199
    .local v2, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.phone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-eq v3, v6, :cond_78

    :cond_3a
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.mms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const/16 v5, 0x7b

    if-eq v3, v5, :cond_78

    :cond_52
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.notidemo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string v3, "KOR"

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.skt.prod.dialer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 3202
    :cond_78
    const-string v3, "KOR"

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "JPN"

    const-string v5, "USA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    :cond_8c
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_c3

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->missedCount:I

    if-lez v3, :cond_c3

    .line 3203
    :cond_9a
    const-string v3, "STATUSBAR-NotificationService"

    const-string v5, "Pickup - Missed event found"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 3209
    .end local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_a4
    monitor-exit v4
    :try_end_a5
    .catchall {:try_start_9 .. :try_end_a5} :catchall_c7

    .line 3211
    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v3, :cond_c2

    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    if-eqz v3, :cond_c2

    .line 3212
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_c2

    .line 3213
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 3214
    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 3215
    const-string v3, "STATUSBAR-NotificationService"

    const-string v4, "Pickup - registerListener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_c2
    return-void

    .line 3197
    .restart local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 3209
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_c7
    move-exception v3

    :try_start_c8
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v3
.end method

.method private unregister()V
    .registers 3

    .prologue
    .line 3221
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_1d

    .line 3222
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1d

    .line 3223
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 3225
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_1d
    return-void
.end method


# virtual methods
.method public setPickupMotionEnabled(Z)V
    .registers 5
    .param p1, "enableMotion"    # Z

    .prologue
    .line 3179
    const-string v0, "STATUSBAR-NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupMotionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    if-eqz p1, :cond_30

    .line 3181
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_2f

    .line 3182
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 3191
    :cond_2f
    :goto_2f
    return-void

    .line 3186
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_37

    .line 3187
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    .line 3188
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    goto :goto_2f
.end method
